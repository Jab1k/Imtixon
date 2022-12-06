import 'package:flutter/material.dart';

class Blogs extends StatelessWidget {
  final String image;
  const Blogs({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Blogs'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 16, right: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Expert suggestions for farmers from Northern\nNepal',
                style: TextStyle(fontSize: 16),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 15),
                child: Text('Posted on Jan 10'),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Image.network(image),
              ),
              const Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's ",
                style: TextStyle(fontSize: 16),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 13, bottom: 11),
                child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's ",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Image.network(
                image,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 13, bottom: 11),
                child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard ",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Image.asset(
                'asset/image 8.png',
              ),
              const Padding(
                padding: EdgeInsets.only(top: 13, bottom: 11),
                child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard ",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
              Image.asset('asset/logo.png'),
              const Padding(
                padding: EdgeInsets.only(left: 100, bottom: 200),
                child: Text(
                  'This is Our Farm',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
