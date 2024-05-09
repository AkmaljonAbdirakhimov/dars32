import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  int? selectedFruit;

  PreferredSizeWidget mobileApp() {
    return AppBar(
      title: const Text("32-Dars"),
      centerTitle: false,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
        PopupMenuButton(
            position: PopupMenuPosition.under,
            icon: const Icon(Icons.more_vert),
            // offset: const Offset(-10, 50),
            itemBuilder: (ctx) {
              return const [
                PopupMenuItem(
                  child: Text("Profile"),
                ),
                PopupMenuItem(
                  child: Text("Settings"),
                ),
                PopupMenuItem(
                  child: Text("Logout"),
                ),
              ];
            }),
      ],
    );
  }

  PreferredSizeWidget desktopAppbar() {
    return AppBar(
      title: const Text("32-Dars"),
      centerTitle: false,
      actions: [
        TextButton(
          onPressed: () {},
          child: const Text("Bosh Sahifa"),
        ),
        TextButton(
          onPressed: () {},
          child: const Text("Biz haqimizda"),
        ),
        TextButton(
          onPressed: () {},
          child: const Text("Aloqa"),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: screenWidth >= 800 ? desktopAppbar() : mobileApp(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            DropdownButton(
              hint: const Text("Iltimos meva tanlang"),
              value: selectedFruit,
              items: const [
                DropdownMenuItem(
                  value: 0,
                  child: Text("Olma"),
                ),
                DropdownMenuItem(
                  value: 1,
                  child: Text("Behi"),
                ),
                DropdownMenuItem(
                  value: 2,
                  child: Text("Anor"),
                ),
              ],
              onChanged: (value) {
                selectedFruit = value;
                setState(() {});
              },
            ),
            const SizedBox(
              height: 50,
            ),
            // Row(
            //   mainAxisSize: MainAxisSize.min,
            //   children: [
            //     Flexible(
            //       child: InkWell(
            //         onTap: () {
            //           print("Salom");
            //         },
            //         child: const Text(
            //           "Salom hammaga ishlar yaxshimi? Men Oydan keldim. Ismim Oybola!",
            //           style: TextStyle(
            //             color: Colors.orange,
            //             fontSize: 18,
            //           ),
            //         ),
            //       ),
            //     ),
            //     const Flexible(
            //       // flex: 2,
            //       child: Text(
            //         "Kim men bilan o'ynashni xohlaydi, men POKER o'ynashni bilmayman, lekin PUBG o'ynaymiz.",
            //         style: TextStyle(
            //           color: Colors.red,
            //           fontSize: 18,
            //         ),
            //       ),
            //     ),
            //     const Flexible(
            //       // flex: 3,
            //       child: Text(
            //         "Fultbolga ham qarshi emasman, muhimi yetarlicha o'yinchilarni topsak bo'ldi!",
            //         style: TextStyle(
            //           color: Colors.blue,
            //           fontSize: 18,
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            // const SizedBox(
            //   height: 50,
            // ),
            // RichText(
            //   text: TextSpan(children: [
            //     TextSpan(
            //       recognizer: TapGestureRecognizer()
            //         ..onTap = () {
            //           print("Salom 2");
            //         },
            //       text:
            //           "Salom hammaga ishlar yaxshimi? Men Oydan keldim. Ismim Oybola!",
            //       style: const TextStyle(
            //         color: Colors.blue,
            //         fontSize: 18,
            //       ),
            //     ),
            //     const TextSpan(
            //       text:
            //           " Kim men bilan o'ynashni xohlaydi, men POKER o'ynashni bilmayman, lekin PUBG o'ynaymiz.",
            //       style: TextStyle(
            //         color: Colors.red,
            //         fontSize: 18,
            //       ),
            //     ),
            //     const TextSpan(
            //       text:
            //           " Fultbolga ham qarshi emasman, muhimi yetarlicha o'yinchilarni topsak bo'ldi!",
            //       style: TextStyle(
            //         color: Colors.orange,
            //         fontSize: 18,
            //       ),
            //     ),
            //   ]),
            // ),
            // const SizedBox(
            //   height: 50,
            // ),
            // screenWidth >= 600
            //     ? Row(
            //         children: [
            //           Container(
            //             width: 100,
            //             height: 100,
            //             color: Colors.blue,
            //           ),
            //           Container(
            //             width: 100,
            //             height: 100,
            //             color: Colors.red,
            //           ),
            //           Container(
            //             width: 100,
            //             height: 100,
            //             color: Colors.orange,
            //           ),
            //           Container(
            //             width: 100,
            //             height: 100,
            //             color: Colors.grey,
            //           ),
            //         ],
            //       )
            //     : Column(
            //         children: [
            //           Container(
            //             width: 100,
            //             height: 100,
            //             color: Colors.blue,
            //           ),
            //           Container(
            //             width: 100,
            //             height: 100,
            //             color: Colors.red,
            //           ),
            //           Container(
            //             width: 100,
            //             height: 100,
            //             color: Colors.orange,
            //           ),
            //           Container(
            //             width: 100,
            //             height: 100,
            //             color: Colors.grey,
            //           ),
            //         ],
            //       ),
          ],
        ),
      ),
    );
  }
}
