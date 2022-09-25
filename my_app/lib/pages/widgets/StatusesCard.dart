import 'package:flutter/material.dart';
import 'package:my_app/pages/chatDetailScreen.dart';


///////////////////////////// Recent update status card widget code ///////////////////////////
class RecentUpdatesStatusesCard extends StatefulWidget {
  String name;
  String imageUrl;
  String time;
  String recent_updates;
  String viewed_updates;

  RecentUpdatesStatusesCard(
      {required this.name, required this.imageUrl, required this.time, required this.recent_updates, required this.viewed_updates,});
  @override
  _RecentUpdatesStatusesCardState createState() => _RecentUpdatesStatusesCardState();
}

class _RecentUpdatesStatusesCardState extends State<RecentUpdatesStatusesCard> {
  @override
  Widget build(BuildContext context) {
    return Recent_updates_function_widget(widget, context);
  }
}

Recent_updates_function_widget(widget, context){
  return widget.recent_updates == "1"? Column(
    children: [
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ChatDetailScreen()),
          );
        },
        child: Container(
          padding: EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Row(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: NetworkImage(widget.imageUrl),
                      maxRadius: 30,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.transparent,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              widget.name,
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Row(
                              children: [
                                // IconButton(
                                //   icon: const Icon(Icons.arrow_upward_sharp,size: 20, color: Colors.green,),
                                //   tooltip: 'Increase volume by 10',
                                //   onPressed: () { },
                                // ),
                                Text(
                                  widget.time,
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Text(widget.time,style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal),),
              // IconButton(
              //   icon: const Icon(Icons.call, color: Colors.red,),
              //   tooltip: 'Increase volume by 10',
              //   onPressed: () { },
              // ),
            ],
          ),
        ),
      ),
    ],
  ):Container();
}

///////////////////////////// View update status card widget code ///////////////////////////
class ViewedUpdatesStatusesCard extends StatefulWidget {
  String name;
  String imageUrl;
  String time;
  String recent_updates;
  String viewed_updates;

  ViewedUpdatesStatusesCard(
      {required this.name, required this.imageUrl, required this.time, required this.recent_updates, required this.viewed_updates,});
  @override
  _ViewedUpdatesStatusesCardState createState() => _ViewedUpdatesStatusesCardState();
}

class _ViewedUpdatesStatusesCardState extends State<ViewedUpdatesStatusesCard> {
  @override
  Widget build(BuildContext context) {
    return Viewed_updates_function_widget(widget, context);
  }
}

Viewed_updates_function_widget(widget, context){
  return widget.viewed_updates == "1"? Column(
    children: [
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ChatDetailScreen()),
          );
        },
        child: Container(
          padding: EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Row(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: NetworkImage(widget.imageUrl),
                      maxRadius: 30,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.transparent,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              widget.name,
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Row(
                              children: [
                                // IconButton(
                                //   icon: const Icon(Icons.arrow_upward_sharp,size: 20, color: Colors.green,),
                                //   tooltip: 'Increase volume by 10',
                                //   onPressed: () { },
                                // ),
                                Text(
                                  widget.time,
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Text(widget.time,style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal),),
              // IconButton(
              //   icon: const Icon(Icons.call, color: Colors.red,),
              //   tooltip: 'Increase volume by 10',
              //   onPressed: () { },
              // ),
            ],
          ),
        ),
      ),
    ],
  ):Container();
}

/////////////////////   My Status Card    (Tap to add status update)    //////////////////////////////
class myStatusCard extends StatelessWidget {
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Container(
        //   // height: 20,
        //   width: double.infinity,
        //   child: Text(" hekkkoo   Recent updates", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
        //   color: Colors.lime,
        // ),
        (Container(
          padding: EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Row(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://www.tutorialkart.com/img/hummingbird.png"),
                      maxRadius: 30,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.transparent,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "My status",
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Row(
                              children: [
                                // IconButton(
                                //   icon: const Icon(Icons.arrow_upward_sharp,size: 20, color: Colors.green,),
                                //   tooltip: 'Increase volume by 10',
                                //   onPressed: () { },
                                // ),
                                Text(
                                  "type to add status update",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Text(widget.time,style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal),),
              // IconButton(
              //   icon: const Icon(Icons.call, color: Colors.red,),
              //   tooltip: 'Increase volume by 10',
              //   onPressed: () { },
              // ),
            ],
          ),
        )),
      ],
    );
  }
}
