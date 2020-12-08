import 'package:facebook/components/setting/info.dart';
import 'package:flutter/material.dart';

class Setting_Screen extends StatefulWidget {
  @override
  _Setting_ScreenState createState() => _Setting_ScreenState();
}

class _Setting_ScreenState extends State<Setting_Screen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Menu',style: TextStyle(color: Colors.black87,fontSize: 20,fontWeight: FontWeight.bold),),
              CircleAvatar(child: Icon(Icons.search_outlined,color: Colors.black87,),backgroundColor: Colors.white,)
            ],),
          ),
          Info('https://images.unsplash.com/photo-1503454537195-1dcabb73ffb9?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8a2lkfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60','Muhammad Jawad','See Your Profile',null),
          Divider(height: 1,color: Colors.grey,),
          Info('https://images.unsplash.com/photo-1503454537195-1dcabb73ffb9?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8a2lkfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60','Kids Company','9+ views','abc'),
          Info('https://images.unsplash.com/photo-1495727034151-8fdc73e332a8?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTB8fHNjaG9vbHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60','Beacon House','1+ message','abc'),
          Divider(height: 1,color: Colors.grey,),


        ],
      ),
    );
  }
}
