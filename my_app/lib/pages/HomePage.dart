import 'package:flutter/material.dart';
import 'package:my_app/pages/Calls.dart';
import 'package:my_app/pages/Chats.dart';
import 'package:my_app/pages/Statuses.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';
import 'dart:io';
import 'package:camera/camera.dart';
import 'login.dart';


const List<Tab> tabs = <Tab>[
  // Tab(text: 'CAMERA'),
  Tab(
    icon: Icon(Icons.camera_alt_rounded),
    // text: "CAMERA",
  ),
  Tab(text: 'CHATS'),
  Tab(text: 'STATUS'),
  Tab(text: 'CALLS'),
];
int insexOfTab = 0;

_makingPhoneCall() async {
  var url = Uri.parse("tel:9776765434");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Builder(builder: (BuildContext context) {
        final TabController tabController = DefaultTabController.of(context)!;
        tabController.addListener(() {
          setState(() {
            // _selectedIndex = _controller.index;
          });
          if (!tabController.indexIsChanging) {
            // Your code goes here.
            // To get index of current tab use tabController.index
            print(tabController.index);
            insexOfTab = tabController.index;
          }
        });
        return Scaffold(
            appBar: AppBar(
              title: const Text("Whatsapp"),
              leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search),
                ),
                PopupMenuButton(
                    itemBuilder: (context) => [
                          const PopupMenuItem(
                            value: 1,
                            child: Text("New group"),
                          ),
                          const PopupMenuItem(
                            value: 2,
                            child: Text("New broadcast"),
                          ),
                          const PopupMenuItem(
                            value: 3,
                            child: Text("Linked Devices"),
                          ),
                          const PopupMenuItem(
                            value: 4,
                            child: Text("Starrted messages"),
                          ),
                          const PopupMenuItem(
                            value: 5,
                            child: Text("Settings"),
                          ),
                        ])
              ],
              bottom: const TabBar(
                tabs: tabs,
              ),
            ),
            body: TabBarView(
              children: tabs.map((Tab tab) {
                return ListView(
                  children: [
                    if ('${tab.text}' == 'null') ...[
                      Text("This is the CAMERA module"),
                    ],
                    if ('${tab.text}' == 'CHATS') ...[
                      // Text("This is the Chats module"),
                      Chats(),
                    ],
                    if ('${tab.text}' == 'STATUS') ...[
                      // Text("This is the CAMERA module"),
                      Statuses(),
                    ],
                    if ('${tab.text}' == 'CALLS') ...[
                      // Text("This is the CAMERA module"),
                      Calls(),
                    ],
                  ],
                );
              }).toList(),
            ),
            floatingActionButton: FloatingButtons_conditional()
                // insexOfTab == 0 ? Container() : ComplicatedFn()
        );
      }),
    );
  }
}

FloatingButtons_conditional(){
  if(insexOfTab == 0){
   return(
       Container()
   );
  }else if(insexOfTab == 1){
    return(
        FloatingActionButton(
            onPressed: () {
              // Add your onPressed code here!
            },
            backgroundColor: Color(0xCA21DF04),
            child: Icon(Icons.message),)
    );
  }else if(insexOfTab == 2){
    return(Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: (){},
          // backgroundColor: Color(190),
          child: Icon(Icons.create_rounded),
        ),
        SizedBox(height: 15,),
        FloatingActionButton(
          onPressed: () {
            // Add your onPressed code here!
          },
          backgroundColor: Color(0xCA21DF04),
          child: Icon(Icons.camera_alt_rounded),),
      ],
    ));

  }else if(insexOfTab == 3){
    return(
        FloatingActionButton(
          onPressed: () {
            // Add your onPressed code here!
            _makingPhoneCall;
          },
          backgroundColor: Color(0xCA21DF04),
          child: Icon(Icons.call),)
    );

  }


}
