
import 'package:flutter/material.dart';
import 'taskCard.dart';
import 'getJsonData.dart';


class TaskScreen extends StatefulWidget {



  @override
  _TaskScreenState createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
    var data;
  void initState(){
    super.initState();
    data = getData();
    print(data);
    print('hay');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.white,
          child: Icon(
            Icons.add,
            color: Color(0xff0176E1),
            size: 38,
          ),
        ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
          centerTitle: true,
          leading: Icon(
            Icons.menu,
            color: Color(0xff0176E1),
            size: 26,
          ),
          title: Text(
            'task.',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w900,
              color: Color(0xff0176E1),
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(
            left: 16,
            right: 14,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Tasks',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16.0,
                ),
              ),
              Builder(
                 builder:(context){
                   if (data[0]['title'] != null)

                 return Expanded(
                  child: ListView(
                    children: [
                      TaskCard(
                        firstBoxColour: Color(0xffFFDEDE),
                        title: data[0]['title'],
                        subtitle: 'sa',
                      ),
                      TaskCard(
                        firstBoxColour: Color(0x595BB1FF),
                        title: 'sa',
                        subtitle: 'sa',
                      ),
                      TaskCard(
                        firstBoxColour: Color(0xffB1F8C1),
                        title: 'sa',
                        subtitle: 'sa',
                      ),
                    ],
                  ),
                );
                 return Center(
                   child: CircularProgressIndicator(),
                 );
                 }
              ),
            ],
          ),
        ),
      ),
    );
  }
}
