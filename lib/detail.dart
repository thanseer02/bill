import 'package:bill_wizard/home.dart';
import 'package:bill_wizard/product/add_item.dart';
import 'package:bill_wizard/product/bill.dart';
import 'package:bill_wizard/product/data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class detail extends StatefulWidget {
   detail({super.key,required this.name,required this.bill,required this.date,required this.mobile_no});
  var name,bill,date,mobile_no;
  @override
  State<detail> createState() => _detailState();
}

class _detailState extends State<detail> {
  // static const menuItems=<String>[
  //   'Edit',
  //   'Delete',
  // ];
  // final List<PopupMenuItem<String>>_popUpMenuItem=menuItems
  //     .map((String value) => PopupMenuItem<String>(
  //   value: value,
  //   child: Text(value),
  // )).toList();
  // late String btn;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        leading: IconButton(
            onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>home()));
            }, icon: Icon(
          Icons.arrow_back_ios_new,color: Colors.black,
        )),
        title: Text('Invoice',style: GoogleFonts.actor(color: Colors.black,fontSize: 25),),
        actions: [
          IconButton(onPressed: (){
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('File downloaded',style: TextStyle(color: Colors.blueGrey),),
                  Icon(Icons.download_done,size: 30,color: Colors.blueGrey,)
                ],
              ),
            ),backgroundColor: Colors.grey,));
          }, icon: const Icon(Icons.file_download,color: Colors.amber,)),

          IconButton(onPressed: ()
          {
            // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>add_item()));

          },
              icon: Icon(Icons.add,color: Colors.black,)),
          IconButton(onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>bill()));
          }, icon: Icon(Icons.done,color: Colors.black,)),


        ],
      ),
      body: SafeArea(
          child:
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.name,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,fontFamily: 'Times New Roman',),),
                        SizedBox(height: 5),
                        Text( widget.mobile_no,style: TextStyle(fontSize: 16),),
                        Text(widget.bill,style: TextStyle(fontSize: 18),),
                        SizedBox(height: 5),
                        Text(widget.date,style: TextStyle(fontSize: 16),),

                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('DM',style: TextStyle(fontSize: 20),),
                        SizedBox(height: 5),
                        Text('Address',style: TextStyle(fontSize: 18),),

                      ],
                    ),

                  ],
                ),
              ),
              Expanded(child: data()),
               // Padding(
               //   padding: const EdgeInsets.symmetric(vertical: 4.0),
               //   child: Container(
               //     height:MediaQuery.of(context).size.height * 0.55,
               //     decoration: BoxDecoration(
               //       color: Colors.black12,
               //       borderRadius: BorderRadius.only(
               //
               //         topLeft: Radius.circular(15),
               //         topRight: Radius.circular(15),
               //
               //       )
               //     ),
               //     child: ListView.separated(
               //         itemBuilder: (context,index){
               //           return ListTile(
               //             leading: PopupMenuButton<String>(
               //               onSelected: (String newValue){
               //                 btn=newValue;
               //                 Navigator.push(context, MaterialPageRoute(builder: (btn)=>add_item()));
               //                 // Navigator.push(context, MaterialPageRoute(builder: (btn)=>home()));
               //
               //                 ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('home')));
               //               },
               //               itemBuilder: (BuildContext context)=>_popUpMenuItem,
               //             ),
               //             // leading: IconButton(onPressed: (){
               //             //
               //             // }, icon: Icon(Icons.more_vert,color: Colors.white,)),
               //             title: Text('Item ${index+1}',style: TextStyle(color: Colors.black,fontSize: 15),) ,
               //             subtitle: Row(
               //               children: [
               //                 Text('\$${index+2}.00 ',style: TextStyle(color: Colors.black,fontSize: 15)),
               //                 Text(' x ',style: TextStyle(color: Colors.black)),
               //                 Text(' ${index+1} ',style: TextStyle(color: Colors.black))
               //               ],
               //             ),
               //             trailing: Text('\$${index+1}00',style: TextStyle(color: Colors.black)),
               //           );
               //         },
               //         separatorBuilder: (context,index){
               //           return Divider(
               //             thickness: 1,
               //           );
               //         },
               //         itemCount: 14),
               //   ),
               // ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 28.0,horizontal: 10),
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(' Tax',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                          Text('10%',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),

                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(' Total Discount',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                          Text('\$1000',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),

                        ],
                      ),
                      Divider(
                        thickness: 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Grand Total',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                          Text('\$1000',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),

                        ],
                      ),
                    ],
                  ),
                ),
              ),


            ],
          )),
    );
  }
}


