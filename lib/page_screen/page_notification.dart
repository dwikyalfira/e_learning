import 'package:flutter/material.dart';

class PageNotification extends StatefulWidget {
  const PageNotification({Key? key});

  @override
  State<PageNotification> createState() => _PageNotificationState();
}

class _PageNotificationState extends State<PageNotification> {
  bool _isSpecialOfferEnabled = true;
  bool _isSoundEnabled = true;
  bool _isVibrateEnabled = false;
  bool _isGeneralNotificationEnabled = true;
  bool _isPromoAndNotificatonEnabled = true;
  bool _isPaymentOptionEnabled = false;
  bool _isAppUpdateEnabled = true;
  bool _isNewServiceAvailabeEnabled = true;
  bool _isNewTipsAvailabeEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification',
          style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          SwitchListTile(
            value: _isSpecialOfferEnabled,
            onChanged: (value) {
              setState(() {
                _isSpecialOfferEnabled = value;
              });
            },
            title: Text('Special Offer'),
            secondary: Icon(Icons.local_offer),
            activeColor: Colors.blue, // Set active color to blue
          ),
          SwitchListTile(
            value: _isSoundEnabled,
            onChanged: (value) {
              setState(() {
                _isSoundEnabled = value;
              });
            },
            title: Text('Sound'),
            secondary: Icon(Icons.volume_up),
            activeColor: Colors.blue, // Set active color to blue
          ),
          SwitchListTile(
            value: _isVibrateEnabled,
            onChanged: (value) {
              setState(() {
                _isVibrateEnabled = value;
              });
            },
            title: Text('Vibrate'),
            secondary: Icon(Icons.vibration),
            activeColor: Colors.blue, // Set active color to blue
          ),
          SwitchListTile(
            value: _isGeneralNotificationEnabled,
            onChanged: (value) {
              setState(() {
                _isGeneralNotificationEnabled = value;
              });
            },
            title: Text('General Notification'),
            secondary: Icon(Icons.local_offer),
            activeColor: Colors.blue, // Set active color to blue
          ),
          SwitchListTile(
            value: _isPromoAndNotificatonEnabled,
            onChanged: (value) {
              setState(() {
                _isPromoAndNotificatonEnabled = value;
              });
            },
            title: Text('Promo & Discount'),
            secondary: Icon(Icons.volume_up),
            activeColor: Colors.blue, // Set active color to blue
          ),
          SwitchListTile(
            value: _isPaymentOptionEnabled,
            onChanged: (value) {
              setState(() {
                _isPaymentOptionEnabled= value;
              });
            },
            title: Text('Payment Option'),
            secondary: Icon(Icons.vibration),
            activeColor: Colors.blue, // Set active color to blue
          ),
          SwitchListTile(
            value: _isAppUpdateEnabled,
            onChanged: (value) {
              setState(() {
                _isAppUpdateEnabled = value;
              });
            },
            title: Text('App Update'),
            secondary: Icon(Icons.local_offer),
            activeColor: Colors.blue, // Set active color to blue
          ),
          SwitchListTile(
            value: _isNewServiceAvailabeEnabled,
            onChanged: (value) {
              setState(() {
                _isNewServiceAvailabeEnabled = value;
              });
            },
            title: Text('New Service Available'),
            secondary: Icon(Icons.volume_up),
            activeColor: Colors.blue, // Set active color to blue
          ),
          SwitchListTile(
            value: _isNewTipsAvailabeEnabled,
            onChanged: (value) {
              setState(() {
                _isNewTipsAvailabeEnabled = value;
              });
            },
            title: Text('New Tips Availabe'),
            secondary: Icon(Icons.vibration),
            activeColor: Colors.blue, // Set active color to blue
          ),
        ],
      ),
    );
  }
}
