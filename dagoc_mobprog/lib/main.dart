import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'screens/home_screen.dart';
import 'screens/newsfeed_screen.dart';
import 'screens/notification_screen.dart';
import 'constants.dart';

void main() => runApp(const DagocFacebook());

class DagocFacebook extends StatelessWidget {
  const DagocFacebook({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 715),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: APP_NAME,
          theme: ThemeData(
            useMaterial3: true,
            colorScheme: ColorScheme.fromSeed(seedColor: FB_PRIMARY),
          ),
          initialRoute: '/home',
          routes: {
            '/newsfeed': (context) => const NewsFeedScreen(),
            '/notification': (context) => const Scaffold(
                  body: SafeArea(child: NotificationScreen()),
                ),
            '/home': (context) => const HomeScreen(),
          },
        );
      },
    );
  }
}