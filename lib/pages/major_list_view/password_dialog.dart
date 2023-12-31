// TODO Implement this library.
import 'package:flutter/material.dart';

class PasswordDialog extends StatefulWidget {
  @override
  _PasswordDialogState createState() => _PasswordDialogState();
}

class _PasswordDialogState extends State<PasswordDialog> {
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Enter Password'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: _passwordController,
            obscureText: true, // Hide entered text (password field)
            decoration: InputDecoration(labelText: 'Password'),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              // Check the entered password
              final enteredPassword = _passwordController.text;
              if (enteredPassword == 'ems') {
                Navigator.of(context).pop(true); // Close dialog with a success result
              } else {
                // Show an error message or handle incorrect password
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Incorrect password. Try again.'),
                  ),
                );
              }
            },
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }
}
