import 'package:facebook/components/setting/info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Setting_Screen extends StatefulWidget {
  @override
  _Setting_ScreenState createState() => _Setting_ScreenState();
}

class _Setting_ScreenState extends State<Setting_Screen> {
  List<String> imageList = [
    'https://images.unsplash.com/photo-1519308824948-e00cc00057d3?ixid=MXwxMjA3fDB8MHxzZWFyY2h8N3x8a2lkfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1519308824948-e00cc00057d3?ixid=MXwxMjA3fDB8MHxzZWFyY2h8N3x8a2lkfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1519308824948-e00cc00057d3?ixid=MXwxMjA3fDB8MHxzZWFyY2h8N3x8a2lkfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1519308824948-e00cc00057d3?ixid=MXwxMjA3fDB8MHxzZWFyY2h8N3x8a2lkfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1519308824948-e00cc00057d3?ixid=MXwxMjA3fDB8MHxzZWFyY2h8N3x8a2lkfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1519308824948-e00cc00057d3?ixid=MXwxMjA3fDB8MHxzZWFyY2h8N3x8a2lkfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
  ];

  // final List<Map<String, dynamic>> _kategori = [
  //   {'text': 'Flutter', 'msg': 'Flutter', 'icon': Icons.search},
  //   {'text': 'Laravel', 'msg': 'Flutter', 'icon': Icons.favorite},
  //   {'text': 'Vue.js', 'msg': 'Flutter', 'icon': Icons.home},
  //   {'text': 'Javascript', 'msg': 'Flutter', 'icon': Icons.play_arrow},
  //   {'text': 'PHP', 'msg': 'Flutter', 'icon': Icons.cloud},
  //   {'text': 'Java', 'msg': 'Flutter', 'icon': Icons.car_rental},
  //    {'text': 'PHP', 'msg': 'Flutter', 'icon': Icons.location_on},
  //    {'text': 'Java', 'msg': 'Flutter', 'icon': Icons.add_circle_outlined},
  // ];
  final List<Map<String, dynamic>> _kategori = [
    {'cat': 'Flutter', 'dog': 'Flutter', 'color': Colors.pink},
    {'cat': 'Laravel', 'color': Colors.blue},
    {'cat': 'Vue.js', 'color': Colors.amber},
    {'cat': 'Javascript', 'color': Colors.yellow},
    {'cat': 'PHP', 'color': Colors.red},
    {'cat': 'Java', 'color': Colors.black},
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Menu',
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                CircleAvatar(
                  child: Icon(
                    Icons.search_outlined,
                    color: Colors.black87,
                  ),
                  backgroundColor: Colors.white,
                )
              ],
            ),
          ),
          Info(
              'https://images.unsplash.com/photo-1503454537195-1dcabb73ffb9?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8a2lkfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
              'Muhammad Jawad',
              'See Your Profile',
              null),
          Divider(
            height: 1,
            color: Colors.grey,
          ),
          Info(
              'https://images.unsplash.com/photo-1502466650593-b65a2c690da0?ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8a2lkfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
              'Kids Company',
              '9+ views',
              'abc'),
          Info(
              'https://images.unsplash.com/photo-1495727034151-8fdc73e332a8?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTB8fHNjaG9vbHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
              'Beacon House',
              '1+ message',
              'abc'),
          Info(
              'https://images.unsplash.com/photo-1605325811484-1d8f11623083?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDN8dG93SlpGc2twR2d8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
              'Phtography',
              '3+ Notifications',
              'abc'),
          Divider(
            height: 1,
            color: Colors.grey,
          ),
          Container(
            margin: EdgeInsets.all(12),
            child: new StaggeredGridView.countBuilder(
                shrinkWrap: true,
                primary: false,
                crossAxisCount: 2,
                itemCount: _kategori.length,
                itemBuilder: (context, index) {
                  return Container(
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        // child: FadeInImage.assetNetwork(
                        //   placeholder: 'waiting.png',
                        //   image: imageList [index],
                        //   fit: BoxFit.cover,
                        // ),
                        child: Card(
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Icon(
                                  Icons.favorite,
                                  color: Colors.redAccent,
                                ),
                                Text(
                                  'Covid',
                                  style: TextStyle(color: Colors.black),
                                ),
                                Text(
                                  'Information center',
                                  style: TextStyle(color: Colors.black),
                                )
                              ],
                            ),
                          ),
                        ),
                        // child: Card(
                        //   child: Column(
                        //     children: <Widget>[
                        //       Image.network(
                        //           'https://images.unsplash.com/photo-1529672425113-d3035c7f4837?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTJ8fGtpZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',fit: BoxFit.cover,height: 80,),
                        //     ],
                        //   ),
                        //   ),
                      ));
                },
                staggeredTileBuilder: (index) {
                  return new StaggeredTile.count(1, index.isEven ? 0.6 : 0.5);
                }),
          ),
        ],
      ),
    );
  }
}

final List<Map<String, dynamic>> _kategori = [
  {'cat': 'Flutter', 'color': Colors.pink},
  {'cat': 'Laravel', 'color': Colors.blue},
  {'cat': 'Vue.js', 'color': Colors.amber},
  {'cat': 'Javascript', 'color': Colors.yellow},
  {'cat': 'PHP', 'color': Colors.red},
  {'cat': 'Java', 'color': Colors.black},
  {'cat': 'Flutter', 'color': Colors.pink},
  {'cat': 'Laravel', 'color': Colors.blue},
  {'cat': 'Vue.js', 'color': Colors.amber},
  {'cat': 'Javascript', 'color': Colors.yellow},
  {'cat': 'PHP', 'color': Colors.red},
  {'cat': 'Java', 'color': Colors.black},
];
