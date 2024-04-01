import 'package:e_learning/page_screen/page_profile.dart';
import 'package:flutter/material.dart';

class PageProfileEditProfiles extends StatefulWidget {
  const PageProfileEditProfiles({Key? key}) : super(key: key);

  @override
  _PageProfileEditProfilesState createState() =>
      _PageProfileEditProfilesState();
}

class _PageProfileEditProfilesState extends State<PageProfileEditProfiles> {

  late DateTime _selectedDate;

  @override
  void initState() {
    super.initState();
    _selectedDate = DateTime.now();
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (pickedDate != null && pickedDate != _selectedDate) {
      setState(() {
        _selectedDate = pickedDate;
      });
    }
  }

  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _nickNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _statusController = TextEditingController(text: 'Student');
  final TextEditingController _phoneNumberController = TextEditingController(text: '( +1 )  724-848-1225');

  final List<String> _genders = ['Male', 'Female'];
  String _selectedGender = 'Male'; // Initialize with a default value


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile',
          style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    child: CircleAvatar(
                      radius: 53.0,
                      backgroundColor: Colors.green,
                    ),
                  ),
                  Positioned(
                    child: CircleAvatar(
                      radius: 50.0,
                      backgroundImage: AssetImage('assets/profile_image.png'),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Card(
                child: ListTile(
                  title: TextFormField(
                    controller: _fullNameController,
                    decoration: InputDecoration(
                      labelText: 'Full Name',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  title: TextFormField(
                    controller: _nickNameController,
                    decoration: InputDecoration(
                      labelText: 'Nick Name',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              Card(
                child: GestureDetector(
                  onTap: () => _selectDate(context),
                  child: ListTile(
                    title: Text(
                      'Date of Birth',
                      style: TextStyle(),
                    ),
                    leading: const Icon(Icons.calendar_today),
                    trailing: Text(
                      '${_selectedDate.day}/${_selectedDate.month}/${_selectedDate.year}',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  title: TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: InputBorder.none,
                    ),
                  ),
                  leading: const Icon(Icons.mail),
                ),
              ),
              Card(
                child: ListTile(
                  title: TextFormField(
                    controller: _phoneNumberController,
                    decoration: InputDecoration(
                      labelText: 'Phone Number',
                      border: InputBorder.none,
                    ),
                  ),
                  leading: const Icon(Icons.calendar_today),
                ),
              ),

              Card(
                child: ListTile(
                  title: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      labelText: 'Gender',
                    ),
                    value: _selectedGender, // Use a String variable to hold the selected gender
                    onChanged: (value) {
                      setState(() {
                        _selectedGender = value!; // Update the selected gender
                      });
                    },
                    items: _genders
                        .map((gender) => DropdownMenuItem<String>(
                      value: gender,
                      child: Text(gender),
                    ))
                        .toList(),
                  ),
                ),
              ),


              Card(
                child: ListTile(
                  title: TextFormField(
                    controller: _statusController,
                    decoration: InputDecoration(
                      labelText: 'Status',
                      border: InputBorder.none,
                    ),
                  ),
                ),
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
                    padding: EdgeInsets.symmetric(
                        horizontal: 32.0, vertical: 16.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Update',
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
                        child: Icon(Icons.arrow_forward_outlined, size: 16.0,
                            color: Color(0xFF0961F5)),
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


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Edit Profile'),
//       ),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Stack(
//               alignment: Alignment.center,
//               children: [
//                 Positioned(
//                   child: CircleAvatar(
//                     radius: 53.0,
//                     backgroundColor: Colors.green,
//                   ),
//                 ),
//                 Positioned(
//                   child: CircleAvatar(
//                     radius: 50.0,
//                     backgroundImage: AssetImage('assets/profile_image.png'),
//                   ),
//                 ),
//               ],
//             ),
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 SizedBox(height: 32),
//                 TextFormField(
//                   decoration: const InputDecoration(
//                     labelText: 'Full Name',
//                     hintText: 'Enter your full name',
//                   ),
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter your full name';
//                     }
//                     return null;
//                   },
//                   onSaved: (value) {
//                     _fullName = value!;
//                   },
//                 ),
//                 const SizedBox(height: 16),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Expanded(
//                       child: TextFormField(
//                         decoration: const InputDecoration(
//                           labelText: 'Nick Name',
//                           hintText: 'Enter your nick name',
//                         ),
//                         onSaved: (value) {
//                           _nickName = value!;
//                         },
//                       ),
//                     ),
//                     const SizedBox(width: 16),
//                   ],
//                 ),
//                 const SizedBox(height: 16),
//                 InkWell(
//                   onTap: () async {
//                     final DateTime? date = await showDatePicker(
//                       context: context,
//                       initialDate: DateTime.now(),
//                       firstDate: DateTime(1900),
//                       lastDate: DateTime.now(),
//                     );
//                     if (date != null) {
//                       setState(() {
//                         _dateOfBirth = date;
//                       });
//                     }
//                   },
//                   child: InputDecorator(
//                     decoration: const InputDecoration(
//                       labelText: 'Date of Birth',
//                     ),
//                     child: Text(_dateOfBirth.toString().split(' ').first),
//                   ),
//                 ),
//                 SizedBox(height: 16),
//                 TextFormField(
//                   keyboardType: TextInputType.emailAddress,
//                   decoration: const InputDecoration(
//                     labelText: 'Email',
//                     hintText: 'Enter your email address',
//                   ),
//                   validator: (value) {
//                     if (value == null ||
//                         value.isEmpty ||
//                         !value.contains('@') ||
//                         !value.contains('.')) {
//                       return 'Please enter a valid email address';
//                     }
//                     return null;
//                   },
//                   onSaved: (value) {
//                     _email = value!;
//                   },
//                 ),
//                 const SizedBox(height: 16),
//                 Container(
//                   height: 56,
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(8),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.grey.withOpacity(0.3),
//                         spreadRadius: 1,
//                         blurRadius: 4,
//                         offset: Offset(0, 3),
//                       ),
//                     ],
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 16),
//                     child: TextFormField(
//                       initialValue: _phoneNumber,
//                       enabled: false,
//                       decoration: const InputDecoration(
//                         hintText: 'Your phone number is linked to your account',
//                       ),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 16),
//                 DropdownButtonFormField<String>(
//                   decoration: const InputDecoration(
//                     labelText: 'Gender',
//                   ),
//                   value: _gender,
//                   onChanged: (value) {
//                     setState(() {
//                       _gender = value!;
//                     });
//                   },
//                   items: _genders
//                       .map((gender) => DropdownMenuItem<String>(
//                             value: gender,
//                             child: Text(gender),
//                           ))
//                       .toList(),
//                 ),
//                 const SizedBox(height: 16),
//                 DropdownButtonFormField<String>(
//                   decoration: const InputDecoration(
//                     labelText: 'Student Status',
//                   ),
//                   value: _studentStatus,
//                   onChanged: (value) {
//                     setState(() {
//                       _studentStatus = value!;
//                     });
//                   },
//                   items: _studentStatusList
//                       .map((status) => DropdownMenuItem<String>(
//                             value: status,
//                             child: Text(status),
//                           ))
//                       .toList(),
//                 ),
//                 const SizedBox(height: 24),
//                 Container(
//                   height: 56,
//                   decoration: BoxDecoration(
//                     color: Colors.green,
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 16),
//                     child: Center(
//                       child: Text(
//                         'Save',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
