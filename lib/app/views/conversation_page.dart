import 'package:bitlearn/app/api_helper.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _controller = TextEditingController();
  List<Map<String, dynamic>> messages = [];

  void _sendMessage() async {
    String userInput = _controller.text;
    if (userInput.trim().isEmpty) {
      return;
    }

    setState(() {
      messages.add({"text": userInput, "isUser": true});
      _controller.clear();
    });

    try {
      String result = await ApiHelper.sendQuery(userInput);
      setState(() {
        messages.add({"text": result, "isUser": false});
      });
    } catch (e) {
      setState(() {
        messages
            .add({"text": "Failed to connect to the API: $e", "isUser": false});
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 120,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Row(
                children: [
                  Image.asset('lib/app/assets/menu.png', height: 30),
                  SizedBox(width: 20),
                  const Text(
                    'Hi, ',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  const Text(
                    'Aakash 👋',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ],
              ),
              Spacer(),
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('lib/app/assets/profile.png'),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Expanded(
                child: ListView.builder(
                  itemCount: messages.length,
                  itemBuilder: (context, index) {
                    final message = messages[index];
                    return _buildMessageTile(
                        message['text'], message['isUser']);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 50,
                        child: TextField(
                          controller: _controller,
                          decoration: InputDecoration(
                            labelText: 'Ask me Anything!',
                            labelStyle: TextStyle(
                                color: Color(0xff5667FD), fontSize: 14),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide:
                                  const BorderSide(color: Color(0xff5667FD)),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    IconButton(
                      icon: Icon(Icons.send),
                      color: Color(0xff5667FD),
                      onPressed: _sendMessage,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMessageTile(String text, bool isUser) {
    return Container(
      alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
        decoration: BoxDecoration(
          color:
              isUser ? Color(0xff5667FD) : Color.fromARGB(255, 140, 151, 249),
          borderRadius: BorderRadius.circular(12),
        ),
        child: _styledText(text, isUser),
      ),
    );
  }

  Widget _styledText(String text, bool isUser) {
    final RegExp regex = RegExp(r'\*\*([^*]+)\*\*');
    final TextStyle normalStyle =
        TextStyle(fontSize: 14, color: isUser ? Colors.white : Colors.black);
    final TextStyle boldStyle = TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: isUser ? Colors.white : Colors.black);
    final TextStyle headingStyle = TextStyle(
        fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xff235543));

    List<Widget> children = [];
    while (text.isNotEmpty) {
      if (text.startsWith(regex)) {
        final match = regex.firstMatch(text);
        if (match != null) {
          String boldText = match.group(1)!;
          if (boldText.endsWith(':')) {
            // Treat as heading
            children.add(Text(boldText, style: headingStyle));
          } else {
            children.add(Text(boldText, style: boldStyle));
          }
          text = text.substring(match.end);
        }
      } else {
        int index = text.indexOf('**');
        if (index == -1) {
          children.add(Text(text, style: normalStyle));
          break;
        } else {
          children.add(Text(text.substring(0, index), style: normalStyle));
          text = text.substring(index);
        }
      }
    }

    return Wrap(
      alignment: isUser ? WrapAlignment.end : WrapAlignment.start,
      children: children,
    );
  }
}
