import 'package:flutter/material.dart';
import 'package:sample_transition/page/second_page.dart';
import 'package:sample_transition/routes/custom_page_routs.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Transition'),
          onPressed: () => {
            Navigator.of(context).push(
              CustomePageRoutes(
                childWidget: const SecondPage(),
                direction: AxisDirection.left,
              ),
            ),
          },
        ),
      ),
    );
  }
}
