import 'package:flutter/material.dart';
import 'package:flutter_application_1/blogs.dart';

class Interface extends StatefulWidget {
  Interface({super.key});

  @override
  State<Interface> createState() => _InterfaceState();
}

class _InterfaceState extends State<Interface> {
  @override
  List images = [
    'https://dupont.scene7.com/is/image/Dupont/agro%20sciences%20hero%20image',
    'https://www.aperam.com/sites/default/files/images/iStock-1181859042.jpg',
    'https://www.agro.uz/wp-content/uploads/2021/10/uzumchilik-1330x700.jpg',
    'https://agroglobalgroup.com/wp-content/uploads/2022/01/AGROToken.png',
    'https://www.gsfclimited.com/content/images/agro-services-development.jpg',
  ];

  List frukt_image = [
    'asset/anan.png',
    'asset/grenapp.png',
    'asset/tomatoes 1.png',
    'asset/cili.png',
  ];

  List frukt_name = [
    'PineApple',
    'Green Apple',
    'Tomatoes',
    'Chili Pepper',
  ];

  List kg = [
    'N450',
    'N300',
    'N2000',
    'N3000',
  ];

  List kb2 = [
    'Pcs',
    'Pcs',
    'Kg',
    'Kg',
  ];
  int price = 26;
  int counter = 0;
  int soft = 26;
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.green,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Image.asset('asset/vec.png'), label: ''),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.cloud_sharp,
              ),
              label: ''),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.video_library_sharp,
              ),
              label: '')
        ],
      ),
      backgroundColor: Colors.green,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 16),
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 125),
            child: Text(
              'Current Temperature',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Image.asset('asset/Groupkk.png'),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 125),
                child: Text(
                  '29',
                  style: TextStyle(color: Colors.white, fontSize: 64),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  '0',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  'C',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 46,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 600,
            child: Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, top: 20),
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 14),
                          child: Text('News'),
                        ),
                        const Text(
                          'Agriculture Sector has beaten by Pandemic and expect to decrease production by 50%',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                        Container(
                          width: 356,
                          height: 224,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('asset/image 8.png'))),
                          child: Center(
                            child: Image.asset('asset/gg.png'),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Text('Blogs'),
                        ),
                        SizedBox(
                          width: double.infinity,
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
                                        padding:
                                            const EdgeInsets.only(left: 20),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text('Blog ${index + 1}'),
                                            const Text(
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
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Image.asset('asset/image 10.png'),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 40),
                          child: Text(
                            'More Videos',
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          ),
                        ),
                        SizedBox(
                          height: 200,
                          width: double.infinity,
                          child: ListView.builder(
                            itemCount: 4,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(
                                      builder: (context) {
                                        return const Blogs(
                                          image:
                                              'https://www.agro.uz/wp-content/uploads/2021/10/limon-1-1330x700.jpg',
                                        );
                                      },
                                    ));
                                  },
                                  child: Row(
                                    children: [
                                      Image.network(
                                        'https://www.agro.uz/wp-content/uploads/2021/10/limon-1-1330x700.jpg',
                                        height: 71,
                                        width: 104,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 19),
                                        child: Text(
                                            'Weather tips for growing corn in hilly\nregion of Nepal'),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 47, bottom: 16),
                          child: Text(
                            'Products',
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 18),
                          ),
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 400,
                          child: GridView.builder(
                            itemCount: 4,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                            ),
                            itemBuilder: (context, index) {
                              return Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 16, left: 16),
                                child: Container(
                                  width: 174,
                                  height: 160,
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(blurRadius: 1.5),
                                      ]),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 16),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Column(
                                              children: [
                                                const Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 12),
                                                  child: Icon(
                                                    Icons
                                                        .favorite_border_outlined,
                                                    color: Colors.green,
                                                  ),
                                                ),
                                                const Icon(
                                                  Icons
                                                      .shopping_basket_outlined,
                                                  color: Colors.green,
                                                ),
                                                const Padding(
                                                  padding:
                                                      EdgeInsets.only(top: 12),
                                                  child: Icon(
                                                    Icons
                                                        .remove_red_eye_outlined,
                                                    color: Colors.green,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Image.asset(frukt_image[index]),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 10),
                                          child: Text(
                                            '${frukt_name[index]}',
                                            style: TextStyle(fontSize: 16),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text: '${kg[index]}',
                                                    style: TextStyle(
                                                        color: Colors.black)),
                                                TextSpan(
                                                    text: ' per ',
                                                    style: TextStyle(
                                                        color: Colors.grey)),
                                                TextSpan(
                                                    text: '${kb2[index]}',
                                                    style: TextStyle(
                                                        color: Colors.black)),
                                              ]),
                                            ),
                                            Spacer(),
                                            Text('4.2'),
                                            Image.asset('asset/Vector (3).png')
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 44, right: 13),
                          child: Row(
                            children: [
                              Text(
                                'Meats',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                              ),
                              Spacer(),
                              Text(
                                'All',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 366,
                          height: 218,
                          child: ListView.builder(
                            itemCount: 2,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 26),
                                child: Container(
                                  width: 366,
                                  height: 96,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(16),
                                      ),
                                      border: Border.all(color: Colors.grey)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 11, top: 6),
                                        child: Text(
                                          'Full Chicken',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 11),
                                        child: RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                              text: 'N',
                                              style: TextStyle(
                                                  color: Colors.green,
                                                  fontSize: 18),
                                            ),
                                            TextSpan(
                                              text: '2400',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 18),
                                            )
                                          ]),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              counter -= 1;
                                              price -= soft;
                                              setState(() {});
                                            },
                                            child: Icon(
                                              Icons.minimize,
                                              size: 25,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 10),
                                            child: Text(
                                              '${counter}',
                                              style: TextStyle(fontSize: 20),
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              counter += 1;
                                              price += soft;
                                              setState(() {});
                                            },
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10, left: 5),
                                              child: Text(
                                                '+',
                                                style: TextStyle(fontSize: 20),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 15, top: 10),
                                            child: Text(
                                              '|',
                                              style: TextStyle(fontSize: 25),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 15, top: 10),
                                            child: Text(
                                              '${price}',
                                              style: TextStyle(fontSize: 25),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
