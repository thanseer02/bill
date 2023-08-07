import 'package:flutter/material.dart';

import 'add_item.dart';
class data extends StatefulWidget {
  const data({super.key});

  @override
  State<data> createState() => _dataState();
}

class _dataState extends State<data> {
  static const menuItems=<String>[
    'Edit',
    'Delete',
  ];
  final List<PopupMenuItem<String>>_popUpMenuItem=menuItems
      .map((String value) => PopupMenuItem<String>(
    value: value,
    child: Text(value),
  )).toList();
  late String btn;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:
      ListView.separated(
          itemBuilder: (context,index){
            return ListTile(
              leading: PopupMenuButton<String>(
                onSelected: (String newValue){
                  btn=newValue;
                  if (btn =='edit') {
                    Navigator.push(context, MaterialPageRoute(builder: (btn)=>add_item()));

                  }
                  else if (btn=='delete') {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Delete')));

                  }  
                  // Navigator.push(context, MaterialPageRoute(builder: (btn)=>add_item()));
                  // Navigator.push(context, MaterialPageRoute(builder: (btn)=>home()));

                },
                itemBuilder: (BuildContext context)=>_popUpMenuItem,
              ),
              // leading: IconButton(onPressed: (){
              //
              // }, icon: Icon(Icons.more_vert,color: Colors.white,)),
              title: Text('Item ${index+1}',style: TextStyle(color: Colors.black,fontSize: 15),) ,
              subtitle: Row(
                children: [
                  Text('\$${index+2}.00 ',style: TextStyle(color: Colors.black,fontSize: 15)),
                  Text(' x ',style: TextStyle(color: Colors.black)),
                  Text(' ${index+1} ',style: TextStyle(color: Colors.black))
                ],
              ),
              trailing: Text('\$${index+1}00',style: TextStyle(color: Colors.black)),
            );
          },
          separatorBuilder: (context,index){
            return Divider(
              thickness: 1,
            );
          },
          itemCount: 14)
    );
  }
}
