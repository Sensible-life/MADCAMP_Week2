import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:madcamp_week222/views/splashscreen.dart';
import 'colors.dart';
import 'navigation/bottom_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/home': (context) => const MainScreen(),
      },
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // 현재 선택된 페이지의 인덱스
  int _currentIndex = 0;

  // 각 페이지 위젯 리스트
  final List<Widget> _pages = [
    const HomePage(),
    const SearchPage(),
    const CameraPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Navigation Example'),
      ),
      body: _pages[_currentIndex], // 현재 선택된 페이지 표시
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
        child: BottomNavigation(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}

// Home 페이지
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Home Page',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

// Search 페이지
class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Search Page',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

// Profile 페이지
class CameraPage extends StatelessWidget {
  const CameraPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Camera Page',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

// Profile 페이지
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Profile Page',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
