import 'package:e_learning/page_screen/page_ereceipt.dart';
import 'package:flutter/material.dart';

class PageTransaction extends StatefulWidget {
  const PageTransaction({super.key});

  @override
  State<PageTransaction> createState() => _PageTransactionState();
}

class _PageTransactionState extends State<PageTransaction> {
  int _selectedIndex = 3;

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
        Navigator.pushReplacementNamed(context, '/');
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
        title: Text('Transaction',
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
      body: Column(
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
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                title: Row(
                  children: [
                    Text(
                      'Build Personal Branding',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 8), // Adjust spacing between title and status
                    Text(
                      'Paid',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.green, // Customize color as needed
                      ),
                    ),
                  ],
                ),
                subtitle: Text('Web Designer'),
                onTap: () {
                  // Navigate to the chat detail page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PageEReceipt()),
                  );
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
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                title: Row(
                  children: [
                    Text(
                      'Mastering Blender 3D',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 8), // Adjust spacing between title and status
                    Text(
                      'Paid',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.green, // Customize color as needed
                      ),
                    ),
                  ],
                ),
                subtitle: Text('UI/UX Designer'),
                onTap: () {
                  // Navigate to the chat detail page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PageEReceipt()),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
