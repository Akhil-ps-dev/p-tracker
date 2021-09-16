import 'package:flutter/material.dart';

class NoteScreen extends StatefulWidget {
  NoteScreen({Key? key}) : super(key: key);

  @override
  _NoteScreenState createState() => _NoteScreenState();
}

class _NoteScreenState extends State<NoteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Premium',
          style: TextStyle(color: Colors.yellow),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Colors.grey[600],
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: (DecorationImage(
                      image: AssetImage('images/yoga.jpg'), fit: BoxFit.cover)),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      colors: [
                        Colors.black.withOpacity(.4),
                        Colors.black.withOpacity(.2),
                      ],
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        'LifeStyle',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      // Container(
                      //   height: 60,
                      //   margin: EdgeInsets.symmetric(horizontal: 40),
                      //   decoration: BoxDecoration(
                      //       borderRadius: BorderRadius.circular(10),
                      //       color: Colors.white),
                      // ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: GridView.count(
                  padding: const EdgeInsets.all(10),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: const Text("He'd have you all unravel at the"),
                      color: Colors.teal[200],
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: const Text('Heed not the rabble'),
                      color: Colors.teal[200],
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: const Text('Sound of screams but the'),
                      color: Colors.teal[300],
                    ),
                    Container(
                      child: const Text('Who scream'),
                      color: Colors.teal[400],
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: const Text('Revolution is coming...'),
                      color: Colors.teal[500],
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: const Text('Revolution, they...'),
                      color: Colors.teal[600],
                    ),
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
