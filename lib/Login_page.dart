import 'package:flutter/material.dart';
import 'package:flutter_application_1/Register.dart';
import 'package:flutter_application_1/interface.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  bool check_number = false;
  TextEditingController number = TextEditingController();
  TextEditingController password = TextEditingController();
  bool isEmpty = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                  'Login',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 35,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 52, top: 49, bottom: 10),
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
                  onChanged: (value) {
                    isEmpty = false;
                    setState(() {});
                  },
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
              isEmpty
                  ? const Padding(
                      padding: EdgeInsets.only(left: 70),
                      child: Text(
                        'Enter your Number',
                        style: TextStyle(color: Colors.red),
                      ),
                    )
                  : const SizedBox.shrink(),
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
                  onChanged: (value) {
                    isEmpty = false;
                    setState(() {});
                  },
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
              isEmpty
                  ? const Padding(
                      padding: EdgeInsets.only(left: 70),
                      child: Text(
                        'Enter your Password',
                        style: TextStyle(color: Colors.red),
                      ),
                    )
                  : const SizedBox.shrink(),
              const Padding(
                padding: EdgeInsets.only(left: 242, top: 11),
                child: Text('Forget Password?'),
              ),
              GestureDetector(
                onTap: () {
                  if (number.text.isNotEmpty && password.text.isNotEmpty) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => Interface())));
                  } else {
                    isEmpty = true;
                    setState(() {});
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 21, left: 45, right: 45),
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(24))),
                    height: 50,
                    width: 350,
                    child: const Center(
                        child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    )),
                  ),
                ),
              ),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 107, top: 20),
                    child: Text(
                      'Don’t have account? Register',
                      style: TextStyle(
                        color: Color(0xff828282),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 0, top: 20),
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return const Register();
                            },
                          ));
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
              Padding(
                padding: const EdgeInsets.only(left: 53, right: 53, top: 48),
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
                padding: const EdgeInsets.only(left: 53, right: 53, top: 41),
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
