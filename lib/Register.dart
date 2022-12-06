import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'interface.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    TextEditingController name = TextEditingController();
    TextEditingController number = TextEditingController();
    TextEditingController password = TextEditingController();
    TextEditingController verpassword = TextEditingController();
    bool Check = false;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 16),
                child: IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.green,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 150, top: 73),
                child: Text(
                  'Register',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 35,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 52, top: 49, bottom: 10),
                child: Text(
                  'Full Name',
                  style: TextStyle(
                    color: Color(0xff878787),
                    fontSize: 16,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: TextFormField(
                  controller: name,
                  decoration: const InputDecoration(
                    hintText: 'Kisan Tamang',
                    errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(24))),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(24))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(24))),
                    disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(24))),
                    focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(24))),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(24))),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 52, top: 20, bottom: 10),
                child: Text(
                  'Your Number',
                  style: TextStyle(
                    color: Color(0xff878787),
                    fontSize: 16,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: TextFormField(
                  controller: number,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    prefixText: '+998',
                    hintText: ' ** *** ** **',
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(24))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(24))),
                    disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(24))),
                    focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(24))),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(24))),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 52, bottom: 10, top: 20),
                child: Text(
                  'Password',
                  style: TextStyle(
                    color: Color(0xff878787),
                    fontSize: 16,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: TextFormField(
                  controller: password,
                  decoration: const InputDecoration(
                    hintText: '********',
                    errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(24))),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(24))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(24))),
                    disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(24))),
                    focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(24))),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(24))),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 52, bottom: 10, top: 20),
                child: Text(
                  'Confirm Password',
                  style: TextStyle(
                    color: Color(0xff878787),
                    fontSize: 16,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: TextFormField(
                  controller: verpassword,
                  decoration: const InputDecoration(
                    hintText: '********',
                    errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(24))),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(24))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(24))),
                    disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(24))),
                    focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(24))),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(24))),
                  ),
                ),
              ),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 107, top: 20),
                    child: Text(
                      'Already have account? Login',
                      style: TextStyle(
                        color: Color(0xff828282),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 0, top: 20),
                    child: TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'here',
                          style: TextStyle(
                            color: Color(0xff828282),
                          ),
                        )),
                  )
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => Interface())));
                },
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 49, right: 49, top: 37, bottom: 26),
                  child: Container(
                    width: 307,
                    height: 48,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.green,
                    ),
                    child: const Center(
                        child: Text(
                      'Register',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    )),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 53, right: 53, top: 15),
                child: Container(
                  width: 305,
                  height: 42,
                  decoration: const BoxDecoration(
                      color: Color(0xff3B5998),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        'asset/FB.png',
                        width: 15,
                        height: 15,
                      ),
                      const Text(
                        'Continue with Facebook',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 53, right: 53, top: 10),
                child: Container(
                  width: 305,
                  height: 42,
                  decoration: const BoxDecoration(
                      color: Color(0xffF44336),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        'asset/google-plus.png',
                        width: 15,
                        height: 15,
                      ),
                      const Text(
                        'Continue with Google',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
