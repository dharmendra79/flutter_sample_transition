import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:native_functionality/routes/custom_page_routs.dart';
import 'package:native_functionality/widgets/first_page.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Transition First Page'),
        ),
      ),
      body: Center(
        //  If user want to custom back button then implement @CustomPageRoutes with AxisDirection.right
        child: TextButton(
          onPressed: () => {
            Navigator.of(context).pop(),
            Navigator.of(context).push(
              CustomePageRoutes(
                child: const FirstPage(),
                direction: AxisDirection.right,
              ),
            ),
          },
          child: const Text('Back'),
        ),
      ),
    );
  }
}
