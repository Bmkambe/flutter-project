
import 'package:flutter/material.dart';
import 'package:trialproject/custom_list_tile.dart';
import 'package:trialproject/tabs.dart';

import 'stories/stories_page_controller.dart';


class SimpleListViewPage extends StatelessWidget {
  const SimpleListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('List view'),
        actions: [
          Icon(Icons.list),
         IconButton(onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (_) => StoriesPageController()  ));
          
          Navigator.of(context).push(MaterialPageRoute(builder: (_) => Tabs() ));
         }, 
         
         icon: Icon(Icons. more))
        ],

      ),
      body:ListView(
        children: [
          ListTile(
            leading: Icon(Icons.person,color: Colors.blue,),
            title: Text('Bertha Chimwenga',style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text('Welcome'),
            
            trailing: Text('5'),
          ),
           ListTile(
            leading: Icon(Icons.person,color: Colors.amber,),
            title: Text('Chao Righa'),
            subtitle: Text('Hello there'),
          ),
          
           ListTile(
            onTap: () {
              //function here
            },
            onLongPress: () {
              
            },
            leading: Icon(Icons.person_2),
            title: Text('Young Gavi '),
            subtitle: Text('Hello there'),
          ),
          
           ListTile(
            leading: Icon(Icons.person),
            title: Text('About'),
            subtitle: Text('Know more'),
            trailing: Icon(Icons.add_ic_call_outlined),
            onTap: () {
              print("tapped");
            },
          ),
          CustomListTile(
            leading: Icons.flaky,
            title: 'Bertha Custome Tile',
            subtitle: 'Hello there custom tile ',
            badgelabel: Text('messages'),
            badgechild: Text('5'),
            onTap: () {
              print("tapped");
            },
          ),
           CustomListTile(
            leading: Icons.book,
            title: 'My learning custom tile',
            subtitle: 'Hello there custom tile learning',
            badgelabel: Text('follow me'),
            badgechild: Text('3'),
            onTap: () {
              print("tapped");
            },
          ),
           CustomListTile(
            leading: Icons.laptop,
            title: ' Widgets custom tile',
            subtitle: 'Lets engage and learn',
            badgelabel: FlutterLogo(),
            badgechild: Text('6'),
            onTap: () {
              print("tapped");
            },
          )
         
        ],
      ) ,

    );
  }
}