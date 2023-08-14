import 'package:flutter/material.dart';
import 'package:language/screens_Japanese/Japanese.dart';

class HomeSreen extends StatefulWidget {
  const HomeSreen({Key? key}) : super(key: key);

  @override
  State<HomeSreen> createState() => _HomeSreenState();
}

class _HomeSreenState extends State<HomeSreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff47312B),
        centerTitle: false,
        elevation: 5,
        toolbarHeight: 65,
        title: const Text(
          'Languages',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const JapaneseLanguageScreen(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                // color: Color.fromARGB(255, 127, 189, 240),
                color: const Color(0xffE6BCC9),
                child: SizedBox(
                  height: 330,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        'asset/images/japan/countries/japan.jpeg',
                        height: 270,
                        width: 398,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        height: 55,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(
                                left: 18,
                              ),
                              child: Text(
                                'Japanese',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                            const Spacer(
                              flex: 1,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                right: 16,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'asset/images/japan/flags/Japan_flar_icon.png',
                                    height: 50,
                                    //fit: BoxFit.cover,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
//______________________________________________________________________________
//           GestureDetector(
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => const JapaneseLanguageScreen(),
//                 ),
//               );
//             },
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Card(
//                 // color: Color.fromARGB(255, 127, 189, 240),
//                 color: const Color(0xffE6BCC9),
//                 child: SizedBox(
//                   height: 330,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       Image.asset(
//                         'asset/images/numbers/japan_flag.jpeg',
//                         height: 270,
//                         width: 398,
//                         fit: BoxFit.cover,
//                       ),
//                       SizedBox(
//                         height: 55,
//                         child: Row(
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             const Padding(
//                               padding: EdgeInsets.only(
//                                 left: 18,
//                               ),
//                               child: Text(
//                                 'Japanese',
//                                 style: TextStyle(
//                                     fontSize: 20,
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.black),
//                               ),
//                             ),
//                             const Spacer(
//                               flex: 1,
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.only(
//                                 right: 16,
//                               ),
//                               child: Column(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   Image.asset(
//                                     'asset/images/numbers/Japan_flar_icon.png',
//                                     height: 50,
//                                     //fit: BoxFit.cover,
//                                   )
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
// //______________________________________________________________________________
//           GestureDetector(
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => const JapaneseLanguageScreen(),
//                 ),
//               );
//             },
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Card(
//                 // color: Color.fromARGB(255, 127, 189, 240),
//                 color: const Color(0xffE6BCC9),
//                 child: SizedBox(
//                   height: 330,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       Image.asset(
//                         'asset/images/numbers/japan_flag.jpeg',
//                         height: 270,
//                         width: 398,
//                         fit: BoxFit.cover,
//                       ),
//                       SizedBox(
//                         height: 55,
//                         child: Row(
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             const Padding(
//                               padding: EdgeInsets.only(
//                                 left: 18,
//                               ),
//                               child: Text(
//                                 'Japanese',
//                                 style: TextStyle(
//                                     fontSize: 20,
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.black),
//                               ),
//                             ),
//                             const Spacer(
//                               flex: 1,
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.only(
//                                 right: 16,
//                               ),
//                               child: Column(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   Image.asset(
//                                     'asset/images/numbers/Japan_flar_icon.png',
//                                     height: 50,
//                                     //fit: BoxFit.cover,
//                                   )
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
// //______________________________________________________________________________
//           GestureDetector(
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => const JapaneseLanguageScreen(),
//                 ),
//               );
//             },
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Card(
//                 // color: Color.fromARGB(255, 127, 189, 240),
//                 color: const Color(0xffE6BCC9),
//                 child: SizedBox(
//                   height: 330,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       Image.asset(
//                         'asset/images/countries/japan_flag.jpeg',
//                         height: 270,
//                         width: 398,
//                         fit: BoxFit.cover,
//                       ),
//                       SizedBox(
//                         height: 55,
//                         child: Row(
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             const Padding(
//                               padding: EdgeInsets.only(
//                                 left: 18,
//                               ),
//                               child: Text(
//                                 'Japanese',
//                                 style: TextStyle(
//                                     fontSize: 20,
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.black),
//                               ),
//                             ),
//                             const Spacer(
//                               flex: 1,
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.only(
//                                 right: 16,
//                               ),
//                               child: Column(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   Image.asset(
//                                     'asset/images/flags/Japan_flar_icon.png',
//                                     height: 50,
//                                     //fit: BoxFit.cover,
//                                   )
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//______________________________________________________________________________
        ],
      ),
      // drawer: Drawer(
      //   child: Column(
      //     children: [
      //       const SizedBox(
      //         height: 220,
      //         child: UserAccountsDrawerHeader(
      //           accountEmail: Text(
      //             ' AmrSalem@RS.com',
      //           ),
      //           accountName: Text(
      //             'Amr Salem ',
      //           ),
      //           currentAccountPicture: CircleAvatar(
      //             radius: 40.0,
      //             backgroundImage: AssetImage(
      //                 'asset/images/family_members/family_father.png'),
      //           ),
      //           decoration: BoxDecoration(
      //             color: Color(0xff47312B),
      //           ),
      //         ),
      //       ),
      //       const SizedBox(
      //         height: 20,
      //       ),
      //       ListTile(
      //         title: const Text(
      //           ' Home ',
      //           style: TextStyle(
      //             fontWeight: FontWeight.bold,
      //             fontSize: 20.0,
      //             wordSpacing: 10.0,
      //           ),
      //         ),
      //         leading: const Icon(
      //           Icons.home,
      //           size: 30.0,
      //         ),
      //         onTap: () {},
      //       ),
      //       ListTile(
      //         title: const Text(
      //           ' Sections ',
      //           style: TextStyle(
      //             fontWeight: FontWeight.bold,
      //             fontSize: 20.0,
      //             wordSpacing: 10.0,
      //           ),
      //         ),
      //         leading: const Icon(
      //           Icons.category,
      //           size: 30.0,
      //         ),
      //         onTap: () {},
      //       ),
      //       const Padding(
      //         padding: EdgeInsets.only(
      //           top: 15,
      //           bottom: 15,
      //         ),
      //         child: Divider(
      //           height: 2.0,
      //           color: Colors.black,
      //           indent: 20.0,
      //         ),
      //       ),
      //       ListTile(
      //         title: const Text(
      //           ' About App ',
      //           style: TextStyle(
      //             fontWeight: FontWeight.bold,
      //             fontSize: 20.0,
      //             wordSpacing: 10.0,
      //           ),
      //         ),
      //         leading: const Icon(
      //           Icons.info,
      //           size: 30.0,
      //         ),
      //         onTap: () {},
      //       ),
      //       ListTile(
      //         title: const Text(
      //           ' Settings ',
      //           style: TextStyle(
      //             fontWeight: FontWeight.bold,
      //             fontSize: 20.0,
      //             wordSpacing: 10.0,
      //           ),
      //         ),
      //         leading: const Icon(
      //           Icons.settings,
      //           size: 30.0,
      //         ),
      //         onTap: () {},
      //       ),
      //       ListTile(
      //         title: const Text(
      //           ' Logout ',
      //           style: TextStyle(
      //             fontWeight: FontWeight.bold,
      //             fontSize: 20.0,
      //             wordSpacing: 10.0,
      //           ),
      //         ),
      //         leading: const Icon(
      //           Icons.exit_to_app,
      //           size: 30.0,
      //         ),
      //         onTap: () {},
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
