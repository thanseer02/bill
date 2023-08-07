import 'package:bill_wizard/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class add extends StatefulWidget {
  const add({super.key});

  @override
  State<add> createState() => _addState();
}

class _addState extends State<add> {
  var tcolor=Color(0xFF587792);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () { 
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>home()));
        }, icon: Icon(Icons.arrow_back_ios_new,color: Colors.black,),),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('D M',style: GoogleFonts.gruppo(fontWeight: FontWeight.bold,fontSize: 30,color: tcolor),),
          ),

        ],

      ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text('Date :',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: tcolor),),
                      CurrentDateWidget(),
                    ],
                  ),
                ),

                //heading
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 180,
                      height: 40,
                      child: TextFormField(
                        decoration: InputDecoration(
                          label: Text('Name'),
                          labelStyle: TextStyle(fontSize: 15,color: tcolor),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 180,
                      height: 40,
                      child: TextFormField(
                        decoration: InputDecoration(
                          label: Text('Phone_no'),
                          labelStyle: TextStyle(fontSize: 15,color: tcolor),
                        ),
                      ),
                    ),

                  ],
                ),
                Divider(),

                SizedBox(
                  width: 350,
                  height: 40,
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
                      height: 40,
                      child: TextFormField(
                        decoration: InputDecoration(
                          label: Text('Price'),
                          labelStyle: TextStyle(fontSize: 15,color: tcolor),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      height: 40,
                      child: TextFormField(
                        decoration: InputDecoration(
                          label: Text('Quantity'),
                          labelStyle: TextStyle(fontSize: 15,color: tcolor),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      height: 40,
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
                  height: 40,
                  child: TextFormField(
                    decoration: InputDecoration(
                      label: Text('Discription'),
                      labelStyle: TextStyle(fontSize: 15,color: tcolor),
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: 40,
                    width: 100,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey
                      ),
                        onPressed: (){},
                        child: Text('Save')),
                  ),
                )




              ],
            ),
          ),
        ),
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





