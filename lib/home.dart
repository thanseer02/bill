import 'package:bill_wizard/add.dart';
import 'package:bill_wizard/detail.dart';
import 'package:bill_wizard/product/add_item.dart';
import 'package:bill_wizard/product/bill.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  var tcolor=Color(0xFF587792);
  // String currentDate = '';
  //
  // @override
  // void initState() {
  //   super.initState();
  //   _updateCurrentDate();
  // }
  // void _updateCurrentDate() {
  //   DateTime now = DateTime.now();
  //   String formattedDate = '${now.year}-${now.month}-${now.day}';
  //   setState(() {
  //     currentDate = formattedDate;
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      elevation: 1,
      title:
        Padding(
        padding: const EdgeInsets.all( 10.0),
        child: Text('D M',style: GoogleFonts.gotu(fontWeight: FontWeight.bold,fontSize: 30,color: tcolor,),),
      ),
      actions: [
        IconButton(onPressed: (){},
            icon: Icon(Icons.more_vert),color: Colors.black,)
      ],

    ),
    floatingActionButton: FloatingActionButton(
      backgroundColor: Colors.white,
      onPressed: () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>add()));
    },child: Icon(Icons.add,color: Color(0xff8DB1AB),),),
    body: SafeArea(
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
          itemBuilder: (context,index){
            return GestureDetector(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>detail(
                  name: 'Costumer ${index+1}',
                  bill: '${index+1}',
                  date: '${index+1}/O${index+1}/202${index}',
                  mobile_no: '994497775${index}',)));
              },
              child: ListTile(
                leading: Text('${index+1}',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,fontFamily: 'Times New Roman'),),
                title:Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Text('Costumer ${index+1}',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w400,fontFamily: 'Times New Roman')),
                ),

                subtitle:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('994497775${index}',style: TextStyle(fontSize: 16,fontFamily: 'Times New Roman')),
                    Text('${index+1}/O${index+1}/202${index}',style: TextStyle(fontSize: 16,fontFamily: 'Times New Roman')),

                  ],
                ),

                trailing: Text('\$${index+1}00',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,fontFamily: 'Times New Roman',color: Colors.black),),
              ),
            );
          },
          separatorBuilder: (context,index){
            return Divider();
          },
          itemCount: 15)
    ),
    );
  }
}
class CurrentDateWidget extends StatefulWidget {
  @override
  _CurrentDateWidgetState createState() => _CurrentDateWidgetState();
}
class _CurrentDateWidgetState extends State<CurrentDateWidget> {
  String currentDate = '';

  @override
  void initState() {
    super.initState();
    _updateCurrentDate();
  }

  void _updateCurrentDate() {
    DateTime now = DateTime.now();
    String formattedDate = '${now.day}-${now.month}-${now.year}';
    setState(() {
      currentDate = formattedDate;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      '$currentDate',

      style: TextStyle(fontSize: 15),
    );
  }
}





