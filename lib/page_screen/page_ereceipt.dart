import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageEReceipt extends StatefulWidget {
  const PageEReceipt({super.key});

  @override
  State<PageEReceipt> createState() => _PageEReceiptState();
}

class _PageEReceiptState extends State<PageEReceipt> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('E-Receipt',
          style: TextStyle(fontWeight: FontWeight.bold),),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              showMenu(
                context: context,
                position: RelativeRect.fromLTRB(
                  MediaQuery.of(context).size.width,
                  kToolbarHeight,
                  0.0,
                  0.0,
                ),
                items: <PopupMenuEntry>[
                  PopupMenuItem(
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.share),
                        SizedBox(width: 10),
                        Text('Share'),
                      ],
                    ),
                    value: 'Share',
                  ),
                  PopupMenuItem(
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.download),
                        SizedBox(width: 10),
                        Text('Download'),
                      ],
                    ),
                    value: 'Download',
                  ),
                  PopupMenuItem(
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.print),
                        SizedBox(width: 10),
                        Text('Print'),
                      ],
                    ),
                    value: 'Print',
                  ),
                ],
              ).then((selectedValue) {
                if (selectedValue != null) {
                  print('Selected: $selectedValue');
                }
              });
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // SizedBox(height: 5), // Spacer between input fields and images
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 100,
                    height: 100,
                    child: Image.asset('images/receipt.png'),
                  ),
                ),
                SizedBox(height: 1,),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 200,
                    height: 200,
                    child: Image.asset('images/barcode.png'),
                  ),
                ),
                // Display user information
                ListTile(
                  dense: true,
                  title: Text('Name'),
                  trailing: Text('Scoot R. Shoemake'),
                ),
                ListTile(
                  dense: true,
                  title: Text('Email ID'),
                  trailing: Text('shoemake.redia@gmail.com'),
                ),
                ListTile(
                  dense: true,
                  title: Text('Course 3D'),
                  trailing: Text('Character Illustation Cre.'),
                ),
                ListTile(
                  dense: true,
                  title: Text('Category'),
                  trailing: Text('Web Development'),
                ),
                ListTile(
                  dense: true,
                  title: Text('Transaction ID'),
                  trailing: Text('SK3456789000'),
                ),
                ListTile(
                  dense: true,
                  title: Text('Price'),
                  trailing: Text('\$55.00'),
                ),
                ListTile(
                  dense: true,
                  title: Text('Date'),
                  trailing: Text('Nov 20, 2024 / 15.45'),
                ),
                ListTile(
                  dense: true,
                  title: Text('Status'),
                  trailing: Text('Paid',
                  style: TextStyle(color: Colors.green),),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
