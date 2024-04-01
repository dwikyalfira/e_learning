import 'package:e_learning/page_screen/page_chats_detail.dart';
import 'package:e_learning/page_screen/page_inbox_calls.dart';
import 'package:flutter/material.dart';

class PageInboxChat extends StatefulWidget {
  const PageInboxChat({Key? key}) : super(key: key);

  @override
  State<PageInboxChat> createState() => _PageInboxChatState();
}

class _PageInboxChatState extends State<PageInboxChat> {
  int _selectedIndex = 2;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // Handle navigation based on bottom navigation bar item tapped
    switch (index) {
      case 0:
        Navigator.pushReplacementNamed(context, '/home');
        break;
      case 1:
        Navigator.pushReplacementNamed(context, '/my_courses');
        break;
      case 2:
        Navigator.pushReplacementNamed(context, '/inbox');
        break;
      case 3:
        Navigator.pushReplacementNamed(context, '/transaction');
        break;
      case 4:
        Navigator.pushReplacementNamed(context, '/profile');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Inbox',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Add your search functionality here
            },
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(

          children: [
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                ElevatedButton(
                  onPressed: () {
                    // Handle chat button tap
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              PageInboxChat()), // Replace ChatPage() with your actual chat page widget
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    minimumSize: Size(150, 50), // Set button size
                  ),
                  child: Text(
                    'Chat',
                    style: TextStyle(
                        color: Colors.black), // Set text color to black
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Handle calls button tap
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              PageInboxCalls()), // Replace ChatPage() with your actual chat page widget
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    // Set background color if needed
                    backgroundColor: _selectedIndex == 1
                        ? Colors.green
                        : null, // Set green color for selected button
                    minimumSize: Size(150, 50), // Set button size
                  ),
                  child: Text(
                    'Calls',
                    style: TextStyle(
                        color: Colors.black), // Set text color to black
                  ),
                ),
              ],
            ),

            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: buildChatCard(
                profileImage: AssetImage('assets/profile_image.jpg'),
                name: 'Virginia M. Patterson',
                message: 'Hi, Good Evening Bro!',
              ),
            ),
            // SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: buildChatCard(
                profileImage: AssetImage('assets/profile_image.jpg'),
                name: 'Dominick S. Jenkins',
                message: 'I Just Finished It.!?',
              ),
            ),
            // Add more chat cards as needed
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        elevation: 5.0,
        unselectedItemColor: Colors.black,
        selectedItemColor: Color(0xFF167F71),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'HOME',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            label: 'MY COURSES',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'INBOX',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money),
            label: 'TRANSACTION',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'PROFILE',
          ),
        ],
      ),
    );
  }

  Widget buildChatCard({
    required AssetImage profileImage,
    required String name,
    required String message,
  }) {
    return Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: profileImage,
            backgroundColor: Colors.black,
          ),
          title: Text(
            name,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(message),
          onTap: () {
            // Navigate to the chat detail page
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PageChatsDetail()),
            );
          },
        ),
      ),
    );
  }
}


