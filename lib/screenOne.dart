import 'package:NotesUITest/notebook.dart';
import 'package:NotesUITest/notes.dart';
import 'package:NotesUITest/widgets/groceries.dart';
import 'package:NotesUITest/widgets/todo.dart';
import 'package:flutter/material.dart';

class ScreenOne extends StatefulWidget {
  @override
  _ScreenOneState createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  TextEditingController _searchKeyword = TextEditingController();
  int currentTab = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Notes(); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.search,
          color: Colors.grey[600],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Colors.grey[300],
              child: Text(
                'M',
                style: TextStyle(color: Colors.grey[600]),
              ),
            ),
          )
        ],
        title: TextField(
          cursorColor: Colors.black,
          controller: _searchKeyword,
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Search',
              hintStyle: TextStyle(color: Colors.grey[600])),
        ),
      ),
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        child: Icon(Icons.add,),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            Notes(); // if user taps on this dashboard tab will be active
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.note,
                          color: currentTab == 0 ? Colors.black : Colors.grey,
                        ),
                        Text(
                          'Notes',
                          style: TextStyle(
                            color: currentTab == 0 ? Colors.black : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            Notebook(); // if user taps on this dashboard tab will be active
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.book,
                          color: currentTab == 1 ? Colors.black : Colors.grey,
                        ),
                        Text(
                          'NoteBook',
                          style: TextStyle(
                            color: currentTab == 1 ? Colors.black : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
