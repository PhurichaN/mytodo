import 'package:flutter/material.dart';

class MyToDo extends StatefulWidget {
  const MyToDo({Key? key}) : super(key: key);

  @override
  State<MyToDo> createState() => _MyToDoState();
}

class _MyToDoState extends State<MyToDo> {
  var _feetBackText = '';
  TextEditingController ToDoController = TextEditingController();

  void _handleClickButton() {
    var intput = ToDoController.text;
    setState(() {
      _feetBackText = intput;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.check_box),
        title: const Text('My ToDo'),
      ),
      body: Container(
        color: Colors.white10,
        child: Column(
          children: [
            SizedBox(height: 16.0),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    //Text(_feetBackText),
                    Container(
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 24.0),
                        height: MediaQuery.of(context).size.height * 0.15,
                        child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            clipBehavior: Clip.antiAlias,
                            child: Row(
                              children: [
                                Checkbox(value: true, onChanged: (value) {
                                },),
                                Expanded(child: Text('ทำการบ้านครั้งที่ 4 Mobile App Dev'),),
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Icon(Icons.delete , color: Colors.grey),
                                ),
                                //Text(_feetBackText),
                               
                              ],
                            )
                        )
                      ),
                    ),
                  ],

                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
              //padding: EdgeInsets.all(10),
              color: Colors.white,
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: ToDoController ,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter new ToDo',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16.0,
                  ),
                  FlatButton(
                    onPressed: () {
                      _handleClickButton();
                    },
                    child: Text('ADD',style: TextStyle(fontSize: 20.0),),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
