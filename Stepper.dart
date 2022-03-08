import 'package:flutter/material.dart';

class StepperPage extends StatefulWidget {
  @override
  _StepperPageState createState() => _StepperPageState();
}

class _StepperPageState extends State<StepperPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stepper 组件'),
        elevation: 0,
        centerTitle: true,
      ),
      body: Stepper(
        steps: <Step>[
          Step(
              title: Text('2020-4-23'),
              content: Text('今天是2020-4-23')
          ),
          Step(
              title: Text('2020-4-24'),
              content: Text('今天是2020-4-24')
          ),
          Step(
              title: Text('2020-4-25'),
              content: Text('今天是2020-4-25')
          ),
        ],
      ),
    );
  }
}
