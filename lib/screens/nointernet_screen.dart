import 'package:flutter/material.dart';
import 'package:wdm_card/main.dart';
import 'package:wdm_card/widgets/web_view_stack.dart';

class NoInternet extends StatefulWidget {
  const NoInternet({Key? key}) : super(key: key);

  @override
  State<NoInternet> createState() => _NoInternetState();
}

class _NoInternetState extends State<NoInternet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          width: 300,
          height: 300,
          child: Image.asset('assets/images/no-internet.gif'),
        ),
        Center(
          child: Container(
            child: Text(
              'Please Check Your Connection Internet',
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.orange,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        ElevatedButton(
          child: Text('  Retry  '),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const MyApp()),
            );
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.orange,
          ),
        )
      ]),
    );
  }
}
