import 'package:e_learning/page_screen/page_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class PageAddNewCard extends StatefulWidget {
  const PageAddNewCard({super.key});

  @override
  State<PageAddNewCard> createState() => _PageAddNewCardState();
}

class _PageAddNewCardState extends State<PageAddNewCard> {
  final _cardNameController = TextEditingController();
  final _cardNumberController = TextEditingController();
  final _expiryDateController = TextEditingController();
  final _cvvController = TextEditingController();

  String cardName = 'Timmy C. Hernandez';
  String cardNumber = '1234  5678  8765  0876';
  String expDate = '12/28';
  String cvvCode = '123';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Card',
          style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CreditCardWidget(
                customCardTypeIcons: [
                  CustomCardTypeIcon(
                    cardType: CardType.mastercard,
                    cardImage: Image.asset(
                      "images/mastercard.png",
                      height: 30,
                      width: 30,
                    ),
                  ),
                  CustomCardTypeIcon(
                    cardType: CardType.otherBrand,
                    cardImage: Image.asset(
                      "images/mastercard.png",
                      height: 30,
                      width: 30,
                    ),
                  ),
                ],
                cardNumber: cardNumber,
                expiryDate: expDate,
                cardHolderName: cardName,
                cvvCode: cvvCode,
                showBackView: false, // Set to true to show the back view of the card
                obscureCardNumber: false, // Set to false to show full card number
                obscureCardCvv: false,
                onCreditCardWidgetChange: (CreditCardBrand cardBrand) {},
                isChipVisible: false,
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Card Name*',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Card(
                    child: ListTile(
                      title: TextFormField(
                        controller: _cardNameController,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(
                              RegExp(r'[a-zA-Z\s]')),
                          _TextOnlyInputFormatter()
                        ],
                        // ^ Allow only alphabets and whitespace characters
                        decoration: InputDecoration(
                          hintText: 'Belinda C. Cullen',
                          border: InputBorder.none,
                          suffixIcon: IconButton(
                            onPressed: () {
                              _cardNameController.clear();
                            },
                            icon: Icon(Icons.clear),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Card Number*',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Card(
                    child: ListTile(
                      title: TextFormField(
                        controller: _cardNumberController,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          LengthLimitingTextInputFormatter(16),
                          _CardNumberInputFormatter(),
                        ],
                        decoration: InputDecoration(
                          hintText: '****  **65  8765  3456',
                          border: InputBorder.none,
                          suffixIcon: IconButton(
                            onPressed: () {
                              _cardNumberController.clear();
                            },
                            icon: Icon(Icons.clear),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter a card number';
                          }
                          if (value.replaceAll(' ', '').length != 16) {
                            return 'Card number must be exactly 16 digits';
                          }
                          // Add additional validation for the card number here
                          return null;
                        },
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Expiry Date*',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Card(
                    child: ListTile(
                      title: TextFormField(
                        controller: _expiryDateController,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(
                            RegExp(
                                r'[0-9/ ]'), // Allow only numbers, '/' and spaces
                          ),
                          LengthLimitingTextInputFormatter(
                              7), // Limit the input length
                          _ExpiryDateInputFormatter(), // Custom input formatter
                        ],
                        decoration: InputDecoration(
                          hintText: 'MM/YYYY',
                          border: InputBorder.none,
                          suffixIcon: IconButton(
                            onPressed: () {
                              _expiryDateController.clear();
                            },
                            icon: Icon(Icons.clear),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter an expiry date';
                          }
                          if (!RegExp(r'^(0[1-9]|1[0-2])/([0-9]{4})$')
                              .hasMatch(value)) {
                            return 'Invalid expiry date';
                          }
                          // Additional validation for the expiry date can be added here
                          return null;
                        },
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'CVV*',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Card(
                        child: ListTile(
                          title: Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  controller: _cvvController,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.allow(
                                      RegExp(r'[0-9 ]'),
                                    ),
                                    LengthLimitingTextInputFormatter(3),
                                  ],
                                  decoration: InputDecoration(
                                    hintText: '***',
                                    border: InputBorder.none,
                                    suffixIcon: IconButton(
                                      onPressed: () {
                                        _cvvController.clear();
                                      },
                                      icon: Icon(Icons.clear),
                                    ),
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter a CVV';
                                    }
                                    if (!RegExp(r'^[0-9]*$').hasMatch(value)) {
                                      return 'Invalid CVV';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => PageProfile(),
                    ));
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Color(0xFF0961F5),
                    padding:
                        EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Add New Card',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(width: 8.0),
                      Container(
                        width: 24.0,
                        height: 24.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(Icons.arrow_forward_outlined,
                            size: 16.0, color: Color(0xFF0961F5)),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ExpiryDateInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    // Add '/' after entering the month part
    if (newValue.text.length == 2 && !newValue.text.endsWith('/')) {
      return TextEditingValue(
        text: '${newValue.text}/',
        selection: TextSelection.collapsed(offset: newValue.text.length + 1),
      );
    }
    return newValue;
  }
}

class _TextOnlyInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final newText = newValue.text
        .replaceAll(RegExp(r'[0-9]'), ''); // Remove numeric characters
    return newValue.copyWith(text: newText);
  }
}

class _CardNumberInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final trimmedText = newValue.text
        .replaceAll(RegExp(r'\D'), ''); // Remove non-numeric characters
    String formattedText = '';

    for (int i = 0; i < trimmedText.length; i++) {
      if (i % 4 == 0 && i != 0) {
        formattedText += '  ';
      }
      formattedText += trimmedText[i];
    }

    return TextEditingValue(
      text: formattedText,
      selection: TextSelection.collapsed(offset: formattedText.length),
    );
  }
}
