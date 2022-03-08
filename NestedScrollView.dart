import 'package:flutter/material.dart';

class NestedScrollViewPage extends StatefulWidget {
  @override
  _NestedScrollViewPageState createState() => _NestedScrollViewPageState();
}

class _NestedScrollViewPageState extends State<NestedScrollViewPage> {
  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[SliverAppBar(
          expandedHeight: 230.0,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            title: Text('复仇者联盟'),
            background: Image.network(
              'http://img.haote.com/upload/20180918/2018091815372344164.jpg',
              fit: BoxFit.fitHeight,
            ),
          ),
        )];
      },
      body: ListView.builder(itemBuilder: (BuildContext context,int index){
        return Container(
          height: 80,
          color: Colors.primaries[index % Colors.primaries.length],
          alignment: Alignment.center,
          child: Text(
            '$index',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        );
      },itemCount: 20,),
    );
  }
}

class NestStickyPage extends StatefulWidget {
  @override
  _NestStickyPageState createState() => _NestStickyPageState();
}

class _NestStickyPageState extends State<NestStickyPage> with TickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 2,
      vsync: this,
      initialIndex: 0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverToBoxAdapter(child: Container(
                height: 200,
                color: Colors.blue,
              ),),
              SliverPersistentHeader(
                pinned: true,
                delegate: StickyTabBarDelegate(
                  child: TabBar(
                    labelColor: Colors.black,
                    controller: _tabController,
                    tabs: <Widget>[
                      Tab(text: '资讯'),
                      Tab(text: '技术'),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(
            controller: _tabController,
            children: <Widget>[
              Container(
                width: 300,
                height: 300,
                color: Colors.red,
                alignment: Alignment.center,
                child: Text('人生得意须尽欢，莫使金樽空对月', style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),),
              ),
              Container(
                width: 300,
                height: 300,
                color: Colors.green,
                alignment: Alignment.center,
                child: Text('天生我材必有用，千金散尽还复来', style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class StickyTabBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar? child;

  StickyTabBarDelegate({@required this.child});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Theme.of(context).backgroundColor,
      child: this.child,
    );
  }

  @override
  double get maxExtent => this.child!.preferredSize.height;

  @override
  double get minExtent => this.child!.preferredSize.height;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}

