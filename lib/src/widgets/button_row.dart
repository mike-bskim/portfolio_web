import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ButtonRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          color: Color(0XFFFBEFD9),
//                alignment: Alignment.bottomLeft,
          child: Row(
            children: [
              Padding(padding: EdgeInsets.only(top: 32, bottom: 32, left: 16)),
              TextButton.icon(
                  onPressed: () => _launchURL('https://facebook.com'),
                  icon: Image.asset(
                    'assets/images/social/facebook.png',
                    width: 40,
                    height: 40,
                  ),
                  label: Text('')),
              Padding(padding: EdgeInsets.all(8.0)),
              TextButton.icon(
                  onPressed: () => _launchURL('https://instagram.com'),
                  icon: Image.asset(
                    'assets/images/social/instagram.png',
                    width: 40,
                    height: 40,
                  ),
                  label: Text('')),
              Padding(padding: EdgeInsets.all(8.0)),
              TextButton.icon(
                  onPressed: () => _launchURL('https://twitter.com'),
                  icon: Image.asset(
                    'assets/images/social/twitter.png',
                    width: 40,
                    height: 40,
                  ),
                  label: Text('')),
              Padding(padding: EdgeInsets.all(8.0)),

            ],
          ),
        )
      ],
    );
  }

  void _launchURL(String url) async =>
      await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';

}
