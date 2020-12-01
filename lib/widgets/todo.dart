import 'package:flutter/material.dart';
class ToDoWeek extends StatefulWidget {
  @override
  _ToDoWeekState createState() => _ToDoWeekState();
}

class _ToDoWeekState extends State<ToDoWeek> {


  bool _task = false, _scan = false, _dribble = false, _case = false, _write = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.3,
      width: MediaQuery.of(context).size.width*0.45,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.blue, width: 2)
      ),
      padding: EdgeInsets.all(5),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text('To do this week', style: TextStyle(fontWeight: FontWeight.w700),),
            ),
            Container(
              width: MediaQuery.of(context).size.width*0.4,
              height: MediaQuery.of(context).size.height*0.05,
              child: ListTile(
                leading: Checkbox(
                  value: _task,
                  onChanged: (value) {
                    setState(() {
                      _task = !_task;
                    });
                  },
                ),
                title: Text('Task 5.3'),
              ),
            ),
             Container(
               width: MediaQuery.of(context).size.width*0.4,
               height: MediaQuery.of(context).size.height*0.05,
               child: ListTile(
               leading: Checkbox(
                  value: _scan,
                  onChanged: (value) {
                    setState(() {
                      _scan = !_scan;
                    });
                  },
                ),
                title: Text('Scan Sketches'),
            ),
             ),
             Container(
               width: MediaQuery.of(context).size.width*0.4,
               height: MediaQuery.of(context).size.height*0.05,
               child: ListTile(
                leading: Checkbox(
                  value: _dribble,
                  onChanged: (value) {
                    setState(() {
                      _dribble = !_dribble;
                    });
                  },
                ),
                title: Text('Dribble Account'),
            ),
             ),
             Container(
               width: MediaQuery.of(context).size.width*0.4,
               height: MediaQuery.of(context).size.height*0.05,
               child: ListTile(
                leading: Checkbox(
                  value: _case,
                  onChanged: (value) {
                    setState(() {
                      _case = !_case;
                    });
                  },
                ),
                title: Text('Case Study'),
            ),
             ),
             Container(
               width: MediaQuery.of(context).size.width*0.4,
               height: MediaQuery.of(context).size.height*0.05,
               child: ListTile(
                leading: Checkbox(

                  value: _write,
                  onChanged: (value) {
                    setState(() {
                      _write = !_write;
                    });
                  },
                ),
                title: Text('Write in Slack'),
            ),
             )
          ],
        ),
      ),
      
    );
  }
}