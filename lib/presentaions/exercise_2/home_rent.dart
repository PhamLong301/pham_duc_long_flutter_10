import 'package:flutter/material.dart';

class HomeRentScreen extends StatelessWidget {
  const HomeRentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> _categories = ['House', 'Apartment', 'Hotel', 'Villa'];
    String _selectedCategory = 'House';
    bool isSelected = true;
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Location",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w400),
                          ),
                          Row(
                            children: [
                              const Text(
                                "Jakatar",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Image.asset(
                                'assets/images/Vector_3.png',
                                height: 10,
                                width: 10,
                              )
                            ],
                          )
                        ],
                      ),
                      Image.asset(
                        'assets/images/Vector.png',
                        height: 30,
                        width: 30,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          flex: 4,
                          child: Container(
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              // color: const Color(0xFFF7F7F7),
                            ),
                            child: TextFormField(
                              cursorColor: Colors.grey,
                              decoration: const InputDecoration(
                                  fillColor: Color(0xFFF7F7F7),
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  hintText: "Search address, or near you"),
                            ),
                          )),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        flex: 1,
                        child: InkWell(
                          child: Container(
                            padding: const EdgeInsets.all(16),
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                gradient: const LinearGradient(
                                    begin: Alignment.topLeft,
                                    colors: [
                                      Color(0xFFA0DAFB),
                                      Color(0xFF0A8ED9),
                                    ])),
                            child: Image.asset(
                              'assets/images/Vector_1.png',
                              width: 10,
                              height: 10,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.fromLTRB(12, 5, 0, 5),
              height: 40,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return InkWell(
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        height: 15,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: const LinearGradient(
                                begin: Alignment.topLeft,
                                colors: [
                                  Color(0xFFA0DAFB),
                                  Color(0xFF0A8ED9),
                                ])),
                        child: const Text(
                          'Home',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => const SizedBox(
                        width: 10,
                      ),
                  itemCount: 5),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Near from you',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                    ),
                  ),
                  Text(
                    'See more',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      color: Color(0xFF858585),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.fromLTRB(12, 5, 0, 5),
              height: 300,
              child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return InkWell(
                      child: Container(
                        width: 240,
                        height: 290,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: Image.asset(
                                'assets/images/house_1.png',
                                width: 240,
                                height: 290,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                                left: 140,
                                top: 10,
                                child: Container(
                                  width: 78,
                                  height: 26,
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color(0xFF0000003D).withOpacity(0.24),
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Image.asset(
                                        'assets/images/Vector_2.png',
                                        width: 20,
                                        height: 20,
                                      ),
                                      const Text(
                                        '1.8km',
                                        style: TextStyle(
                                          color: Color(0xFFFFFFFF),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 13,
                                        ),
                                      )
                                    ],
                                  ),
                                )),
                            const Positioned(
                              bottom: 10,
                              left: 10,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Dreamsville House',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                  Text(
                                    'Jl. Sultan Iskandar Muda',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => const SizedBox(
                        width: 20,
                      ),
                  itemCount: 3),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Best for you',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                    ),
                  ),
                  Text(
                    'See more',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      color: Color(0xFF858585),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
              child: ListView.separated(
                shrinkWrap: true,
                  itemBuilder: (context, index) {
               return Row(
                 children: [
                   ClipRRect(
                     borderRadius: BorderRadius.circular(8.0),
                     child: Image.asset(
                       'assets/images/best_1.png', // Update the asset path accordingly
                       width: 80,
                       height: 80,
                       fit: BoxFit.cover,
                     ),
                   ),
                   const SizedBox(width: 10),
                   Expanded(
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         const Text(
                           'Orchad House',
                           style: TextStyle(
                             fontSize: 18,
                             fontWeight: FontWeight.bold,
                           ),
                         ),
                         const SizedBox(height: 5),
                         const Text(
                           'Rp. 2.500.000.000 / Year',
                           style: TextStyle(
                             fontSize: 16,
                             color: Colors.blue,
                             fontWeight: FontWeight.w500,
                           ),
                         ),
                         const SizedBox(height: 10),
                         Row(
                           children: [
                             Row(
                               children: [
                                 Image.asset('assets/images/Vector_bed.png',
                                 width: 20,height: 20,),
                                 const SizedBox(width: 5),
                                 const Text(
                                   '6 Bedroom',
                                   style: TextStyle(color: Colors.grey),
                                 ),
                               ],
                             ),
                             const SizedBox(width: 20),
                             Row(
                               children: [
                                 Image.asset('assets/images/Vector_bath.png',
                                   width: 20,height: 20,),
                                 const SizedBox(width: 5),
                                 const Text(
                                   '4 Bathroom',
                                   style: TextStyle(color: Colors.grey),
                                 ),
                               ],
                             ),
                           ],
                         ),
                       ],
                     ),
                   ),
                 ],
               );
              }, separatorBuilder: (context, index) => const SizedBox(height: 10,), itemCount: 4)
            )
          ],
        ),
      ),
    ));
  }
}
