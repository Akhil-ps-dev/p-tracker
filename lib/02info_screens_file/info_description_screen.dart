import 'package:flutter/material.dart';
import 'package:flutter_period/02info_screens_file/info_list.dart';

class InfoDescriptionScreen extends StatelessWidget {
  final Info info;

  InfoDescriptionScreen(this.info);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40))),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.network(
                info.imageUrl,
                height: 220,
              ),
              Divider(
                height: 20,
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  info.title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 17.0,
                      fontFamily: "lato",
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  info.description,
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 20.0, fontFamily: "lato"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
