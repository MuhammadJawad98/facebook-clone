import 'package:facebook/components/HomeScreenWidgets/bottomsheet.dart';
import 'package:facebook/components/HomeScreenWidgets/user_ImageWidget.dart';
import 'package:facebook/components/model/const.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:solid_bottom_sheet/solid_bottom_sheet.dart';
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

  // AnimationController _animationController;
  // bool isPlaying = false;

  @override
  // ignore: must_call_super
  void initState() {
    super.initState();
    _isBottomSheet = false;
    bg_color = Colors.white;
    txt_color = Colors.black87;
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
          title: Text('Create post', style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.white,
          actions: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'Post',
                style: TextStyle(color: Colors.grey, fontSize: 20),
              ),
            )
          ],
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: Stack(children: [
          Container(
            child: Column(
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
                                fontSize: 20),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey[400]),
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(
                                          5.0) //                 <--- border radius here
                                      ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.public,
                                        size: 20,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 3.0, right: 3.0),
                                        child: Text('Public'),
                                      ),
                                      Icon(Icons.arrow_drop_down),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey[400]),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5.0) //
                                          ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.add,
                                        size: 20,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 3.0, right: 3.0),
                                        child: Text('Album'),
                                      ),
                                      Icon(Icons.arrow_drop_down),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  height: 300,
                  color: bg_color,
                  child: TextFormField(
                    onTap: () {
                      setState(() {
                        _isBottomSheet = false;
                      });
                    },
                    maxLines: null,
                    style: TextStyle(fontSize: 20, color: txt_color),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "What's on your mind?",
                        contentPadding: EdgeInsets.all(5),
                        hintStyle: TextStyle(
                          fontSize: 25,
                          fontFamily: 'Roboto',
                        )),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: _isBottomSheet
                ? bottomSheet()
                : Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Expanded(
                            child: Wrap(
                              children: [
                                Row(
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
                                    GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            bg_color = Colors.white;
                                            txt_color = Colors.black87;
                                          });
                                        },
                                        child: Container(
                                            width: 40,
                                            height: 40,
                                            child: Card(
                                              child: Text('hello'),
                                              color: Colors.white,
                                            ))),
                                    GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            bg_color = Colors.redAccent;
                                            txt_color = Colors.white;
                                          });
                                        },
                                        child: Container(
                                            width: 40,
                                            height: 40,
                                            child: Card(
                                              child: Text('hello'),
                                              color: Colors.redAccent,
                                            ))),
                                    GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            txt_color = Colors.white;
                                            bg_color = Colors.red;
                                          });
                                        },
                                        child: Container(
                                            width: 40,
                                            height: 40,
                                            child: Card(
                                              child: Text('hello'),
                                              color: Colors.redAccent,
                                            ))),
                                    GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            txt_color = Colors.white;
                                            bg_color = Colors.lime;
                                          });
                                        },
                                        child: Container(
                                            width: 40,
                                            height: 40,
                                            child: Card(
                                              child: Text('hello'),
                                              color: Colors.lime,
                                            ))),
                                    GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            txt_color = Colors.white;
                                            bg_color = Colors.deepPurple;
                                          });
                                        },
                                        child: Container(
                                            width: 40,
                                            height: 40,
                                            child: Card(
                                              child: Text('hello'),
                                              color: Colors.deepPurple,
                                            ))),
                                    GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            txt_color = Colors.white;
                                            bg_color = Colors.blue;
                                          });
                                        },
                                        child: Container(
                                            width: 40,
                                            height: 40,
                                            child: Card(
                                              child: Text('hello'),
                                              color: Colors.blue,
                                            ))),
                                    GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            txt_color = Colors.white;
                                            bg_color = Colors.grey;
                                          });
                                        },
                                        child: Container(
                                            width: 40,
                                            height: 40,
                                            child: Card(
                                              child: Text('hello'),
                                              color: Colors.grey,
                                            ))),
                                    GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            txt_color = Colors.white;
                                            bg_color = Colors.brown;
                                          });
                                        },
                                        child: Container(
                                            width: 40,
                                            height: 40,
                                            child: Card(
                                              child: Text('hello'),
                                              color: Colors.brown,
                                            ))),
                                    GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            txt_color = Colors.white;
                                            bg_color = Colors.deepOrangeAccent;
                                          });
                                        },
                                        child: Container(
                                            width: 40,
                                            height: 40,
                                            child: Card(
                                              child: Text('hello'),
                                              color: Colors.deepOrangeAccent,
                                            ))),
                                    GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            txt_color = Colors.white;
                                            bg_color = Colors.pinkAccent;
                                          });
                                        },
                                        child: Container(
                                            width: 40,
                                            height: 40,
                                            child: Card(
                                              child: Text('hello'),
                                              color: Colors.pinkAccent,
                                            ))),
                                    GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            txt_color = Colors.white;
                                            bg_color = Colors.teal;
                                          });
                                        },
                                        child: Container(
                                            width: 40,
                                            height: 40,
                                            child: Card(
                                              child: Text('hello'),
                                              color: Colors.teal,
                                            ))),
                                    GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            txt_color = Colors.white;
                                            bg_color = Colors.lightBlueAccent;
                                          });
                                        },
                                        child: Container(
                                            width: 40,
                                            height: 40,
                                            child: Card(
                                              child: Text('hello'),
                                              color: Colors.lightBlueAccent,
                                            ))),

                                    // Card(child: Text('hello'),color: Colors.red,),
                                    // Card(child: Text('hello'),color: Colors.grey,),
                                    // Card(child: Text('hello'),color: Colors.white,),
                                    // Card(child: Text('hello'),color: Colors.amber,),
                                    // Card(child: Text('hello'),color: Colors.blue,),
                                    // Card(child: Text('hello'),color: Colors.green,),
                                    // Card(child: Text('hello'),color: Colors.deepPurple,),
                                    // Card(child: Text('hello'),color: Colors.amberAccent,),
                                    // Card(child: Text('hello'),color: Colors.lime,),
                                    // Card(child: Text('hello'),color: Colors.tealAccent,),
                                    // Card(child: Text('hello'),color: Colors.teal,),
                                  ],
                                ),
                              ],
                            ),
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
          _isBottomSheet = true;
          print(_isBottomSheet);
        })
      },
      child: Container(
        color: Colors.white,
        child: Row(
          children: [
            Expanded(
              child: Text('Add to your post'),
              flex: 6,
            ),
            Expanded(
              flex: 4,
              child: Row(
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
          ],
        ),
      ),
    );
  }
}
