import 'package:e_learning/page_screen/page_inbox_calls_voice_call.dart';
import 'package:e_learning/page_screen/page_inbox_chat.dart';
import 'package:flutter/material.dart';

class PageInboxCalls extends StatefulWidget {
  const PageInboxCalls({Key? key}) : super(key: key);

  @override
  State<PageInboxCalls> createState() => _PageInboxCallsState();
}

class _PageInboxCallsState extends State<PageInboxCalls> {
  int _selectedIndex = 2;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // Handle navigation based on bottom navigation bar item tapped
    switch (index) {
      case 0:
      // Navigate to HOME page
      // Replace '/home' with the actual route name for the HOME page
        Navigator.pushReplacementNamed(context, '/home');
        break;
      case 1:
      // Navigate to MY COURSES page
      // Replace '/my_courses' with the actual route name for the MY COURSES page
        Navigator.pushReplacementNamed(context, '/my_courses');
        break;
      case 2:
      // Navigate to INBOX page
      // No need to navigate as we are already on the INBOX page
        break;
      case 3:
      // Navigate to TRANSACTION page
      // Replace '/transaction' with the actual route name for the TRANSACTION page
        Navigator.pushReplacementNamed(context, '/transaction');
        break;
      case 4:
      // Navigate to PROFILE page
      // Replace '/profile' with the actual route name for the PROFILE page
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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Handle chat button tap
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PageInboxChat()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      // backgroundColor: Colors.green, // Set green color for selected button
                      minimumSize: Size(150, 50), // Set button size
                    ),
                    child: Text(
                      'Chat',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Handle calls button tap
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PageInboxCalls()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      minimumSize: Size(150, 50), // Set button size
                    ),
                    child: Text(
                      'Calls',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              buildCallsCard(
                profileImage: AssetImage('assets/profile_image.jpg'),
                name: 'Virginia M. Patterson',
                callTime: 'Today, 10:30 AM',
                callDuration: '5 minutes',
              ),
              SizedBox(height: 10), // Add spacing between cards
              buildCallsCard(
                profileImage: AssetImage('assets/profile_image.jpg'),
                name: 'Dominick S. Jenkins',
                callTime: 'Yesterday, 2:00 PM',
                callDuration: '8 minutes',
              ),
              // Add more call cards as needed
            ],
          ),
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

  Widget buildCallsCard({
    required AssetImage profileImage,
    required String name,
    required String callTime,
    required String callDuration,
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
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(callTime),
              Text(callDuration),
            ],
          ),
          onTap: () {
            // Handle tapping on the call card
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => PageInboxCallsVoiceCall()),
            );
          },
        ),
      ),
    );
  }
}