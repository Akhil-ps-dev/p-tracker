import 'package:flutter/material.dart';
import 'package:flutter_period/02info_screens_file/info_description_screen.dart';
import 'package:flutter_period/02info_screens_file/info_list.dart';

class InformationScreen extends StatefulWidget {
  @override
  _InformationScreenState createState() => _InformationScreenState();
}

class _InformationScreenState extends State<InformationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //  backgroundColor: Colors.white,
        title: Text(
          "Period Hacks",
          style: TextStyle(color: Colors.white, fontFamily: "lato"),
        ),
        centerTitle: true,
        elevation: 0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(200),
                bottomRight: Radius.circular(200))),
      ),
      body: ListView.builder(
          itemCount: infoList.length,
          itemBuilder: (context, index) {
            Info info = infoList[index];
            return Card(
              child: ListTile(
                title: Text(info.title),
                //! subtitle: Text(),
                leading: Image.network(info.imageUrl),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => InfoDescriptionScreen(info),
                      ));
                },
              ),
            );
          }),
    );
  }
}
