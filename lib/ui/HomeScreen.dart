import 'file:///C:/Users/Mike/AndroidStudioProjects/facebook/lib/components/HomeScreenWidgets/CreateAStory_Card.dart';
import 'file:///C:/Users/Mike/AndroidStudioProjects/facebook/lib/components/HomeScreenWidgets/WritePostWidget.dart';
import 'package:facebook/components/HomeScreenWidgets/NewFeeds.dart';
import 'package:facebook/components/HomeScreenWidgets/OnlineUsersWidget.dart';
import 'package:facebook/components/HomeScreenWidgets/PostWriteWidget.dart';
import 'package:facebook/components/HomeScreenWidgets/Stories.dart';
import 'package:facebook/components/model/user.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<User> list = <User>[
    User('',
        'https://images.unsplash.com/photo-1472162072942-cd5147eb3902?ixid=MXwxMjA3fDB8MHxzZWFyY2h8N3x8a2lkc3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
    User('',
        'https://images.unsplash.com/photo-1472162072942-cd5147eb3902?ixid=MXwxMjA3fDB8MHxzZWFyY2h8N3x8a2lkc3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
    User('',
        'https://images.unsplash.com/photo-1472162072942-cd5147eb3902?ixid=MXwxMjA3fDB8MHxzZWFyY2h8N3x8a2lkc3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
    User('',
        'https://images.unsplash.com/photo-1513807016779-d51c0c026263?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDF8fGtpZHN8ZW58MHx8MHw%3D&auto=format&fit=crop&w=500&q=60'),
    User('',
        'https://images.unsplash.com/photo-1440288736878-766bd5839edb?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDJ8fGtpZHN8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
    User('',
        'https://images.unsplash.com/photo-1503944583220-79d8926ad5e2?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDV8fGtpZHN8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
    User('',
        'https://images.unsplash.com/photo-1505377059067-e285a7bac49b?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDZ8fGtpZHN8ZW58MHx8MHw%3D&auto=format&fit=crop&w=500&q=60'),
    User('',
        'https://images.unsplash.com/photo-1505377059067-e285a7bac49b?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDZ8fGtpZHN8ZW58MHx8MHw%3D&auto=format&fit=crop&w=500&q=60'),
    User('',
        'https://images.unsplash.com/photo-1500995617113-cf789362a3e1?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDh8fGtpZHN8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
    User('',
        'https://images.unsplash.com/photo-1526834527924-83a042ea7711?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NTZ8fGtpZHN8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
              height: 8, decoration: BoxDecoration(color: Colors.grey[350])),
          PostWriteWidget(),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  FlatButton(
                    textColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(color: Colors.blue)),
                    onPressed: () {},
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.video_call_sharp,
                          color: Colors.deepPurple,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Create Room",
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  // ListView.builder(
                  //     padding: const EdgeInsets.all(8),
                  //     itemCount: list.length,
                  //     shrinkWrap: true,
                  //     physics: const NeverScrollableScrollPhysics(),
                  //     primary: false,
                  //     itemBuilder: (BuildContext context, int index) {
                  //       return OnlineUserWidget(
                  //         imgUrl: list[index].img_url,
                  //       );
                  //     })
                  // List.generate(list.length,(index){
                  //   return Text(list[index].toString());
                  // }),
                ],
              ),
            ),
          ),
          Container(
              height: 8, decoration: BoxDecoration(color: Colors.grey[350])),
          Stories(),
          Container(
              height: 8, decoration: BoxDecoration(color: Colors.grey[350])),
          NewFeeds(),
        ],
      ),
    );
  }
}
