import 'package:flutter/material.dart';

class PageLanguage extends StatefulWidget {
  const PageLanguage({Key? key}) : super(key: key);

  @override
  State<PageLanguage> createState() => _PageLanguageState();
}

class _PageLanguageState extends State<PageLanguage> {
  int _selectedLanguage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Language',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Subcategories:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          ),
          ListTile(
            title: Text('English (US)'),
            trailing: CustomRadio(
              isSelected: _selectedLanguage == 0,
              onChanged: (value) {
                setState(() {
                  _selectedLanguage = value;
                });
              },
              value: 0,
            ),
          ),
          ListTile(
            title: Text('English (UK)'),
            trailing: CustomRadio(
              isSelected: _selectedLanguage == 1,
              onChanged: (value) {
                setState(() {
                  _selectedLanguage = value;
                });
              },
              value: 1,
            ),
          ),
          ListTile(
            title: Text('All Language:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          ),
          ListTile(
            title: Text('English (US)'),
            trailing: CustomRadio(
              isSelected: _selectedLanguage == 0,
              onChanged: (value) {
                setState(() {
                  _selectedLanguage = value;
                });
              },
              value: 0,
            ),
          ),
          ListTile(
            title: Text('English (UK)'),
            trailing: CustomRadio(
              isSelected: _selectedLanguage == 1,
              onChanged: (value) {
                setState(() {
                  _selectedLanguage = value;
                });
              },
              value: 1,
            ),
          ),
          ListTile(
            title: Text('Arabic'),
            trailing: CustomRadio(
              isSelected: _selectedLanguage == 3,
              onChanged: (value) {
                setState(() {
                  _selectedLanguage = value;
                });
              },
              value: 3,
            ),
          ),
          ListTile(
            title: Text('Hindi'),
            trailing: CustomRadio(
              isSelected: _selectedLanguage == 4,
              onChanged: (value) {
                setState(() {
                  _selectedLanguage = value;
                });
              },
              value: 4,
            ),
          ),
          ListTile(
            title: Text('Bengali'),
            trailing: CustomRadio(
              isSelected: _selectedLanguage == 5,
              onChanged: (value) {
                setState(() {
                  _selectedLanguage = value;
                });
              },
              value: 5,
            ),
          ),
          ListTile(
            title: Text('Deutsch'),
            trailing: CustomRadio(
              isSelected: _selectedLanguage == 6,
              onChanged: (value) {
                setState(() {
                  _selectedLanguage = value;
                });
              },
              value: 6,
            ),
          ),
          ListTile(
            title: Text('Italian'),
            trailing: CustomRadio(
              isSelected: _selectedLanguage == 7,
              onChanged: (value) {
                setState(() {
                  _selectedLanguage = value;
                });
              },
              value: 7,
            ),
          ),
          ListTile(
            title: Text('Korean'),
            trailing: CustomRadio(
              isSelected: _selectedLanguage == 8,
              onChanged: (value) {
                setState(() {
                  _selectedLanguage = value;
                });
              },
              value: 8,
            ),
          ),
          ListTile(
            title: Text('Francais'),
            trailing: CustomRadio(
              isSelected: _selectedLanguage == 9,
              onChanged: (value) {
                setState(() {
                  _selectedLanguage = value;
                });
              },
              value: 9,
            ),
          ),
          ListTile(
            title: Text('Russian'),
            trailing: CustomRadio(
              isSelected: _selectedLanguage == 10,
              onChanged: (value) {
                setState(() {
                  _selectedLanguage = value;
                });
              },
              value: 10,
            ),
          ),
          ListTile(
            title: Text('Polish'),
            trailing: CustomRadio(
              isSelected: _selectedLanguage == 11,
              onChanged: (value) {
                setState(() {
                  _selectedLanguage = value;
                });
              },
              value: 11,
            ),
          ),
          ListTile(
            title: Text('Spanish'),
            trailing: CustomRadio(
              isSelected: _selectedLanguage == 12,
              onChanged: (value) {
                setState(() {
                  _selectedLanguage = value;
                });
              },
              value: 12,
            ),
          ),
          ListTile(
            title: Text('Mandarin'),
            trailing: CustomRadio(
              isSelected: _selectedLanguage == 13,
              onChanged: (value) {
                setState(() {
                  _selectedLanguage = value;
                });
              },
              value: 13,
            ),
          ),
        ],
      ),
    );
  }
}

class CustomRadio extends StatelessWidget {
  final bool isSelected;
  final Function(int) onChanged;
  final int value;

  const CustomRadio({
    required this.isSelected,
    required this.onChanged,
    required this.value,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChanged(value);
      },
      child: Container(
        width: 24,
        height: 24,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), // Adjust the radius as needed
          border: Border.all(
            color: Colors.grey.shade400,
            width: 2,
          ),
          color: isSelected ? Color(0xFF167F71) : Color(0xFFE8F1FF),
        ),
        child: isSelected
            ? Center(
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 16,
                ),
              )
            : Container(),
      ),
    );
  }
}
