import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Container(
            padding: EdgeInsets.all(5),
            width: 58,
            child: CircleAvatar(
              child: Text(
                'JD',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          title: Text(
            "Signal",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          centerTitle: true,
          actions: [
            Icon(
              Icons.search,
              color: Colors.black,
            ),
            SizedBox(width: 10),
            Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
          ],
        ),
        floatingActionButton: Stack(
          children: <Widget>[
            Positioned(
              bottom: 80.0,
              right: 10.0,
              child: FloatingActionButton(
                heroTag: 'camera',
                onPressed: () {},
                child: Icon(Icons.camera_alt),
                shape: CircleBorder(),
              ),
            ),
            Positioned(
              bottom: 10.0,
              right: 10.0,
              child: FloatingActionButton(
                heroTag: 'add',
                onPressed: () {},
                child: Icon(Icons.add),
                shape: CircleBorder(),
              ),
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'No chats yet.',
                style: TextStyle(fontSize: 17),
              ),
              Text(
                'Get started by messaging a friend',
                style: TextStyle(fontSize: 17),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
