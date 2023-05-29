import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Constants/colors.dart';



class Options extends StatefulWidget {
  const Options({super.key, required this.notifyParent, required this.optionsArray});
  final Function() notifyParent;
  final List<String> optionsArray;

  @override
  OptionsState createState() => OptionsState();
}

class OptionsState extends State<Options> {

    var selectedIndex = -1;
    List<bool> itemZoomStates = List.generate(10, (_) => false);

    @override
  Widget build(BuildContext context) {
    return Container(
        height: 400,
        padding: EdgeInsets.only(top: 50, left: 25, right: 25),
        child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 11,
            crossAxisSpacing: 11,
            childAspectRatio: 2.5
        ), itemBuilder: (context, index) {
          return Container(
            child: GestureDetector(
                onTap: () {
                  print(DefaultTextStyle.of(context).style.fontFamily);
                  setState(() {
                    selectedIndex = index;
                    itemZoomStates[index] = !itemZoomStates[index];
                    Future.delayed(const Duration(milliseconds: 200), () {
                      setState(() {
                        itemZoomStates[index] = !itemZoomStates[index];
                      });
                    });
                  });
                  print('tapped : ' + widget.optionsArray[index]);
                  widget.notifyParent();

                },
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 200),
                  curve: Curves.easeOut,
                  transform: itemZoomStates[index] ? Matrix4.diagonal3Values(0.9, 0.9, 1.0) : Matrix4.identity(),
                  child: Container(
                    decoration: BoxDecoration(
                      color: selectedIndex == index ? qGreen : qGrey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        widget.optionsArray[index],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: selectedIndex == index ? qWhite : qWhiteVar1,
                          fontFamily: 'AvenirNext-DemiBold',
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                )
            ),
          );
        },
          itemCount: widget.optionsArray.length,
        )
    );
  }
}




