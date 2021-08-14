import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(home: (MainScreen()));
  }
}

class MainScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Screen();
  }
}

class Screen extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: DefaultTabController(
            // Added
            length: 5, // Added
            child: Scaffold(
              drawer: Drawer(
                  child: ListView(
                children: [
                  Container(
                    height: 100,
                    child: DrawerHeader(
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "Search",
                        ),
                        cursorColor: Colors.indigo,
                      ),
                    ),
                  ),
                  TextButton.icon(
                      onPressed: null,
                      icon: Icon(Icons.search),
                      label: Text("Search"),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.lightGreenAccent),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.black87),
                      ))
                ],
              )),
              body: TabBarView(children: [
                ListView.builder(
                  itemCount: 1000,
                  itemBuilder: (context, i) {
                    return Container(
                      color: Colors.white70,
                      padding: EdgeInsets.all(20),
                      height: 300,
                      child: ListTile(
                        title: Text("Title for Trang Chu $i "),
                        subtitle: Text("Introduce for news"),
                      ),
                    );
                  },
                ),
                ListView.builder(
                  itemCount: 1000,
                  itemBuilder: (context, i) {
                    return Container(
                      color: Colors.white70,
                      padding: EdgeInsets.all(20),
                      height: 300,
                      child: ListTile(
                        title: Text("Title for The Thao $i "),
                        subtitle: Text("Introduce for news"),
                      ),
                    );
                  },
                ),
                ListView.builder(
                  itemCount: 1000,
                  itemBuilder: (context, i) {
                    return Container(
                      color: Colors.white70,
                      padding: EdgeInsets.all(20),
                      height: 300,
                      child: ListTile(
                        title: Text("Title for Kinh Te $i "),
                        subtitle: Text("Introduce for news"),
                      ),
                    );
                  },
                ),
                ListView.builder(
                  itemCount: 1000,
                  itemBuilder: (context, i) {
                    return Container(
                      color: Colors.white70,
                      padding: EdgeInsets.all(20),
                      height: 300,
                      child: ListTile(
                        title: Text("Title for Gia Dinh $i "),
                        subtitle: Text("Introduce for news"),
                      ),
                    );
                  },
                ),
                ListView.builder(
                  itemCount: 1000,
                  itemBuilder: (context,i){
                    return Container(
                      color: Colors.white70,
                      padding: EdgeInsets.all(20),
                      height: 300,
                      child: ListTile(

                        title: Text("Title for Suc Khoe $i "),
                        subtitle: Text("Introduce for news"),


                      ),



                    );
                  },




                )
              ]),
              appBar: AppBar(
                leading: (Builder(
                    builder: (context) => IconButton(
                          icon: Icon(Icons.search),
                          onPressed: () => Scaffold.of(context).openDrawer(),
                        ))),
                backgroundColor: Colors.lightGreen,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "NewsNow",
                      style: TextStyle(
                          color: Colors.black87,
                          fontStyle: FontStyle.italic,
                          fontSize: 25),
                    ),
                    Text(
                      DateFormat('dd/MM/yyyy').format(DateTime.now()),
                      style: TextStyle(
                          color: Colors.black,
                          fontStyle: FontStyle.italic,
                          fontSize: 16),
                    ),
                  ],
                ),
                bottom: TabBar(isScrollable: true, tabs: [
                  Tab(
                    text: "Trang Chu",
                  ),
                  Tab(
                    text: "The Thao",
                  ),
                  Tab(
                    text: "Kinh Te",
                  ),
                  Tab(
                    text: "Gia Dinh",
                  ),
                  Tab(
                    text: "Suc Khoe",
                  ),
                ]),
              ),
            )));
  }
}
