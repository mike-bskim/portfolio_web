// import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio_web/src/widgets/contract_button.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        // Set this height
        backgroundColor: Color.fromRGBO(38, 100, 100, 1.0),
        elevation: 0.0,
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 32,
                backgroundColor: Color.fromRGBO(38, 100, 100, 1.0),
                foregroundImage: NetworkImage(
                    'https://lh3.googleusercontent.com/ogw/ADea4I5XLZq9jMIGAiQ_7eVqZPt1SAd3vo_I15f0APZyCQ=s32-c-mo'), //('https://picsum.photos/200'),
//                backgroundImage: NetworkImage('https://placeimg.com/200/200'),
              ),
            ),
//            Padding(padding: const EdgeInsets.all(4.0)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('HongE',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic)),
            ),
          ],
        ),
        actions: <Widget>[
          ContactButton(
            buttonText: 'Contact me',
            icon: Icon(Icons.add),
            onPressed: () {
              print('Contact me');
            },
          ),
          Padding(padding: const EdgeInsets.all(16.0)),
        ],
      ),
      body: Stack(
        children: [
          Body(),
        ],
      ),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
            flex: 1,
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  Expanded(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Opacity(
                          opacity: 0.4,
                          child: Image.asset('headshot.png'),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'I \'m Mike. \na software developer \nand dreamer',
                              style: TextStyle(
                                  fontSize: 44, color: Colors.blueGrey),
                              textAlign: TextAlign.center,
                              // 'I \'m bskim'
                            ),
                            Container(
                              // color: Colors.pink,
                              // height: 100,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: ContactButton(
                                  buttonText: 'Drop me a line',
                                  icon: Icon(Icons.email_outlined),
                                  onPressed: () {
                                    print('email');
                                  }
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )),
        Expanded(
            // flex: 2,
            child: Container(
              color: Colors.green,
            )),
      ],
    );
  }
}
