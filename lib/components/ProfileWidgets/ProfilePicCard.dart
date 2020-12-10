import 'package:facebook/components/HomeScreenWidgets/Divider.dart';
import 'package:facebook/components/HomeScreenWidgets/FeedsCard.dart';
import 'package:facebook/components/HomeScreenWidgets/NewFeeds.dart';
import 'package:facebook/components/HomeScreenWidgets/PostWriteWidget.dart';
import 'package:facebook/components/model/newfeeds.dart';
import 'package:facebook/components/model/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePicCard extends StatefulWidget {
  List<feedData> list = <feedData>[
    feedData(
        date: 'today at 3:50pm',
        name: 'Alex',
        text:
            'In every walk in with nature one receives far more than he seeks. John Muir',
        total_comments: '19 comments',
        total_likes: '19 likes',
        total_share: '12 share',
        img_url:
            'https://images.unsplash.com/photo-1556125574-d7f27ec36a06?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8ZXZlbnRzfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
        user_image:
            'https://images.unsplash.com/photo-1602024242516-fbc9d4fda4b6?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDN8fG1lbnN8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
    feedData(
        date: 'today at 3:50pm',
        name: 'Alex',
        text:
            'In every walk in with nature one receives far more than he seeks. John Muir',
        total_comments: '19 comments',
        total_likes: '19 likes',
        total_share: '12 share',
        img_url:
            'https://images.unsplash.com/photo-1585251173119-90ab21d70067?ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8ZXZlbnRzfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
        user_image:
            'https://images.unsplash.com/photo-1602024242516-fbc9d4fda4b6?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDN8fG1lbnN8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
    feedData(
        date: 'today at 3:50pm',
        name: 'Alex',
        text:
            'In every walk in with nature one receives far more than he seeks. John Muir',
        total_comments: '19 comments',
        total_likes: '19 likes',
        total_share: '12 share',
        img_url:
            'https://images.unsplash.com/photo-1580600301356-2062459b0eb5?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Nnx8ZXZlbnRzfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
        user_image:
            'https://images.unsplash.com/photo-1602024242516-fbc9d4fda4b6?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDN8fG1lbnN8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
    feedData(
        date: 'today at 3:50pm',
        name: 'Alex',
        text:
            'In every walk in with nature one receives far more than he seeks. John Muir',
        total_comments: '19 comments',
        total_likes: '19 likes',
        total_share: '12 share',
        img_url:
            'https://images.unsplash.com/flagged/photo-1570183075251-42dfe72c138e?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTJ8fGV2ZW50c3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
        user_image:
            'https://images.unsplash.com/photo-1602024242516-fbc9d4fda4b6?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDN8fG1lbnN8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
    feedData(
        date: 'today at 3:50pm',
        name: 'Alex',
        text:
            'In every walk in with nature one receives far more than he seeks. John Muir',
        total_comments: '19 comments',
        total_likes: '19 likes',
        total_share: '12 share',
        img_url:
            'https://images.unsplash.com/photo-1571215682742-561893604b40?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTZ8fGV2ZW50c3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
        user_image:
            'https://images.unsplash.com/photo-1602024242516-fbc9d4fda4b6?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDN8fG1lbnN8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
    feedData(
        date: 'today at 3:50pm',
        name: 'Alex',
        text:
            'In every walk in with nature one receives far more than he seeks. John Muir',
        total_comments: '19 comments',
        total_likes: '19 likes',
        total_share: '12 share',
        img_url:
            'https://images.unsplash.com/photo-1571348265141-e45fb052def4?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjB8fGV2ZW50c3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
        user_image:
            'https://images.unsplash.com/photo-1602024242516-fbc9d4fda4b6?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDN8fG1lbnN8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
    feedData(
        date: 'today at 3:50pm',
        name: 'Alex',
        text:
            'In every walk in with nature one receives far more than he seeks. John Muir',
        total_comments: '19 comments',
        total_likes: '19 likes',
        total_share: '12 share',
        img_url:
            'https://images.unsplash.com/photo-1571348265141-e45fb052def4?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjB8fGV2ZW50c3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
        user_image:
            'https://images.unsplash.com/photo-1602024242516-fbc9d4fda4b6?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDN8fG1lbnN8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
    feedData(
        date: 'today at 3:50pm',
        name: 'Alex',
        text:
            'In every walk in with nature one receives far more than he seeks. John Muir',
        total_comments: '19 comments',
        total_likes: '19 likes',
        total_share: '12 share',
        img_url:
            'https://images.unsplash.com/photo-1573525974207-d89fdb28351a?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mjl8fGV2ZW50c3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
        user_image:
            'https://images.unsplash.com/photo-1602024242516-fbc9d4fda4b6?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDN8fG1lbnN8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
    feedData(
        date: 'today at 3:50pm',
        name: 'Alex',
        text:
            'In every walk in with nature one receives far more than he seeks. John Muir',
        total_comments: '19 comments',
        total_likes: '19 likes',
        total_share: '12 share',
        img_url: '',
        user_image:
            'https://images.unsplash.com/photo-1602024242516-fbc9d4fda4b6?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDN8fG1lbnN8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
    feedData(
        date: 'today at 3:50pm',
        name: 'Alex',
        text:
            'In every walk in with nature one receives far more than he seeks. John Muir',
        total_comments: '19 comments',
        total_likes: '19 likes',
        total_share: '12 share',
        img_url:
            'https://images.unsplash.com/photo-1578364250106-dffb076c2dde?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MzV8fGV2ZW50c3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
        user_image:
            'https://images.unsplash.com/photo-1602024242516-fbc9d4fda4b6?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDN8fG1lbnN8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
  ];

  @override
  _ProfilePicCardState createState() => _ProfilePicCardState();
}

class _ProfilePicCardState extends State<ProfilePicCard> {
  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: <Widget>[
          Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Column(
                    children: [
                      Stack(children: <Widget>[
                        Container(
                          width: _size.width,
                          height: 200,
                          color: Colors.amber,
                          child: Image.network(
                            'https://images.unsplash.com/photo-1606990972809-f6dff5d17367?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDl8NnNNVmpUTFNrZVF8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
                            fit: BoxFit.cover,
                          ),
                        ),
                        new Positioned(
                          right: 10,
                          bottom: 20,
                          child: CircleAvatar(
                            backgroundColor: Colors.grey[350],
                            radius: 20,
                            child: Icon(
                              Icons.camera_alt_rounded,
                              color: Colors.black87,
                            ),
                          ),
                        )
                      ]),
                      Container(
                        height: 100,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  new Positioned(
                    child: Stack(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 80,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            child: ClipOval(
                              child: Image.network(
                                  'https://images.unsplash.com/photo-1492446845049-9c50cc313f00?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTB8fG1lbnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
                                  width: 150,
                                  fit: BoxFit.cover),
                            ),
                            radius: 73,
                          ),
                        ),
                        new Positioned(
                          child: CircleAvatar(
                            backgroundColor: Colors.grey[350],
                            radius: 20,
                            child: Icon(
                              Icons.camera_alt_rounded,
                              color: Colors.black87,
                            ),
                          ),
                          right: 10,
                          bottom: 10,
                        )
                      ],
                    ),
                    top: 130,
                    left: (_size.width / 2) - 80,
                  ),
                ],
              ),
              Text(
                'Muhammad Jawad',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Flexible(
                      flex: 4,
                      child: FlatButton.icon(
                        minWidth: 350,
                        textColor: Colors.white,
                        color: Colors.blue[900],
                        icon: Icon(
                          Icons.add_circle_outlined,
                          color: Colors.white,
                        ),
                        //`Icon` to display
                        label: Text('Add to Story'),
                        //`Text` to display
                        onPressed: () {
                          //Code to execute when Floating Action Button is clicked
                          //...
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: FlatButton(
                        onPressed: () {},
                        child: Text(
                          '...',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      children: <Widget>[
                        Icon(Icons.home),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Live in Lahore,Pakistan',
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.location_on),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'From Lahore,Pakistan',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.more_horiz),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'See Your About Info',
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Container(
              width: _size.width,
              child: Text(
                'Edit Public Details',
                style: TextStyle(
                    color: Color(0xFF1f76d3), fontWeight: FontWeight.bold),
              ),
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              color: Color(0xFFe7f3ff),
            ),
          ),
          Divider(
            color: Colors.grey,
            thickness: 1,
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Firends',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20),
                    ),
                    Text(
                      'Find Firends',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[800],
                          fontSize: 20),
                    )
                  ],
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '274 Firends',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    )),
                // GridView.count(
                //   padding: EdgeInsets.only(top: 10, bottom: 5),
                //   // Create a grid with 2 columns. If you change the scrollDirection to
                //   // horizontal, this produces 2 rows.
                //   crossAxisCount: 3,
                //   crossAxisSpacing: 4.0,
                //   // scrollDirection: Axis.vertical,
                //   shrinkWrap: true,
                //   primary: false,
                //   // Generate 100 widgets that display their index in the List.
                //   children: List.generate(6, (index) {
                //     return Card(
                //       child: Column(
                //         children: [
                //           Flexible(
                //               child: Image.network(
                //             'https://images.unsplash.com/photo-1606214443822-7997abf29104?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDF8fG1lbnN8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
                //             width: 200,
                //             height: 250,
                //             fit: BoxFit.cover,
                //           )),
                //           Padding(
                //             padding:
                //                 const EdgeInsets.only(top: 2.0, bottom: 2.0),
                //             child: Text(
                //               'Zuraiz Atif Ansari',
                //               softWrap: true,
                //             ),
                //           )
                //         ],
                //       ),
                //     );
                //   }),
                // ),
                GridView.count(
                  padding: EdgeInsets.only(top: 10, bottom: 5),
                  // Create a grid with 2 columns. If you change the scrollDirection to
                  // horizontal, this produces 2 rows.
                  crossAxisCount: 3,
                  crossAxisSpacing: 4.0,
                  // scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  primary: false,
                  // Generate 100 widgets that display their index in the List.
                  children: List.generate(6, (index) {
                    return Card(
                      child: Flexible(
                          child: Image.network(
                            'https://images.unsplash.com/photo-1606214443822-7997abf29104?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDF8fG1lbnN8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
                            width: 200,
                            height: 250,
                            fit: BoxFit.cover,
                          )),
                    );
                  }),
                ),
                Container(
                  width: _size.width,
                  child: Text(
                    'See All Friends',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  color: Colors.grey[300],
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                ),
              ],
            ),
          ),

          Divider_Widget(),
          PostWriteWidget(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Row(
                children: <Widget>[
                  FlatButton.icon(
                    onPressed: null,
                    icon: Icon(
                      Icons.photo_album,
                      color: Colors.black87,
                    ),
                    label: Text(
                      'Photos',
                      style: TextStyle(color: Colors.black87),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.grey)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  FlatButton.icon(
                    onPressed: null,
                    icon: Icon(
                      Icons.cloud_queue_rounded,
                      color: Colors.black87,
                    ),
                    label: Text(
                      'Did You Know',
                      style: TextStyle(color: Colors.black87),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.grey)),
                  )
                ],
              ),
            ),
          ),
          Divider_Widget(),
          NewFeeds()
        ]),
      ),
    );
  }
}
