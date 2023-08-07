import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../home.dart';
class bill extends StatefulWidget {
   bill({super.key,});
  @override
  State<bill> createState() => _billState();
}

class _billState extends State<bill> {
  var tcolor=Color(0xFF587792);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        leading: IconButton(onPressed: () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>home()));
        }, icon: Icon(Icons.arrow_back_ios_new,color: Colors.black,),),
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
          }, icon: Icon(Icons.file_download,color: Colors.blueGrey,size: 35,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.share,color: Colors.amber,size: 30,))

        ],

      ),

      body: SafeArea(
        child: Padding(
        padding: const EdgeInsets.all(10.0),
        child:
        Expanded(
          // height: double.infinity,
          // decoration: BoxDecoration(
          //   border: Border.all(
          //     color: Colors.black,
          //     style: BorderStyle.solid,
          //   )
          // ),
          child:
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Name',style: TextStyle(fontSize: 18),),
                            SizedBox(height: 5),
                            Text('Mobile_no',style: TextStyle(fontSize: 16),),

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('DM',style: TextStyle(fontSize: 18),),
                            SizedBox(height: 5),
                            Text('Address',style: TextStyle(fontSize: 16),),

                          ],
                        ),
                      ),
                    ],

                  ),
                ),
                Divider(
                  thickness: 1,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Item'),
                      Text('Price'),
                      Text('Qty'),
                      Text('Tax'),
                      Text('Total')
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height *0.5,
                  color: Colors.black12,
                  child: ListView.separated(

                      itemBuilder: (context,index){
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,

                            children: [
                              Text('item ${index+1}'),
                              Text('\$ ${index+1}${index+1}'),
                              Text('${index+1}'),
                              Text('${index+1}%'),
                              Text('\$${index+1}${index}'),
                            ],
                          ),
                        ) ;
                      },
                      separatorBuilder: (contex,index){
                        return Divider();
                      },
                      itemCount: 10
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Total Discount',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('10%',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                      ),
                    ],

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Total Tax',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('10%',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                      ),
                    ],

                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Grand Total',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('\$100',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      ),
                    ],

                  ),
                ),


              ],
            ),
          ),
        ),
          ),
    )
    );
  }
}
