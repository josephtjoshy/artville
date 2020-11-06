import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:table_calendar/table_calendar.dart';

void main() {
  runApp(MyApp());
}

CalendarController _calendarController;

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'artlive',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

String courseDrop, timigDrop;
var checkBoxValue = false;

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController textName,
      textEmail,
      textPhone,
      textCountry,
      textGaudian,
      textGuadPhone;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _calendarController = CalendarController();
    textName = TextEditingController();
    textEmail = TextEditingController();
    textPhone = TextEditingController();
    textCountry = TextEditingController();
    textGaudian = TextEditingController();
    textGuadPhone = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _calendarController.dispose();
    textName.dispose();
    textEmail.dispose();
    textPhone.dispose();
    textCountry.dispose();
    textGaudian.dispose();
    textGuadPhone.dispose();
  }

  Future<void> showCalender(context) async {
    await showDialog(
      barrierDismissible: true,
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          backgroundColor: Color(0xffffffff),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          children: <Widget>[
            Container(
                width: 200,
                height: 320,
                child: TableCalendar(
                  calendarController: _calendarController,
                )),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 7,
                child: Row(
                  children: [
                    SizedBox(
                      width: 200,
                    ),
                    Text("Home"),
                    SizedBox(
                      width: 20,
                    ),
                    Text("Offline Courses"),
                    SizedBox(
                      width: 20,
                    ),
                    Text("Online Live Courses"),
                    SizedBox(
                      width: 20,
                    ),
                    Text("Student Centre"),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  width: MediaQuery.of(context).size.width / 1.5,
                  height: MediaQuery.of(context).size.height / 1.25,
                  child: Column(
                    children: [
                      Text(
                        "ONLINE COURSES",
                        style: TextStyle(
                            color: Colors.redAccent,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "ENROLLMENT FORM",
                        style: TextStyle(
                            color: Colors.redAccent,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 30,
                            width: 150,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            child: TextField(
                              controller: textName,
                              decoration:
                                  InputDecoration(hintText: 'Student Name'),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 30,
                            width: 150,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: RaisedButton(
                              onPressed: () {
                                showCalender(context);
                              },
                              child: Text("Date"),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 30,
                            width: 150,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            child: TextField(
                              controller: textEmail,
                              decoration: InputDecoration(hintText: 'Email'),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 30,
                            width: 150,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            child: TextField(
                              controller: textPhone,
                              decoration: InputDecoration(hintText: 'Phone'),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 30,
                            width: 150,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            child: Center(
                              child: DropdownButton<String>(
                                hint: Text("Courses"),
                                value: courseDrop,
                                icon: Icon(Icons.arrow_downward),
                                iconSize: 15,
                                //elevation: 10,
                                style: TextStyle(color: Colors.deepPurple),
                                underline: Container(
                                  height: 0,
                                  color: Colors.deepPurpleAccent,
                                ),
                                onChanged: (String newValue) {
                                  setState(() {
                                    courseDrop = newValue;
                                  });
                                },
                                items: <String>[
                                  'B.Tech',
                                  'B.Com'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 30,
                            width: 150,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            child: TextField(
                              controller: textCountry,
                              decoration: InputDecoration(hintText: 'Country'),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              width: 150,
                              height: 30,
                              child: Text("If student below 18")),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                              width: 150,
                              height: 30,
                              child: Text("Guadian Phone")),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 30,
                            width: 150,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            child: TextField(
                              controller: textGaudian,
                              decoration:
                                  InputDecoration(hintText: 'Guadian Name'),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 30,
                            width: 150,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            child: TextField(
                              controller: textGuadPhone,
                              decoration:
                                  InputDecoration(hintText: 'Guadian Phone'),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 30,
                            width: 150,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            child: Center(
                              child: DropdownButton<String>(
                                hint: Text("Timing"),
                                value: timigDrop,
                                icon: Icon(Icons.arrow_downward),
                                iconSize: 15,
                                //elevation: 10,
                                style: TextStyle(color: Colors.deepPurple),
                                underline: Container(
                                  height: 0,
                                  color: Colors.deepPurpleAccent,
                                ),
                                onChanged: (String newValue) {
                                  setState(() {
                                    timigDrop = newValue;
                                  });
                                },
                                items: <String>[
                                  '10 Am',
                                  '1 Pm'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 150,
                            height: 30,
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                        child: Row(
                          children: [
                            Container(
                              child: Checkbox(
                                  value: checkBoxValue,
                                  activeColor: Colors.green,
                                  onChanged: (bool newValue) {
                                    setState(() {
                                      checkBoxValue = newValue;
                                    });
                                  }),
                            ),
                            Text('I accept the Terms and Conditions')
                          ],
                        ),
                      ),
                      Container(
                        width: 150,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Center(child: Text("Submit")),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.5,
                height: MediaQuery.of(context).size.height / 3,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [

                    Container(
                      width: (MediaQuery.of(context).size.width/1.5)/2,
                      height: MediaQuery.of(context).size.height / 2,
                      child:Column(
                        children: [
                          Text("\n\nJoin out Mailing List"),
                          Text("Privacy Policy Terms and conditions"),
                          Text("@ 2017 by artvile Academy | artvileacademy@gmail.com")
                        ],
                      )

                    ),
                    Container(
                      width: (MediaQuery.of(context).size.width/1.5)/2,
                      height: MediaQuery.of(context).size.height / 2,
                      child: Column(
                        children: [
                          Text("\nLocation",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          Text("Artville Academy and Art Cafe 314,5th Main,HRBR layout 2nd block,Kaliyan Nagar Banglore-560043"),
                          Text("\n+91 9620936487\n+91 9742020666\n+918041273727")
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
