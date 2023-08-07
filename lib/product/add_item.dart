import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../home.dart';
class add_item extends StatefulWidget {
  const add_item({super.key});

  @override
  State<add_item> createState() => _add_itemState();
}

class _add_itemState extends State<add_item> {
  var tcolor=Color(0xFF587792);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        leading: IconButton(onPressed: () {
          // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>home()));
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios_new,color: Colors.black,),),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('D M',style: GoogleFonts.gruppo(fontWeight: FontWeight.bold,fontSize: 30,color: tcolor),),
          ),

        ],

      ),

      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              width: 350,
              height: 50,
              child: TextFormField(
                decoration: InputDecoration(
                  label: Text('Product Name'),
                  labelStyle: TextStyle(fontSize: 15,color: tcolor),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 100,
                  height: 50,
                  child: TextFormField(
                    decoration: InputDecoration(
                      label: Text('Price'),
                      labelStyle: TextStyle(fontSize: 15,color: tcolor),
                    ),
                  ),
                ),
                SizedBox(
                  width: 100,
                  height: 50,
                  child: TextFormField(
                    decoration: InputDecoration(
                      label: Text('Quantity'),
                      labelStyle: TextStyle(fontSize: 15,color: tcolor),
                    ),
                  ),
                ),
                SizedBox(
                  width: 100,
                  height: 50,
                  child: TextFormField(
                    decoration: InputDecoration(
                      label: Text('Tax'),
                      labelStyle: TextStyle(fontSize: 15,color: tcolor),
                    ),
                  ),
                ),

              ],
            ),
            SizedBox(height: 10,),

            SizedBox(
              width: 350,
              height: 50,
              child: TextFormField(
                decoration: InputDecoration(
                  label: Text('Discription'),
                  labelStyle: TextStyle(fontSize: 15,color: tcolor),
                ),
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 40,
                    width: 160,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)
                            ),
                            backgroundColor: Colors.blueGrey
                        ),
                        onPressed: (){},
                        child: Text('Add Another Item')),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 40,
                      width: 100,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)
                            ),
                              backgroundColor: Colors.blueGrey,

                          ),
                          onPressed: (){},
                          child: Text('Save')),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
