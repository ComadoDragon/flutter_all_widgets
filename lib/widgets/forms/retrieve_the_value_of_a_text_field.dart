import 'package:flutter/material.dart';

// Define a custom Form widget.
class RetrieveTheValueOfATextField extends StatefulWidget {

  final String title;

  RetrieveTheValueOfATextField({Key key, @required this.title}) : super(key: key);

  @override
  _RetrieveTheValueOfATextFieldState createState() => _RetrieveTheValueOfATextFieldState();
}

// Create a text controller and use it to retrieve the current value
// of the TextField.
class _RetrieveTheValueOfATextFieldState extends State<RetrieveTheValueOfATextField> {
  final myController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          controller: myController,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // When the user presses the button, show an alert dialog containing
        // the text that the user has entered into the text field.
        onPressed: () {
          return showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                // Retrieve the text the that user has entered by using the
                // TextEditingController.
                content: Text(myController.text),
              );
            },
          );
        },
        tooltip: 'Show me the value!',
        child: Icon(Icons.text_fields),
      ),
    );
  }
}
