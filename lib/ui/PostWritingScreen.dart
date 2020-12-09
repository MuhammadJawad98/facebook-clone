import 'package:facebook/components/HomeScreenWidgets/user_circleImage.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class PostWritingScreen extends StatefulWidget {
  @override
  _PostWritingScreenState createState() => _PostWritingScreenState();
}

class _PostWritingScreenState extends State<PostWritingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Text('Create post', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        actions: [Text('Post')],
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                children: [
                  User_ImageWidget(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Muhammad Jawad',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey[400]),
                              borderRadius: BorderRadius.all(Radius.circular(
                                      5.0) //                 <--- border radius here
                                  ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(Icons.add),
                                Text('Public'),
                                Icon(Icons.arrow_drop_down),
                              ],
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
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(Icons.add),
                                Text('Album'),
                                Icon(Icons.arrow_drop_down),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
              Container(
                height: 250,
                child: TextFormField(
                  maxLines: null,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "What's on your mind?",
                      hintStyle: TextStyle(fontSize: 20, fontFamily: 'Roboto')),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
