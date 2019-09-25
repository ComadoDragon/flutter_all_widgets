import 'package:flutter/foundation.dart';
import 'package:web_socket_channel/io.dart';
import 'package:flutter/material.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class WorkWithWebSocketsMain extends StatelessWidget {

  final String title;

  WorkWithWebSocketsMain({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WorkWithWebsockets(title: this.title, channel: IOWebSocketChannel.connect('ws://echo.websocket.org'),);
  }
}


class WorkWithWebsockets extends StatefulWidget {
  final String title;
  final WebSocketChannel channel;

  WorkWithWebsockets({Key key, @required this.title, @required this.channel})
      : super(key: key);

  @override
  _WorkWithWebsocketsState createState() => _WorkWithWebsocketsState();
}

class _WorkWithWebsocketsState extends State<WorkWithWebsockets> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Form(
              child: TextFormField(
                controller: _controller,
                decoration: InputDecoration(labelText: 'Send a message'),
              ),
            ),
            StreamBuilder(
              stream: widget.channel.stream,
              builder: (context, snapshot) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24.0),
                  child: Text(snapshot.hasData ? '${snapshot.data}' : ''),
                );
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _sendMessage,
        tooltip: 'Send message',
        child: Icon(Icons.send),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void _sendMessage() {
    if (_controller.text.isNotEmpty) {
      widget.channel.sink.add(_controller.text);
    }
  }

  @override
  void dispose() {
    widget.channel.sink.close();
    super.dispose();
  }
}