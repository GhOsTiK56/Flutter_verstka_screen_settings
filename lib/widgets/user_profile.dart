import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset('assets/images/profile_image.png'),
              Positioned( // IconButtonBack
                left: 10,
                top: 30,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_back),
                  iconSize: 35,
                  color: Colors.white,
                ),
              ),
              Positioned( // Text
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
              ),
              Positioned( // Camera
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
                )
              ),
            ],
          ),
        ],
      ),
    );
  }
}
