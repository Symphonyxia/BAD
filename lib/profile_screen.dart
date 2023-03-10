import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'star.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset('assets/bg.jpg'),
          Transform.translate(
            offset: Offset(0, 100),
            child: Column(
              children: <Widget>[
                _buildProfileImage(context),
                _buildProfileDetails(context),
                _buildActions(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileImage(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      child: ClipOval(
        child: Image.asset(
          'assets/profile.png',
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }

  Widget _buildProfileDetails(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            'Mary Hope Tabunlupa',
  
            style: GoogleFonts.leckerliOne(fontSize: 35, fontWeight: FontWeight.w600),
          ),
       //   StarRating(
         //   value: 5,
       //)
          _buildDetailsRow('Age', '21'),
          _buildDetailsRow('Status', 'Alive'),
           _buildDetailsRow('Address', 'Iloilo'),
          _buildDetailsRow('Course', 'Information System'),
           _buildDetailsRow('Year Level', '3rd'),
          _buildDetailsRow('Likes to', 'Code'),

        ],
      ),
    );
  }

  Widget _buildDetailsRow(String heading, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          '$heading: ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(value),
      ],
    );
  }

  Widget _buildActions(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _buildIcon(Icons.paid, 'Business'),
        _buildIcon(Icons.filter_vintage, 'Social'),
        _buildIcon(Icons.palette, 'Arts'),
      ],
    );
  }

  Widget _buildIcon(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          Icon(
            icon,
            size: 40,
          ),
          Text(text)
        ],
      ),
    );
  }
}