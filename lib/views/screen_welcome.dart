import 'package:flutter/material.dart';

import '../colors.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _FadeInScreenState();

}

class _FadeInScreenState extends State<WelcomeScreen> {

  double _opacity = 0.0;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        _opacity = 1.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: AnimatedOpacity(
          duration: const Duration(seconds: 2),
          opacity: _opacity,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/signup');
            },
            child: Text(
                '로그인하러 가기',
                style: TextStyle(
                    fontFamily: 'GG_Medium',
                    fontSize: 24,
                    color: AppColors.black
                )
            ),
          ),
        ),
      ),
    );
  }
}
