import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/link_page.dart';
import 'package:flutter_application_1/util/constants.dart';
import 'package:flutter_application_1/widgets/link_button_widget.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: SafeArea(
//         child: Center(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
//             // padding: const EdgeInsets.all(8.0),
//             child: Column(
//               children: [
//                 // GestureDetector(
//                 //   onTap: () {
//                 //     Navigator.push(
//                 //         context,
//                 //         MaterialPageRoute(
//                 //             builder: (context) => const LinkPage(
//                 //                 title: "Link 1",
//                 //                 description: "Description 1")));
//                 //   },
//                 //   child: Container(
//                 //     width: double.infinity,
//                 //     decoration: BoxDecoration(
//                 //         color: Colors.white,
//                 //         borderRadius: BorderRadius.circular(15),
//                 //         boxShadow: const [
//                 //           BoxShadow(
//                 //               color: Colors.black12,
//                 //               spreadRadius: 2,
//                 //               blurRadius: 2,
//                 //               offset: Offset(2, 2))
//                 //         ]),
//                 //     child: const ListTile(
//                 //       title: Text("Link 1"),
//                 //       trailing: Icon(Icons.arrow_forward_ios_rounded),
//                 //     ),
//                 //   ),
//                 // ),
//                 // const SizedBox(
//                 //   height: 20.0,
//                 // ),
//                 // GestureDetector(
//                 //   onTap: () {
//                 //     Navigator.push(
//                 //         context,
//                 //         MaterialPageRoute(
//                 //             builder: (context) => const LinkPage(
//                 //                 title: "Link 2",
//                 //                 description: "Description 2")));
//                 //   },
//                 //   child: Container(
//                 //     width: double.infinity,
//                 //     decoration: BoxDecoration(
//                 //         color: Colors.white,
//                 //         borderRadius: BorderRadius.circular(15),
//                 //         boxShadow: const [
//                 //           BoxShadow(
//                 //               color: Colors.black12,
//                 //               spreadRadius: 2,
//                 //               blurRadius: 2,
//                 //               offset: Offset(2, 2))
//                 //         ]),
//                 //     child: const ListTile(
//                 //       title: Text("Link 2"),
//                 //       trailing: Icon(Icons.arrow_forward_ios_rounded),
//                 //     ),
//                 //   ),
//                 // )

//                 LinkButtonWidget(
//                   title: "Link 1",
//                   onTap: () {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => const LinkPage(
//                             title: "Link 1",
//                             // description: "Description 1"
//                             description: dummyTest,
//                           ),
//                         ));
//                   },
//                 ),
//                 const SizedBox(
//                   height: 20.0,
//                 ),
//                 LinkButtonWidget(
//                   title: "Link 2",
//                   onTap: () {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => const LinkPage(
//                                 title: "Link 2",
//                                 description: "Description 2")));
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color backgroundColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  if (backgroundColor == Colors.white) {
                    backgroundColor = Colors.red;
                  } else {
                    backgroundColor = Colors.white;
                  }
                });
              },
              icon: const Icon(Icons.color_lens))
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            child: Column(
              children: [
                LinkButtonWidget(
                  title: "Link 1",
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LinkPage(
                              title: "Link 1", description: "Description 1"),
                        ));
                  },
                ),
                const SizedBox(
                  height: 20.0,
                ),
                LinkButtonWidget(
                  title: "Link 2",
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LinkPage(
                                title: "Link 2",
                                description: "Description 2")));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
