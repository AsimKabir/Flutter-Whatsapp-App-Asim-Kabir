import 'package:flutter/material.dart';
import 'package:my_app/pages/chatDetailScreen.dart';

class StatusesCard extends StatefulWidget{
  String name;
  String imageUrl;
  String time;
  StatusesCard({required this.name,required this.imageUrl,required this.time});
  @override
  _StatusesCardState createState() => _StatusesCardState();
}

class _StatusesCardState extends State<StatusesCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ChatDetailScreen()),
        );
      },
      child: Container(
        padding: EdgeInsets.only(left: 16,right: 16,top: 10,bottom: 10),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: NetworkImage(widget.imageUrl),
                    maxRadius: 30,
                  ),
                  SizedBox(width: 16,),
                  Expanded(
                    child: Container(
                      color: Colors.transparent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(widget.name, style: TextStyle(fontSize: 16),),
                          SizedBox(height: 6,),
                          Row(
                            children: [
                              // IconButton(
                              //   icon: const Icon(Icons.arrow_upward_sharp,size: 20, color: Colors.green,),
                              //   tooltip: 'Increase volume by 10',
                              //   onPressed: () { },
                              // ),
                              Text(widget.time,style: TextStyle(fontSize: 13,color: Colors.grey.shade600,),),
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
    );
  }
}