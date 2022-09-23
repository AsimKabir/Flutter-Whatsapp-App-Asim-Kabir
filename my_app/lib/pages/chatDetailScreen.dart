import 'package:flutter/material.dart';
import 'package:my_app/pages/packages/chatMessageModel.dart';


List<ChatMessage> messages = [
  ChatMessage(messageContent: "Hello asim", messageType: "receiver"),
  ChatMessage(messageContent: "Hi Asim kabir?", messageType: "receiver"),
  ChatMessage(messageContent: "what is doing boy", messageType: "sender"),
  ChatMessage(messageContent: "nothing time is passing", messageType: "receiver"),
  ChatMessage(messageContent: "very good larky", messageType: "sender"),
  ChatMessage(messageContent: "pori ummed", messageType: "sender"),
  ChatMessage(messageContent: "yahi umeed thi", messageType: "receiver"),
  ChatMessage(messageContent: "aur suna...", messageType: "sender"),
  ChatMessage(messageContent: "check kr bachi ustaad...", messageType: "receiver"),
  ChatMessage(messageContent: "very good larky", messageType: "sender"),

];

class ChatDetailScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          flexibleSpace: SafeArea(
            child: Container(
              padding: EdgeInsets.only(right: 16),
              child: Row(
                children: <Widget>[
                  IconButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back,color: Colors.black,),
                  ),
                  SizedBox(width: 2,),
                  CircleAvatar(
                    backgroundImage: NetworkImage("<https://randomuser.me/api/portraits/men/5.jpg>"),
                    maxRadius: 20,
                  ),
                  SizedBox(width: 12,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Hamza Farooq",style: TextStyle( fontSize: 16 ,fontWeight: FontWeight.w600),),
                        SizedBox(height: 6,),
                        Text("Online",style: TextStyle(color: Colors.grey.shade600, fontSize: 13),),
                      ],
                    ),
                  ),
                  Icon(Icons.video_call,color: Colors.black54,),
                  SizedBox(width: 8,),
                  Icon(Icons.call,color: Colors.black54,),
                  // SizedBox(width: 8,),
                  PopupMenuButton(

                      itemBuilder: (context) => [
                        const PopupMenuItem(
                          value: 1,
                          child: Text("View contact",style: TextStyle(fontSize: 14),),
                        ),
                        const PopupMenuItem(
                          value: 2,
                          child: Text("Media links, and docs",style: TextStyle(fontSize: 14),),
                        ),
                        const PopupMenuItem(
                          value: 3,
                          child: Text("Search",style: TextStyle(fontSize: 14),),
                        ),
                        const PopupMenuItem(
                          value: 4,
                          child: Text("Mute notification",style: TextStyle(fontSize: 14),),
                        ),
                        const PopupMenuItem(
                          value: 5,
                          child: Text("Disappearing messages",style: TextStyle(fontSize: 14),),
                        ),
                        const PopupMenuItem(
                          value: 6,
                          child: Text("Wallpaper", style: TextStyle(fontSize: 14),),
                        ),
                        const PopupMenuItem(
                          value: 7,
                          child: Text("More",style: TextStyle(fontSize: 14),),
                        ),
                      ])
                ],
              ),
            ),
          ),
        ),
        body: Stack(
    children: <Widget>[
      chatmessages(),
      writeMessageCard()
    ],
    ),
    );
  }
}

class chatmessages extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return(
        ListView.builder(
          itemCount: messages.length,
          shrinkWrap: true,
          padding: EdgeInsets.only(top: 10,bottom: 10),
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index){
            return Container(
              padding: EdgeInsets.only(left: 14,right: 14,top: 1,bottom: 10),
              child: Align(
                alignment: (messages[index].messageType == "receiver"?Alignment.topLeft:Alignment.topRight),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: (messages[index].messageType  == "receiver"?Colors.grey.shade200:Colors.blue[200]),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Text(messages[index].messageContent, style: TextStyle(fontSize: 15),),
                ),
              ),
            );
          },
        )
        // ListView.builder(
        //   itemCount: messages.length,
        //   shrinkWrap: true,
        //   padding: EdgeInsets.only(top: 10,bottom: 10),
        //   physics: NeverScrollableScrollPhysics(),
        //   itemBuilder: (context, index){
        //     return Container(
        //       padding: EdgeInsets.only(left: 16,right: 16,top: 10,bottom: 10),
        //       child: Text(messages[index].messageContent),
        //     );
        //   },
        // )
    );
  }
}

class writeMessageCard extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return(
        Align(
          alignment: Alignment.bottomLeft,
          child: Container(
            padding: EdgeInsets.only(left: 10,bottom: 10,top: 10),
            height: 60,
            width: double.infinity,
            color: Colors.white,
            child: Row(
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                  },
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Icon(Icons.add, color: Colors.white, size: 20, ),
                  ),
                ),
                SizedBox(width: 15,),
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Write message... ",
                        hintStyle: TextStyle(color: Colors.black54),
                        border: InputBorder.none
                    ),
                  ),
                ),
                SizedBox(width: 15,),
                FloatingActionButton(
                  onPressed: (){},
                  backgroundColor: Colors.blue,
                  elevation: 0,
                  child: const Icon(Icons.send,color: Colors.white,size: 18,),
                ),
              ],

            ),
          ),
        )
    );
  }
}