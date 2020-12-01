import 'package:flutter/material.dart';

class Notebook extends StatefulWidget {
  @override
  _NotebookState createState() => _NotebookState();
}

class _NotebookState extends State<Notebook> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      alignment: Alignment.topCenter,
      height: MediaQuery.of(context).size.height*0.9,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20,),
           Container(
             decoration: BoxDecoration(
               color: Colors.white,
               boxShadow: [
                 BoxShadow(color: Colors.grey, blurRadius: 2)
               ]
             ),
              height: MediaQuery.of(context).size.height*0.1,
              width: MediaQuery.of(context).size.width*0.9,
              child: ListTile(
                leading: Container(
                  width: MediaQuery.of(context).size.width*0.05,
                  color: Colors.red,
                  // child: SizedBox(),
                ),
                title: Text('School', style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Text('12 notes'),
              ),
            ),
            SizedBox(height: 20,),
             Container(
               decoration: BoxDecoration(
               color: Colors.white,
               boxShadow: [
                 BoxShadow(color: Colors.grey, blurRadius: 2)
               ]
             ),
              height: MediaQuery.of(context).size.height*0.1,
              width: MediaQuery.of(context).size.width*0.9,
              child: ListTile(
                leading: Container(
                  width: MediaQuery.of(context).size.width*0.05,
                  color: Colors.pink,
                  // child: SizedBox(),
                ),
                title: Text('Work', style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Text('9 notes'),
              ),
            ),
            SizedBox(height: 20,),
             Container(
               decoration: BoxDecoration(
               color: Colors.white,
               boxShadow: [
                 BoxShadow(color: Colors.grey, blurRadius: 2)
               ]
             ),
              height: MediaQuery.of(context).size.height*0.1,
              width: MediaQuery.of(context).size.width*0.9,
              child: ListTile(
                leading: Container(
                  width: MediaQuery.of(context).size.width*0.05,
                  color: Colors.teal,
                  // child: SizedBox(),
                ),
                title: Text('Ideas', style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Text('3 notes'),
              ),
            ),
            SizedBox(height: 20,),
             Container(
               decoration: BoxDecoration(
               color: Colors.white,
               boxShadow: [
                 BoxShadow(color: Colors.grey, blurRadius: 2)
               ]
             ),
              height: MediaQuery.of(context).size.height*0.1,
              width: MediaQuery.of(context).size.width*0.9,
              child: ListTile(
                leading: Container(
                  width: MediaQuery.of(context).size.width*0.05,
                  color: Colors.yellow,
                  // child: SizedBox(),
                ),
                title: Text('Quick Notes', style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Text('21 notes'),
              ),
            ),
            SizedBox(height: 20,),
             Container(
               decoration: BoxDecoration(
               color: Colors.white,
               boxShadow: [
                 BoxShadow(color: Colors.grey, blurRadius: 2)
               ]
             ),
              height: MediaQuery.of(context).size.height*0.1,
              width: MediaQuery.of(context).size.width*0.9,
              child: ListTile(
                leading: Container(
                  width: MediaQuery.of(context).size.width*0.05,
                  color: Colors.orange,
                  // child: SizedBox(),
                ),
                title: Text('Home', style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Text('4 notes'),
              ),
            )
          ],
        ),
      ),
      
    );
  }
}