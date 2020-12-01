import 'package:NotesUITest/widgets/groceries.dart';
import 'package:NotesUITest/widgets/todo.dart';
import 'package:flutter/material.dart';

class Notes extends StatefulWidget {
  @override
  _NotesState createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Align(alignment: Alignment.topLeft, child: Text('PINNED')),
            SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Groceries(),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.yellow, width: 2)),
                      child: ListTile(
                        title: Text(
                          'Emma',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text('Tel: 52700876'),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.teal, width: 2)),
                      child: ListTile(
                        title: Text(
                          'About draft',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s '),
                      ),
                    ),
                  ],
                ),
                Column(children: [
                  Container(
                      height: MediaQuery.of(context).size.height * 0.25,
                      width: MediaQuery.of(context).size.width * 0.45,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.purple, width: 2)),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Digital Agencies',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            Text('- Eggs'),
                            Text('- Design it'),
                            Text('- Signify'),
                            Text('- Charlie Tango'),
                            Text('- 1508'),
                            Text('- Dwarf'),
                            Text('- Good Monday'),
                          ],
                        ),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      height: MediaQuery.of(context).size.height * 0.15,
                      width: MediaQuery.of(context).size.width * 0.45,
                      // padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.red, width: 2)),
                      // child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                'Bleschu.dk-\nSustainable Soap',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                            ),
                             ClipRRect(
                               borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15)),
                               child: Image(
                                  image: AssetImage('asset/flower.jpg'),
                                  fit: BoxFit.fill,
                                  height: MediaQuery.of(context).size.height*0.08,

                                
                            ),
                             )
                          ],
                        ),
                      ),
                  SizedBox(
                    height: 10,
                  ),
                  ToDoWeek()
                ])
              ],
            )
          ],
        )),
      );
  }
}