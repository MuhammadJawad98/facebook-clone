import 'package:facebook/components/NotificationsWidgets/NotificationCard.dart';
import 'package:facebook/components/model/NotificationModel.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  // String img_url, not_heading, not_txt, time;
  //
  // NotificationScreen(this.img_url, this.not_heading, this.not_txt, this.time);

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  final List<NotificationModel> model= <NotificationModel>[
   NotificationModel('https://images.unsplash.com/photo-1503443207922-dff7d543fd0e?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8bWVufGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60', 'John', 'Accepts your Friend request', '5 mints'),
    NotificationModel('https://images.unsplash.com/photo-1492562080023-ab3db95bfbce?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OXx8bWVufGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60', 'Carlo', 'Send you a friend request', '10 mints'),
    NotificationModel('https://images.unsplash.com/photo-1515664069236-68a74c369d97?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTV8fG1lbnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60', 'Jacky', 'likes your 5 photos', '15 mints'),
    NotificationModel('https://images.unsplash.com/photo-1494607239400-ff147da48308?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mjh8fG1lbnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60', 'Hunny', 'comment on your post', '20 mints'),
    NotificationModel('https://images.unsplash.com/photo-1521341057461-6eb5f40b07ab?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MzJ8fG1lbnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60', 'Albert', 'enjoyinh the live event', '25 mints'),
    NotificationModel('https://images.unsplash.com/photo-1541438633571-9578b70ae5bf?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OHx8ZmVtYWxlc3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60', 'Emily', 'married with carlo', '30 mints'),
    NotificationModel('https://images.unsplash.com/photo-1482498081626-c0d36d9c5ab9?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTF8fGZlbWFsZXN8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60', 'Alsa', 'going to vacation', '35 mints'),
    NotificationModel('https://images.unsplash.com/photo-1481223014211-199b3e8f0002?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjN8fGZlbWFsZXN8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60', 'cawala', 'Today her birthday wish her', '1 hour'),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: model.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: EdgeInsets.all(2),
                child: NotificationWidget(model[index].img_url,model[index].not_heading,model[index].not_txt,model[index].time),
              );
            }));
  }
}
