import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class NotificationWidget extends StatefulWidget {
  String img_url, not_heading, not_txt, time;

  NotificationWidget(this.img_url, this.not_heading, this.not_txt, this.time);

  @override
  _NotificationWidgetState createState() => _NotificationWidgetState();
}

class _NotificationWidgetState extends State<NotificationWidget> {
  bool _issheet = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Flexible(
        child: Container(
          child: Row(
            children: <Widget>[
              CircleAvatar(
                backgroundImage: NetworkImage(widget.img_url),
                radius: 30,
              ),
              Expanded(
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 2, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(widget.not_heading,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold)),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 5, 0, 2),
                          child: Container(
                            width: 260,
                            child: Text(
                              widget.not_txt,
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 48, 48, 54)),
                            ),
                          ),
                        ),
                        Text(
                          widget.time + " ago",
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                child: Icon(
                  Icons.more_horiz,
                ),
                onTap: () {
                  showModalBottomSheet(
                      backgroundColor: Colors.transparent,
                      barrierColor: Colors.grey.withOpacity(0.5),
                      elevation: 10,
                      context: context,
                      builder: (context) => bottomSheet());
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget bottomSheet() {
    return SingleChildScrollView(
      child: Flexible(
        child: Card(
          color: Colors.white,
          // elevation: 10,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          child: Container(
            color: Colors.transparent,
            height: MediaQuery.of(context).size.height * 0.4,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Center(
                    child: CircleAvatar(
                      backgroundColor: Colors.amberAccent,
                      radius: 30,
                      backgroundImage: NetworkImage(widget.img_url),
                    ),
                  ),
                  Center(child: Padding(
                    padding: const EdgeInsets.only(left:8.0,right: 8.0,top: 8.0),
                    child: Text(widget.not_txt,style: TextStyle(fontWeight: FontWeight.w600),),
                  )),

                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.grey[400],
                          child: Icon(
                            Icons.delete,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Text(
                            'Remove this notification',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  //2nd
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.grey[400],
                          child: Icon(
                            Icons.delete_forever_rounded,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Text(
                            'Turn off notification about nw likes on Page Post for this Page',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  //  3rd
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.grey[400],
                          child: Icon(
                            Icons.delete_forever,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            child: Text(
                          'Turn off all notifications from this page',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        )),
                      ],
                    ),
                  ),
                  //4th
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.grey[400],
                          child: Icon(
                            Icons.warning_amber_outlined,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Report issue to Notification Team',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
