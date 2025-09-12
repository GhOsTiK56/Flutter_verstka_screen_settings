import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(children: [_UserIconWidget(), _MenuWidgetAccaunt()]),
    );
  }
}

class _MenuWidgetAccaunt extends StatelessWidget {
  const _MenuWidgetAccaunt({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 25, 25, 26),
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Accaunt',
            style: TextStyle(
              color: Color.fromARGB(255, 118, 115, 177),
              fontSize: 20,
            ),
          ),
          SizedBox(height: 10),
          _MenuWidgetAccauntRow(
            textMain: '+7 (953) 115-76-13',
            textHide: 'Tap for change your phone number',
          ),
          SizedBox(height: 10),
          _MenuWidgetAccauntRow(
            textMain: '@KarenAkobyan5',
            textHide: 'User name',
          ),
          SizedBox(height: 10),
          _MenuWidgetAccauntRow(
            textMain: 'Something about me',
            textHide: 'About myself',
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}

class _MenuWidgetAccauntRow extends StatelessWidget {
  final String _textMain;
  final String _textHide;

  const _MenuWidgetAccauntRow({
    super.key,
    required String textMain,
    required String textHide,
  }) : _textMain = textMain,
       _textHide = textHide;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(_textMain, style: TextStyle(color: Colors.white, fontSize: 20)),
        Text(_textHide, style: TextStyle(color: Colors.grey, fontSize: 15)),
      ],
    );
  }
}

class _UserIconWidget extends StatelessWidget {
  const _UserIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Image.asset('assets/images/profile_image.png'),
            _IconButtonBack(),
            _TextOnImage(),
            _ImageButtonCamera(),
          ],
        ),
      ],
    );
  }
}

class _ImageButtonCamera extends StatelessWidget {
  const _ImageButtonCamera({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 20,
      right: 20,
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: Color(0xFF635AFF),
          shape: BoxShape.circle,
        ),
        child: IconButton(
          onPressed: () {},
          icon: Icon(Icons.camera_alt),
          color: Colors.white,
        ),
      ),
    );
  }
}

class _TextOnImage extends StatelessWidget {
  const _TextOnImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      // Text
      left: 20,
      bottom: 20,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Karen",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            "в сети",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 17,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

class _IconButtonBack extends StatelessWidget {
  const _IconButtonBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      // IconButtonBack
      left: 10,
      top: 30,
      child: IconButton(
        onPressed: () {},
        icon: Icon(Icons.arrow_back),
        iconSize: 35,
        color: Colors.white,
      ),
    );
  }
}
