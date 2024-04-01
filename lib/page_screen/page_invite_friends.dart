import 'package:flutter/material.dart';

class PageInviteFriends extends StatefulWidget {
  const PageInviteFriends({Key? key}) : super(key: key);

  @override
  State<PageInviteFriends> createState() => _PageInviteFriendsState();
}

class _PageInviteFriendsState extends State<PageInviteFriends> {
  List<bool> isInvited = [false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Invite Friends',
            style: TextStyle(fontWeight: FontWeight.bold),),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20).copyWith(top: 20),
          child: Column(
            children: [
              Card(
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle, // Change to circle
                      ),
                    ),
                    title: Row(
                      children: [
                        Text(
                          'Virginia M. Patterson',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                            width:
                                8), // Adjust spacing between title and status
                      ],
                    ),
                    subtitle: Text('(+1) 702-897-7965'),
                    trailing: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isInvited[0] = !isInvited[0];
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor:
                            isInvited[0] ? Colors.blue : Colors.white,
                      ),
                      child: Text(isInvited[0] ? 'Invited' : 'Invite'),
                    ),
                    onTap: () {
                      // Navigate to the chat detail page
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => PageEReceipt()),
                      // );
                    },
                  ),
                ),
              ),
              Card(
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle, // Change to circle
                      ),
                    ),
                    title: Row(
                      children: [
                        Text(
                          'Dominick S. Jenkins',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                            width:
                                8), // Adjust spacing between title and status
                      ],
                    ),
                    subtitle: Text('(+1) 702-897-7965'),
                    trailing: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isInvited[1] = !isInvited[1];
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor:
                            isInvited[1] ? Colors.blue : Colors.white,
                      ),
                      child: Text(isInvited[1] ? 'Invited' : 'Invite'),
                    ),
                    onTap: () {
                      // Navigate to the chat detail page
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => PageEReceipt()),
                      // );
                    },
                  ),
                ),
              ),
              Card(
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle, // Change to circle
                      ),
                    ),
                    title: Row(
                      children: [
                        Text(
                          'Duncan E. Hoffman',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                            width:
                                8), // Adjust spacing between title and status
                      ],
                    ),
                    subtitle: Text('(+1)b727-688-4052'),
                    trailing: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isInvited[2] = !isInvited[2];
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor:
                            isInvited[2] ? Colors.blue : Colors.white,
                      ),
                      child: Text(isInvited[2] ? 'Invited' : 'Invite'),
                    ),
                    onTap: () {
                      // Navigate to the chat detail page
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => PageEReceipt()),
                      // );
                    },
                  ),
                ),
              ),
              Card(
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle, // Change to circle
                      ),
                    ),
                    title: Row(
                      children: [
                        Text(
                          'Roy R. McCraney',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                            width:
                                8), // Adjust spacing between title and status
                      ],
                    ),
                    subtitle: Text('(+1) 601-897-1714'),
                    trailing: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isInvited[3] = !isInvited[3];
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor:
                            isInvited[3] ? Colors.blue : Colors.white,
                      ),
                      child: Text(isInvited[3] ? 'Invited' : 'Invite'),
                    ),
                    onTap: () {
                      // Navigate to the chat detail page
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => PageEReceipt()),
                      // );
                    },
                  ),
                ),
              ),
              Card(
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle, // Change to circle
                      ),
                    ),
                    title: Row(
                      children: [
                        Text(
                          'Budi',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                            width:
                                8), // Adjust spacing between title and status
                      ],
                    ),
                    subtitle: Text('(+62) 811-111-1111'),
                    trailing: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isInvited[4] = !isInvited[4];
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor:
                            isInvited[4] ? Colors.blue : Colors.white,
                      ),
                      child: Text(isInvited[4] ? 'Invited' : 'Invite'),
                    ),
                    onTap: () {
                      // Navigate to the chat detail page
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => PageEReceipt()),
                      // );
                    },

                  ),

                ),
              ),
              Column(
                children: [
                  ListTile(
                    title: Text('Share Invite Via:',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset('images/facebook.png', width: 12),
                            Image.asset('images/twitter.png', width: 20),
                            Image.asset('images/gmail.png', width: 25),
                            Image.asset('images/whatsapp.png', width: 20),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          color: Colors.grey[300],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
