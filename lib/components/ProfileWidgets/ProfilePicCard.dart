import 'package:facebook/components/HomeScreenWidgets/Divider.dart';
import 'package:facebook/components/HomeScreenWidgets/PostScreen.dart';
import 'package:facebook/components/HomeScreenWidgets/PostWriteWidget.dart';
import 'package:facebook/components/model/const.dart';
import 'package:facebook/components/model/newfeeds.dart';
import 'package:facebook/components/model/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePicCard extends StatefulWidget {
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
                          color: Colors.transparent,
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
                            backgroundImage:
                                NetworkImage(Const.list_userfeed[0].user_image),
                            // child: Image.network(Const.list_userfeed[0].user_image,
                            //     width: 150,
                            //     fit: BoxFit.cover),
                            radius: 73,
                            backgroundColor: Colors.transparent,
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
                Const.list_userfeed[0].name,
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
                  crossAxisCount: 3,
                  mainAxisSpacing: 4.0,
                  crossAxisSpacing: 4.0,
                  // scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  primary: false,
                  // Generate 100 widgets that display their index in the List.
                  children: List.generate(Const.user_list.length, (index) {
                    return Container(
                      // padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(
                              begin: Alignment.bottomRight,
                              colors: [
                                Colors.black.withOpacity(.9),
                                Colors.black.withOpacity(.1),
                              ])),
                      child: Container(
                        // margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image:
                                  NetworkImage(Const.user_list[index].img_url),
                              fit: BoxFit.cover),
                        ),
                      ),
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
          // ListView.builder(
          //     physics: ScrollPhysics(),
          //     shrinkWrap: true,
          //     scrollDirection: Axis.horizontal,
          //     itemCount: Const.list_userfeed.length,
          //     itemBuilder: (BuildContext context, int index) => FeedCard(
          //       total_share: Const.list_userfeed[index].total_share,
          //       total_likes: Const.list_userfeed[index].total_likes,
          //       date: Const.list_userfeed[index].date,
          //       user_image: Const.list_userfeed[index].user_image,
          //       total_comments: Const.list_userfeed[index].total_comments,
          //       text: Const.list_userfeed[index].text,
          //       name: Const.list_userfeed[index].name,
          //       img_url: Const.list_userfeed[index].img_url,
          //     )),
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

          Container(
            child: ListView.builder(
              itemCount: Const.list_userfeed.length,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return PostScreen(
                  imageUrl: Const.list_userfeed[index].img_url,
                  username: Const.list_userfeed[index].name,
                  caption: Const.list_userfeed[index].text,
                  comments: Const.list_userfeed[index].total_comments,
                  likes: Const.list_userfeed[index].total_likes,
                  userImage: Const.list_userfeed[index].user_image,
                  shares: Const.list_userfeed[index].total_share,
                  timeAgo: Const.list_userfeed[index].date,
                );
                // PostScreen(userImage: 'https://images.unsplash.com/photo-1544724107-6d5c4caaff30?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60', username: 'Charles', caption: 'This is a facebook clone app developed only for learning purpose. Thank you.', timeAgo: '3hrs', imageUrl: null, likes: '32', comments: '10',shares: '9',);
              },
            ),
          )
        ]),
      ),
    );
  }
}
