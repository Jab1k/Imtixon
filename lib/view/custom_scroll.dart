import 'package:flutter/material.dart';

import '../blogs.dart';

class CustomScroll extends StatelessWidget {
  const CustomScroll({super.key});

  @override
  Widget build(BuildContext context) {
    List images = [
      'https://dupont.scene7.com/is/image/Dupont/agro%20sciences%20hero%20image',
      'https://www.aperam.com/sites/default/files/images/iStock-1181859042.jpg',
      'https://www.agro.uz/wp-content/uploads/2021/10/uzumchilik-1330x700.jpg',
      'https://agroglobalgroup.com/wp-content/uploads/2022/01/AGROToken.png',
      'https://www.gsfclimited.com/content/images/agro-services-development.jpg',
    ];
    return SizedBox(
      height: 200,
      child: ListView.builder(
        itemCount: images.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return Blogs(
                    image: images[index],
                  );
                },
              ));
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Image.network(
                    images[index],
                    width: 150,
                    height: 100,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Blog ${index + 1}'),
                        Text(
                          'What is Lorem Ipsum Lorem\nIpsum is simply dummy\ntext of the printing ',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
