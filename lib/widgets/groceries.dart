import 'package:flutter/material.dart';
class Groceries extends StatefulWidget {
  @override
  _GroceriesState createState() => _GroceriesState();
}

class _GroceriesState extends State<Groceries> {


  bool _milk = false, _bread = false, _eggs = false, _butter = false, _apples = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.3,
      width: MediaQuery.of(context).size.width*0.45,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.orange, width: 2)
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text('Groceries', style: TextStyle(fontWeight: FontWeight.w700),),
            ),
            Container(
              height: MediaQuery.of(context).size.height*0.05,
              width: MediaQuery.of(context).size.width*0.4,
              child: ListTile(
                leading: Checkbox(
                  value: _milk,
                  onChanged: (value) {
                    setState(() {
                      _milk = !_milk;
                    });
                  }
                ),
                title: Text('Milk'),
              ),
            ),
             Container(
               height: MediaQuery.of(context).size.height*0.05,
               width: MediaQuery.of(context).size.width*0.4,
               child: ListTile(
               leading: Checkbox(
                  value: _bread,
                  onChanged: (value) {
                    setState(() {
                      _bread = !_bread;
                    });
                  },
                ),
                title: Text('Bread'),
            ),
             ),
             Container(
               height: MediaQuery.of(context).size.height*0.05,
               width: MediaQuery.of(context).size.width*0.4,
               child: ListTile(
                leading: Checkbox(
                  value: _eggs,
                  onChanged: (value) {
                    setState(() {
                      _eggs = !_eggs;
                    });
                  },
                ),
                title: Text('Eggs'),
            ),
             ),
             Container(
               height: MediaQuery.of(context).size.height*0.05,
               width: MediaQuery.of(context).size.width*0.4,
               child: ListTile(
                leading: Checkbox(
                  value: _butter,
                  onChanged: (value) {
                    setState(() {
                      _butter = !_butter;
                    });
                  },
                ),
                title: Text('Butter'),
            ),
             ),
             Container(
               height: MediaQuery.of(context).size.height*0.05,
               width: MediaQuery.of(context).size.width*0.4,
               child: ListTile(
                leading: Checkbox(
                  value: _apples,
                  onChanged: (value) {
                    setState(() {
                      
                      _apples = !_apples;
                      
                    });
                  },
                ),
                title: Text('Apple'),
            ),
             )
          ],
        ),
      ),
      
    );
  }
}