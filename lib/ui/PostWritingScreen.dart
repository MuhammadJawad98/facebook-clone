import 'package:facebook/components/HomeScreenWidgets/bottomsheet.dart';
import 'package:facebook/components/HomeScreenWidgets/buttons/createpost_buttons.dart';
import 'package:facebook/components/HomeScreenWidgets/user_ImageWidget.dart';
import 'package:facebook/components/model/const.dart';
import 'package:flutter/material.dart';
import 'package:animated_icon_button/animated_icon_button.dart';

class PostWritingScreen extends StatefulWidget {
  @override
  _PostWritingScreenState createState() => _PostWritingScreenState();
}

class _PostWritingScreenState extends State<PostWritingScreen>
    with SingleTickerProviderStateMixin {
  bool _isBottomSheet;
  Color bg_color;
  Color txt_color;
  Color post_btncolor;
  TextEditingController textEditingController;

  // AnimationController _animationController;
  // bool isPlaying = false;
  bool isButtonEnabled;

  @override
  // ignore: must_call_super
  void initState() {
    super.initState();
    _isBottomSheet = false;
    bg_color = Colors.white;
    txt_color = Colors.black87;
    textEditingController = new TextEditingController(text: '');
    isButtonEnabled = false;
    post_btncolor = Colors.grey[400];

    // _animationController =
    //     AnimationController(vsync: this, duration: Duration(milliseconds: 450));
  }

  // @override
  // void dispose() {
  //   super.dispose();
  //   _animationController.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          title: Text('Create post', style: TextStyle(color: Colors.black87)),
          backgroundColor: Colors.white,
          actions: [
            Padding(
                padding: const EdgeInsets.all(15.0),
                child: FlatButton(
                  child: Text(
                    'Post',
                    style: TextStyle(color: post_btncolor),
                  ),
                  onPressed: () {
                    isEmpty()
                        ? post_btncolor = Colors.grey[400]
                        : setState(() {
                            post_btncolor = Colors.black87;
                          });
                  },
                ))
          ],
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: Stack(children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5.0, bottom: 5.0),
                child: Row(
                  children: [
                    User_ImageWidget(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          Const.list_userfeed[0].name,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            CreatPost_Buttons(
                                title: 'Public', icon: Icons.public),
                            SizedBox(
                              width: 5,
                            ),
                            CreatPost_Buttons(title: 'Album', icon: Icons.add),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: 200,
                color: bg_color,
                child: TextFormField(
                  controller: textEditingController,
                  onTap: () {
                    setState(() {
                      _isBottomSheet = false;
                    });
                  },
                  maxLines: null,
                  style: TextStyle(
                    fontSize: 20,
                    color: txt_color,
                  ),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "What's on your mind?",
                      contentPadding: EdgeInsets.all(15),
                      hintStyle: TextStyle(
                        fontSize: 25,
                        fontFamily: 'Roboto',
                      )),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: _isBottomSheet
                ? bottomSheet()
                : Container(
                    height: 90,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: AnimatedIconButton(
                                  size: 15,
                                  onPressed: () {
                                    print(
                                        "button with background color pressed");
                                  },
                                  duration: Duration(milliseconds: 200),
                                  endIcon: Icon(
                                    Icons.arrow_back_ios_outlined,
                                    color: Colors.black87,
                                  ),
                                  startIcon: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.black87,
                                  ),
                                  startBackgroundColor: Colors.grey[300],
                                  endBackgroundColor: Colors.grey[300],
                                ),
                              ),
                              ColorCard(Colors.white),
                              ColorCard(Colors.amber),
                              ColorCard(Colors.pinkAccent),
                              ColorCard(Colors.lightBlueAccent),
                              ColorCard(Colors.deepOrange),
                              ColorCard(Colors.brown),
                              ColorCard(Colors.redAccent),
                              ColorCard(Colors.greenAccent),
                              ColorCard(Colors.indigo),
                              ColorCard(Colors.brown),
                              ColorCard(Colors.redAccent),
                              ColorCard(Colors.greenAccent),
                              ColorCard(Colors.indigo),
                              // ListView.builder(
                              //     itemCount: 5,
                              //     itemBuilder: (BuildContext context,int index){
                              //       return Text("List item $index");
                              //     }
                              // ),
                            ],
                          ),
                        ),
                        bottomButtons(),
                      ],
                    ),
                  ),
          )
        ]));
  }

  // Widget _backgroundPost() {
  //   return Align(
  //     alignment: Alignment.centerLeft,
  //     child: IconButton(
  //       icon: AnimatedIcon(
  //         icon: AnimatedIcons.play_pause,
  //         progress: _animationController,
  //         color: Colors.black87,
  //       ),
  //       onPressed: () => _handleOnPressed(),
  //     ),
  //   );
  // }
  //
  // void _handleOnPressed() {
  //   setState(() {
  //     isPlaying = !isPlaying;
  //     isPlaying
  //         ? _animationController.forward()
  //         : _animationController.reverse();
  //   });
  // }

  Widget bottomButtons() {
    return MaterialButton(
      onPressed: () => {
        setState(() {
          FocusScope.of(context).requestFocus(FocusNode());
          _isBottomSheet = true;
        })
      },
      child: Container(
        color: Colors.white,
        child: Row(
          children: [
            Expanded(flex: 6, child: Text('Add to your post')),
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.photo,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.person,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.emoji_emotions,
                      color: Colors.amber,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.location_on,
                      color: Colors.redAccent,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget ColorCard(Color color) {
    return GestureDetector(
        onTap: () {
          setState(() {
            if (color == Colors.white) {
              txt_color = Colors.black87;
            } else {
              txt_color = Colors.white;
            }
            bg_color = color;
          });
        },
        child: Container(
            width: 40,
            height: 40,
            child: Card(
              child: Text(''),
              color: color,
            )));
  }

//  checking the textview is empty or not
  bool isEmpty() {
    setState(() {
      if (textEditingController.text.isEmpty) {
        isButtonEnabled = true;
      } else {
        isButtonEnabled = false;
      }
    });
    return isButtonEnabled;
  }
}
