import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Login_page.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff01a560),
      body: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return Page2();
            },
          ));
        },
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 200, bottom: 94),
                child: Image.asset('asset/logo.png'),
              ),
              Text(
                'Agro App',
                style: TextStyle(color: Colors.white, fontSize: 24),
              )
            ],
          ),
        ),
      ),
    );
  }
}
