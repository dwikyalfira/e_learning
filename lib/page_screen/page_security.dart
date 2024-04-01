import 'package:flutter/material.dart';

class PageSecurity extends StatefulWidget {
  const PageSecurity({Key? key});

  @override
  State<PageSecurity> createState() => _PageSecurityState();
}

class _PageSecurityState extends State<PageSecurity> {
  bool _isRememberMeEnabled = true;
  bool _isBiometricIDEnabled = true;
  bool _isFaceIDEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Security',
          style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(16.0),
              children: [
                SwitchListTile(
                  value: _isRememberMeEnabled,
                  onChanged: (value) {
                    setState(() {
                      _isRememberMeEnabled = value;
                    });
                  },
                  title: Text('Remember Me'),
                  activeColor: Colors.blue, // Set active color to blue
                ),
                SwitchListTile(
                  value: _isBiometricIDEnabled,
                  onChanged: (value) {
                    setState(() {
                      _isBiometricIDEnabled = value;
                    });
                  },
                  title: Text('Biometric ID'),
                  activeColor: Colors.blue, // Set active color to blue
                ),
                SwitchListTile(
                  value: _isFaceIDEnabled,
                  onChanged: (value) {
                    setState(() {
                      _isFaceIDEnabled = value;
                    });
                  },
                  title: Text('Face ID'),
                  activeColor: Colors.blue, // Set active color to blue
                ),
                GestureDetector(
                  onTap: () {
                    // Navigate to the Google Authenticator page
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => PageNotification()));
                  },
                  child: ListTile(
                    title: Text('Google Authenticator'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),
                SizedBox(
                    height:
                        16), // Add some space between the list items and the buttons
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to the change pin page
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => ChangePinPage()));
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                child: Text(
                  'Change PIN',
                  style: TextStyle(fontSize: 18.0, color: Colors.black),
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to the change password page
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => ChangePasswordPage()));
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  backgroundColor: Color(0xFF0961F5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    'Change Password',
                    style: TextStyle(fontSize: 18.0),
                  ),
                      SizedBox(width: 8.0),
                  Container(
                    width: 25.0,
                    height: 25.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.arrow_forward_outlined,
                        size: 16.0, color: Color(0xFF0961F5)),
                  ),
                ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
