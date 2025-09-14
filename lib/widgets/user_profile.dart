import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  final List<MenuRowData> firstMenuRow = [
    MenuRowData(textMain: '+7 (953) 115-76-13', textHide: 'Tap for change phone number'),
    MenuRowData(textMain: '@KarenAkobyan5', textHide: 'Username'),
    MenuRowData(textMain: 'Something about me', textHide: 'Bio'),
  ];
  final List<MenuRowData> secondMenuRow = [
    MenuRowData(textMain: 'Chat Settings', icon: Icons.chat),
    MenuRowData(icon: Icons.lock , textMain: 'Privacy and Security', ),
    MenuRowData(icon: Icons.notifications, textMain: 'Notifications and Sounds', ), 
    MenuRowData(icon: Icons.storage, textMain: 'Data and Storage', ),
    MenuRowData(icon: Icons.power, textMain: 'Power Saving', ),
    MenuRowData(icon: Icons.chat, textMain: 'Chat Folders', ),
    MenuRowData(icon: Icons.devices, textMain: 'Devices', ),
    MenuRowData(icon: Icons.language, textMain: 'Language', ),
  ];
  final List<MenuRowData> thirdMenuRow = [
    MenuRowData(icon: Icons.star_border, textMain: 'Telegram Premium', ),
    MenuRowData(icon: Icons.star, textMain: 'My Stars', ),
    MenuRowData(icon: Icons.business, textMain: 'Telegram Business', ),
    MenuRowData(icon: Icons.gif_box_outlined, textMain: 'Send a Gift', ),
  ];
  final List<MenuRowData> fourtMenuRow = [
    MenuRowData(icon: Icons.question_answer, textMain: 'Aks a Questions',),
    MenuRowData(icon: Icons.qr_code, textMain: 'Telegram FAQ', ),
    MenuRowData(icon: Icons.privacy_tip, textMain: 'Privacy Policy', ),
  ];

  UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            _UserIconWidget(),
            _MenuWidget(menuRow: firstMenuRow, textTag: 'Account'),
            SizedBox(height: 10),
            _MenuWidget(menuRow: secondMenuRow, textTag: 'Settings'),
            SizedBox(height: 10),
            _MenuWidget(menuRow: thirdMenuRow, textTag: 'Business'),
            SizedBox(height: 10),
            _MenuWidget(menuRow: fourtMenuRow, textTag: 'Help'),
          ],
        ),
      ),
    );
  }
}

class MenuRowData {
  final String _textMain;
  final String? _textHide;
  final IconData? _icon;

  MenuRowData({required String textMain, String? textHide, IconData? icon})
    : _textMain = textMain,
      _textHide = textHide,
      _icon = icon;
}

class _MenuWidget extends StatelessWidget {
  final List<MenuRowData> menuRow;
  final String textTag;
  const _MenuWidget({super.key, required this.menuRow, required this.textTag});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 25, 25, 26),
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            textTag,
            style: const TextStyle(
              color: Color.fromARGB(255, 118, 115, 177),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          ...menuRow.map((data) => _MenuWidgetRow(data: data)),
        ],
      ),
    );
  }
}

class _MenuWidgetRow extends StatelessWidget {
  final MenuRowData data;

  const _MenuWidgetRow({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: data._icon != null
      ? Column(
        children: [
          Row(
            children: [
              Icon(data._icon, color: Colors.white),
              SizedBox(width: 30,),
              Text(
                data._textMain,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ],
          ),SizedBox(height: 10,),
          Divider(height: 2, color: Colors.black,)
        ],
      )
      : Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            data._textMain,
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          if (data._textHide != null)
            Text(
              data._textHide!,
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),
            SizedBox(height: 10,),
            Divider(height: 2, color: Colors.black,)
        ],
      ),
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
