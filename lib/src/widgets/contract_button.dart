import 'package:flutter/material.dart';

class ContactButton extends StatelessWidget {
  final String buttonText;
  final Widget icon;
  final VoidCallback onPressed;
//  final Function onPressed;

  ContactButton({required this.buttonText, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return
      Container(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          height: 40,
          child: TextButton.icon(
              style: TextButton.styleFrom(
                  textStyle: TextStyle(
                      color: Colors.black12
                  ),
                  backgroundColor: Colors.amberAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24.0),
                  )

              ),
              onPressed: onPressed,
              icon: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: icon,
              ),
              label: Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Text(buttonText,
                  style: TextStyle(color: Colors.black),
                ),
              )
          ),
        ),
      );
  }
}
