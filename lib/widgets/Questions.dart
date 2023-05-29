import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Constants/colors.dart';
import '../widgets/options.dart';
import '../Screens/Home.dart';
import 'dart:ui' as ui;
import '../Model/Question.dart';



class Questions extends StatefulWidget {

  final int currentPage;
  const Questions({super.key, required this.currentPage});

  @override
  QuestionsState createState() => QuestionsState();
}

class QuestionsState extends State<Questions> {

  var selectedAnswer = -1;

  refresh() {
    setState(() {
      selectedAnswer = 1;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Container(color: qBlack,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(
                top: 50,
                bottom: 20,
                left: 25,
                right: 25
            ),
            child: Text(
              QuestionModel.fetchAll()[widget.currentPage].question,
              style: TextStyle(
                color: qWhiteVar1,
                fontFamily: 'Avenir Next-Regular',
                fontSize: 20,
              ),
            ),
          ),
          Options(
              notifyParent: refresh,
              optionsArray: QuestionModel.fetchAll()[widget.currentPage].options
          ,),
          Visibility(visible: selectedAnswer > 0 ? true : false,
              child: FloatingActionButton.extended (
                label: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Save ',
                      style: TextStyle(
                        color: qWhite,
                        fontFamily: 'AvenirNext-Regular',
                        fontSize: 16,
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
                onPressed: () {

                  print("Next page");

                 if(widget.currentPage < QuestionModel.fetchAll().length - 1) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder:
                            (context) => Home(currentPage: widget.currentPage + 1,)
                        )
                    );

                 }

                },
                backgroundColor: qOrange,
              ),
          )
        ],
      ),
    );
  }
}

