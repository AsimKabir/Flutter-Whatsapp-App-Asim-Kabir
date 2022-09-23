import 'package:flutter/material.dart';
import 'package:my_app/pages/Calls.dart';
import 'package:my_app/pages/Chats.dart';
import 'package:my_app/pages/Statuses.dart';

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

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Builder(builder: (BuildContext context) {
        final TabController tabController = DefaultTabController.of(context)!;
        tabController.addListener(() {
          if (!tabController.indexIsChanging) {
            // Your code goes here.
            // To get index of current tab use tabController.index
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
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              // Add your onPressed code here!
            },
            backgroundColor: Color(0xCA21DF03),
            child: const Icon(Icons.chat),
          ),
        );
      }),
    );
  }
}
