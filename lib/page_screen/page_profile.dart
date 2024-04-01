import 'package:e_learning/page_screen/page_invite_friends.dart';
import 'package:e_learning/page_screen/page_language.dart';
import 'package:e_learning/page_screen/page_mycourse_ongoing_lessons.dart';
import 'package:e_learning/page_screen/page_notification.dart';
import 'package:e_learning/page_screen/page_payment_option.dart';
import 'package:e_learning/page_screen/page_profile_editprofile.dart';
import 'package:e_learning/page_screen/page_security.dart';
import 'package:e_learning/page_screen/page_terms_and_conditions.dart';
import 'package:flutter/material.dart';

class PageProfile extends StatefulWidget {
  const PageProfile({super.key});

  @override
  State<PageProfile> createState() => _PageProfileState();
}

class _PageProfileState extends State<PageProfile> {
  int _selectedIndex = 4;
  bool _isDarkMode = false;

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
        title: Text('Profile',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      radius: 53.0,
                      backgroundColor: Colors.green,
                    ),
                    CircleAvatar(
                      radius: 50.0,
                      backgroundImage: AssetImage('assets/profile_image.png'),
                    ),

                  ],
                ),
                SizedBox(height: 8.0),
                Text(
                  'James S. Hernandez',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4.0),
                Text(
                  'jameshernandez@example.com',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(16.0),
              children: [
                GestureDetector(
                  onTap: () {
                    // Navigate to the edit profile page
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PageProfileEditProfiles()));
                  },
                  child: ListTile(
                    leading: Icon(Icons.edit),
                    title: Text('Edit Profile'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigate to the edit profile page
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PagePaymentOption()));
                  },
                  child: ListTile(
                    leading: Icon(Icons.payment),
                    title: Text('Payment Option'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigate to the edit profile page
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PageNotification()));
                  },
                  child: ListTile(
                    leading: Icon(Icons.notifications),
                    title: Text('Notifications'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigate to the security page
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PageSecurity()));
                  },
                  child: ListTile(
                    leading: Icon(Icons.security),
                    title: Text('Security'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigate to the edit profile page
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PageLanguage()));
                  },
                  child: ListTile(
                    leading: Icon(Icons.language),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Language'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'English (US)',
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(Icons.arrow_forward_ios),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SwitchListTile(
                  value: _isDarkMode,
                  onChanged: (value) {
                    setState(() {
                      _isDarkMode = value;
                    });
                  },
                  title: Text('Dark Mode'),
                  secondary: Icon(Icons.brightness_4),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigate to the edit profile page
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PageTermsAndConditions()));
                  },
                  child: ListTile(
                    leading: Icon(Icons.policy),
                    title: Text('Terms and Conditions'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigate to the edit profile page
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => PageProfileEditProfiles()));
                  },
                  child: ListTile(
                    leading: Icon(Icons.help),
                    title: Text('Help Center'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigate to the edit profile page
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PageInviteFriends()));
                  },
                  child: ListTile(
                    leading: Icon(Icons.people),
                    title: Text('Invite Friends'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigate to the edit profile page
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PageMyCourseOngoingLessons()));
  },
                  child: ListTile(
                    leading: Icon(Icons.logout_rounded, color: Colors.red,),
                    title: Text('Logout',
                    style: TextStyle(color: Colors.red),),
                    trailing: Icon(Icons.arrow_forward_ios, color: Colors.red,),
                  ),
                ),
              ],
            ),
          ),
        ],
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
}
