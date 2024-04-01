import 'package:flutter/material.dart';

class PageChatsDetail extends StatefulWidget {
  const PageChatsDetail({Key? key}) : super(key: key);

  @override
  _PageChatDetailState createState() => _PageChatDetailState();
}

class _PageChatDetailState extends State<PageChatsDetail> {
  TextEditingController _messageController = TextEditingController();
  bool _isRecording = false;

  List<String> _messages = [
    "Hi, Nicholas Good Evening!",
    "Hi there!",
    "How was your UI/UX Design Course Like.?",
    "I'm fine, thank you.",
    "What about you?",
    "I'm good too.",
    "That's great!",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inbox',
          style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                return ChatBubble(
                  message: _messages[index],
                  isSentByMe: index % 2 == 0, // Example logic for alternating between sender and receiver
                );
              },
            ),
          ),
          Divider(),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  // Implement file attachment functionality
                },
                icon: Icon(Icons.attach_file),
              ),
              Expanded(
                child: TextField(
                  controller: _messageController,
                  decoration: InputDecoration(
                    hintText: 'Message...',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  // Send message functionality
                  String message = _messageController.text.trim();
                  if (message.isNotEmpty) {
                    // _sendMessage(message);
                    _messageController.clear();
                  }
                },
                icon: Icon(Icons.send),
              ),
              IconButton(
                onPressed: () {
                  if (_isRecording) {
                    // Stop recording voice message
                  } else {
                    // Start recording voice message
                  }
                  setState(() {
                    _isRecording = !_isRecording;
                  });
                },
                icon: Icon(_isRecording ? Icons.stop : Icons.mic),
              ),

            ],
          ),
        ],
      ),
    );
  }

  // void _sendMessage(String message) {
  //   setState(() {
  //     _messages.add(message);
  //   });
  // }
}

class ChatBubble extends StatelessWidget {
  final String message;
  final bool isSentByMe;

  const ChatBubble({
    Key? key,
    required this.message,
    required this.isSentByMe,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isSentByMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: isSentByMe ? Colors.blue : Colors.grey.shade300,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Text(
          message,
          style: TextStyle(color: isSentByMe ? Colors.white : Colors.black),
        ),
      ),
    );
  }
}
