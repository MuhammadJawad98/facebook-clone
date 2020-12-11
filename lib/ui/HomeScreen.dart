import 'file:///C:/Users/Mike/AndroidStudioProjects/facebook/lib/components/HomeScreenWidgets/CreateAStory_Card.dart';
import 'file:///C:/Users/Mike/AndroidStudioProjects/facebook/lib/components/HomeScreenWidgets/WritePostWidget.dart';
import 'package:facebook/components/HomeScreenWidgets/PostScreen.dart';
import 'package:facebook/components/HomeScreenWidgets/OnlineUsersWidget.dart';
import 'package:facebook/components/HomeScreenWidgets/PostWriteWidget.dart';
import 'package:facebook/components/HomeScreenWidgets/Stories.dart';
import 'package:facebook/components/model/const.dart';
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
        'https://images.unsplash.com/photo-1505377059067-e285a7bac49b?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDZ8fGtpZHN8ZW58MHx8MHw%3D&auto=format&fit=crop&w=500&q=60'),
    User('',
        'https://images.unsplash.com/photo-1500995617113-cf789362a3e1?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDh8fGtpZHN8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
    User('',
        'https://images.unsplash.com/photo-1520409364224-63400afe26e5?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTF8fG1lbnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
    User('',
        'https://images.unsplash.com/photo-1505377059067-e285a7bac49b?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDZ8fGtpZHN8ZW58MHx8MHw%3D&auto=format&fit=crop&w=500&q=60'),
    User('',
        'https://images.unsplash.com/photo-1526834527924-83a042ea7711?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NTZ8fGtpZHN8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
    User('',
        'https://images.unsplash.com/photo-1472162072942-cd5147eb3902?ixid=MXwxMjA3fDB8MHxzZWFyY2h8N3x8a2lkc3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
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
                    SizedBox(
                      height: 50.0,
                      child: ListView.builder(
                        physics: ScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: list.length,
                        itemBuilder: (BuildContext context, int index) =>
                            OnlineUserWidget(
                          imgUrl: list[index].img_url,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
                height: 8, decoration: BoxDecoration(color: Colors.grey[350])),
            Stories(),
            Container(
                height: 8, decoration: BoxDecoration(color: Colors.grey[350])),
            // ListView.builder(
            //     physics: ScrollPhysics(),
            //     shrinkWrap: true,
            //     scrollDirection: Axis.horizontal,
            //     itemCount: Const.list_usersfeed.length,
            //     itemBuilder: (BuildContext context, int index) => PostScreen(
            //           shares: Const.list_usersfeed[index].total_share,
            //           likes: Const.list_usersfeed[index].total_likes,
            //           timeAgo: Const.list_usersfeed[index].date,
            //           profileImage:  Const.list_usersfeed[index].user_image,
            //           comments:  Const.list_usersfeed[index].total_comments,
            //           text: Const.list_usersfeed[index].text,
            //           name: Const.list_usersfeed[index].name,
            //           img_url: Const.list_usersfeed[index].img_url,
            //         )),
            Container(
              child: ListView.builder(
                itemCount: Const.list_userfeed.length,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return PostScreen(
                    imageUrl: Const.list_usersfeed[index].img_url,
                    username: Const.list_usersfeed[index].name,
                    caption: Const.list_usersfeed[index].text,
                    comments: Const.list_usersfeed[index].total_comments,
                    likes: Const.list_usersfeed[index].total_likes,
                    userImage: Const.list_usersfeed[index].user_image,
                    shares: Const.list_usersfeed[index].total_share,
                    timeAgo: Const.list_usersfeed[index].date,
                  );
                  // PostScreen(userImage: 'https://images.unsplash.com/photo-1544724107-6d5c4caaff30?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60', username: 'Charles', caption: 'This is a facebook clone app developed only for learning purpose. Thank you.', timeAgo: '3hrs', imageUrl: null, likes: '32', comments: '10',shares: '9',);
                },
              ),
            )
            // PostScreen(userImage: 'https://images.unsplash.com/photo-1544724107-6d5c4caaff30?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60', username: 'Charles', caption: 'This is a facebook clone app developed only for learning purpose. Thank you.', timeAgo: '3hrs', imageUrl: null, likes: '32', comments: '10',shares: '9',),
            // PostScreen(userImage: 'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60', username: 'Minh Pham', caption: 'This is a facebook clone app developed only for learning purpose. Thank you.', timeAgo: '7hrs', imageUrl: "https://images.unsplash.com/photo-1593642532454-e138e28a63f4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60", likes: '432', comments: '120',shares: '90',),
            // PostScreen(userImage: 'https://images.unsplash.com/photo-1528763380143-65b3ac89a3ff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60', username: 'Ben Parker', caption: 'This is a facebook clone app developed only for learning purpose. Thank you.', timeAgo: '8hrs', imageUrl: null, likes: '232', comments: '110',shares: '100',),
            // PostScreen(userImage: 'https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=80', username: 'Nicolos Horn', caption: 'This is a facebook clone app developed only for learning purpose. Thank you.', timeAgo: '10hrs', imageUrl: "https://images.unsplash.com/photo-1598225176697-e7fc9857917b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60", likes: '22', comments: '130',shares: '30',),
            // PostScreen(userImage: 'https://images.unsplash.com/photo-1544725176-7c40e5a71c5e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2247&q=80', username: 'Luis Villasmil', caption: 'This is a facebook clone app developed only for learning purpose. Thank you.', timeAgo: '12hrs', imageUrl: "https://images.unsplash.com/photo-1558980664-3a031cf67ea8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60", likes: '522', comments: '152',shares: '20',),
            // PostScreen(userImage: 'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=80', username: 'Alex', caption: 'This is a facebook clone app developed only for learning purpose. Thank you.', timeAgo: '2 days', imageUrl: null, likes: '123', comments: '12',shares: '1',),
            // PostScreen(userImage: 'https://images.unsplash.com/photo-1598211686290-a8ef209d87c5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3334&q=80', username: 'Tony', caption: 'This is a facebook clone app developed only for learning purpose. Thank you.', timeAgo: '2 days', imageUrl: "https://images.unsplash.com/photo-1598259812920-0f409c9d3f14?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60", likes: '125', comments: '13',shares: '4',),
            // PostScreen(userImage: 'https://images.unsplash.com/photo-1528763380143-65b3ac89a3ff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60', username: 'Charles', caption: 'This is a facebook clone app developed only for learning purpose. Thank you.', timeAgo: '1 week', imageUrl: null, likes: '534', comments: '423',shares: '103',),
            // PostScreen(userImage: 'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60', username: 'Minh Pham', caption: 'This is a facebook clone app developed only for learning purpose. Thank you.', timeAgo: '2 week', imageUrl: "https://images.unsplash.com/photo-1558981033-f5e2ddd9c57e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60", likes: '23', comments: '13',shares: '1',),
            // PostScreen(userImage: 'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=80', username: 'Nicolos', caption: 'This is a facebook clone app developed only for learning purpose. Thank you.', timeAgo: '2 week', imageUrl: "https://images.unsplash.com/photo-1593642532781-03e79bf5bec2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60", likes: '21', comments: '20',shares: '23',),

          ],

        ),
      ),
    );
  }
}
