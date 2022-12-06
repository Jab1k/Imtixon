//  SizedBox(
//                       height: 200,
//                       child: ListView.builder(
//                         itemCount: images.length,
//                         itemBuilder: (context, index) {
//                           return InkWell(
//                             onTap: () {
//                               Navigator.push(context, MaterialPageRoute(
//                                 builder: (context) {
//                                   return Blogs(
//                                     image: images[index],
//                                   );
//                                 },
//                               ));
//                             },
//                             child: Padding(
//                               padding: const EdgeInsets.only(top: 10),
//                               child: Row(
//                                 children: [
//                                   Image.network(
//                                     images[index],
//                                     width: 150,
//                                     height: 100,
//                                   ),
//                                   Padding(
//                                     padding: const EdgeInsets.only(left: 20),
//                                     child: Column(
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.start,
//                                       children: [
//                                         Text('Blog ${index + 1}'),
//                                         Text(
//                                           'What is Lorem Ipsum Lorem\nIpsum is simply dummy\ntext of the printing ',
//                                           textAlign: TextAlign.center,
//                                         ),
//                                       ],
//                                     ),
//                                   )
//                                 ],
//                               ),
//                             ),
//                           );
//                         },
//                       ),
//                     ),
              //      Padding(
              //   padding: const EdgeInsets.only(left: 87),
              //   child: Icon(
              //     Icons.account_circle_outlined,
              //     size: 40,
              //     color: Colors.white,
              //   ),
              // )