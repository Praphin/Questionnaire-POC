import 'package:flutter/material.dart';
import 'package:questionnaire/Constants/colors.dart';
import 'package:questionnaire/widgets/options.dart';
import 'package:questionnaire/widgets/Questions.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import '../Constants/colors.dart';



 class Home extends StatelessWidget {

  final int currentPage;
  Home({Key? key, required this.currentPage}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      backgroundColor: qBlack,
      appBar: _buildAppBar(),
      body: Questions(currentPage: currentPage,),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
    //  automaticallyImplyLeading: false,
    //   backgroundColor: qBlack,
      elevation: 0,
      backgroundColor: qBlack,
      // Optional: Set background color to transparent
      flexibleSpace: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 1,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [qClearColor, qOrange,qClearColor], // Customize the line colors
                ),
              ),
            ),
          ),
        ],
      ),
      iconTheme: IconThemeData(
        color: qOrange, //change your color here
      ),
      title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // GestureDetector(
            //   onTap: () {
            //     if (currentPage > 0 ) {
            //       print('back clicked');
            //     } else {
            //       print("Dismiss flutter sdk");
            //     }
            //   },
            //   child: Icon(
            //     Icons.arrow_back_ios,
            //     color: qOrange,
            //     size: 25,
            //   ),
            // ),
            Container(
              height: 40,
              width: 40,
              child: ClipRRect(
                child: Image.asset('assets/icons/share.png'),
              ),
            )
          ]
      ),
    );
  }

  void log() {
    print('Hello, world!');
  }

}



