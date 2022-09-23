
import 'package:flutter/material.dart';
import 'package:my_app/pages/packages/StatusesUserModel.dart';
import 'package:my_app/pages/widgets/CallsCard.dart';

class Statuses extends StatelessWidget {
  List<StatusesUserModel> chatUsers = [
    StatusesUserModel(name: "Asim Kabir",
        // messageText: "G janab kya haal ha",
        imageURL: "https://scontent.flhe3-1.fna.fbcdn.net/v/t39.30808-1/274937101_2382313441905987_2244237981808491178_n.jpg?stp=c54.28.1363.1364a_dst-jpg_s160x160&_nc_cat=107&ccb=1-7&_nc_sid=dbb9e7&_nc_ohc=AC8qH5rariAAX9cMdVQ&_nc_ht=scontent.flhe3-1.fna&oh=00_AT-9uoMNACvdkG3QNMmkDgqWLOaxaWaLqK7xcoX2ciTS2A&oe=6331ECCB",
        time: "25 minutes ago"),
    StatusesUserModel(name: "Hamza Farooq",
        // messageText: "That's Great",
        imageURL: "https://scontent.flhe3-1.fna.fbcdn.net/v/t39.30808-1/274937101_2382313441905987_2244237981808491178_n.jpg?stp=c54.28.1363.1364a_dst-jpg_s160x160&_nc_cat=107&ccb=1-7&_nc_sid=dbb9e7&_nc_ohc=AC8qH5rariAAX9cMdVQ&_nc_ht=scontent.flhe3-1.fna&oh=00_AT-9uoMNACvdkG3QNMmkDgqWLOaxaWaLqK7xcoX2ciTS2A&oe=6331ECCB",
        time: "September 21, 8:34 PM"),
    StatusesUserModel(name: "Muhammad Ibrahim",
        // messageText: "Hey where are you?",
        imageURL: "https://scontent.flhe3-1.fna.fbcdn.net/v/t39.30808-1/274937101_2382313441905987_2244237981808491178_n.jpg?stp=c54.28.1363.1364a_dst-jpg_s160x160&_nc_cat=107&ccb=1-7&_nc_sid=dbb9e7&_nc_ohc=AC8qH5rariAAX9cMdVQ&_nc_ht=scontent.flhe3-1.fna&oh=00_AT-9uoMNACvdkG3QNMmkDgqWLOaxaWaLqK7xcoX2ciTS2A&oe=6331ECCB",
        time: "45 minutes ago"),
    StatusesUserModel(name: "Parveen Akhtar",
        // messageText: "Busy! Call me in 20 mins",
        imageURL: "https://scontent.flhe3-1.fna.fbcdn.net/v/t39.30808-1/274937101_2382313441905987_2244237981808491178_n.jpg?stp=c54.28.1363.1364a_dst-jpg_s160x160&_nc_cat=107&ccb=1-7&_nc_sid=dbb9e7&_nc_ohc=AC8qH5rariAAX9cMdVQ&_nc_ht=scontent.flhe3-1.fna&oh=00_AT-9uoMNACvdkG3QNMmkDgqWLOaxaWaLqK7xcoX2ciTS2A&oe=6331ECCB",
        time: "August 16, 9:45 AM"),
    StatusesUserModel(name: "Kabeer Ahmed",
        // messageText: "Thankyou, It's awesome",
        imageURL: "https://scontent.flhe3-1.fna.fbcdn.net/v/t39.30808-1/274937101_2382313441905987_2244237981808491178_n.jpg?stp=c54.28.1363.1364a_dst-jpg_s160x160&_nc_cat=107&ccb=1-7&_nc_sid=dbb9e7&_nc_ohc=AC8qH5rariAAX9cMdVQ&_nc_ht=scontent.flhe3-1.fna&oh=00_AT-9uoMNACvdkG3QNMmkDgqWLOaxaWaLqK7xcoX2ciTS2A&oe=6331ECCB",
        time: "September 21, 8:34 PM"),
    StatusesUserModel(name: "Arfa Kabeer",
        // messageText: "will update you in evening",
        imageURL: "https://scontent.flhe3-1.fna.fbcdn.net/v/t39.30808-1/274937101_2382313441905987_2244237981808491178_n.jpg?stp=c54.28.1363.1364a_dst-jpg_s160x160&_nc_cat=107&ccb=1-7&_nc_sid=dbb9e7&_nc_ohc=AC8qH5rariAAX9cMdVQ&_nc_ht=scontent.flhe3-1.fna&oh=00_AT-9uoMNACvdkG3QNMmkDgqWLOaxaWaLqK7xcoX2ciTS2A&oe=6331ECCB",
        time: "25 minutes ago"),
    StatusesUserModel(name: "Arslan Kabeer",
        // messageText: "Can you please share the file?",
        imageURL: "https://scontent.flhe3-1.fna.fbcdn.net/v/t39.30808-1/274937101_2382313441905987_2244237981808491178_n.jpg?stp=c54.28.1363.1364a_dst-jpg_s160x160&_nc_cat=107&ccb=1-7&_nc_sid=dbb9e7&_nc_ohc=AC8qH5rariAAX9cMdVQ&_nc_ht=scontent.flhe3-1.fna&oh=00_AT-9uoMNACvdkG3QNMmkDgqWLOaxaWaLqK7xcoX2ciTS2A&oe=6331ECCB",
        time: "August 16, 9:45 AM"),
    StatusesUserModel(name: "Usman Kabeer",
        // messageText: "How are you?",
        imageURL: "https://scontent.flhe3-1.fna.fbcdn.net/v/t39.30808-1/274937101_2382313441905987_2244237981808491178_n.jpg?stp=c54.28.1363.1364a_dst-jpg_s160x160&_nc_cat=107&ccb=1-7&_nc_sid=dbb9e7&_nc_ohc=AC8qH5rariAAX9cMdVQ&_nc_ht=scontent.flhe3-1.fna&oh=00_AT-9uoMNACvdkG3QNMmkDgqWLOaxaWaLqK7xcoX2ciTS2A&oe=6331ECCB",
        time: "August 16, 9:45 AM"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chatUsers.length,
      shrinkWrap: true,
      padding: EdgeInsets.only(top: 16),
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index){
        return CallsCard(
          name: chatUsers[index].name,
          // messageText: chatUsers[index].messageText,
          imageUrl: chatUsers[index].imageURL,
          time: chatUsers[index].time,
          // isMessageRead: (index == 0 || index == 3)?true:false,
        );
      },
    );
  }
}
