import '../widgets/notification.dart' as notif;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  final List<Map<String, String>> _notifications = [
    {'name': 'Johanna Mikayla', 'post': 'Study session ☕', 'description': 'Liked your post'},
    {'name': 'Hallee', 'post': 'Study session ☕', 'description': 'Commented: Sama next time!'},
    {'name': 'Bea Bunda', 'post': 'Coffee run before 8 AM class', 'description': 'Shared your post'},
    {'name': 'Jade Bino', 'post': 'Finally, she said yes!', 'description': 'Liked your comment'},
    {'name': 'Chloe Santos', 'post': 'Group meeting later at 7 PM', 'description': 'Tagged you in a post'},
    {'name': 'Liam Cruz', 'post': 'Sunset view from the rooftop', 'description': 'Liked your post'},
    {'name': 'Sofia Lim', 'post': 'New desk setup for coding, yippie', 'description': 'Replied to your comment'},
    {'name': 'Ethan Morales', 'post': 'Samgyup after finals?', 'description': 'Commented: G na agad!'},
    {'name': 'Hannah Bautista', 'post': 'Finally, she said yes!', 'description': 'Liked your post'},
    {'name': 'Gabriel Ramos', 'post': 'Rainy afternoon playlist 🎶', 'description': 'Shared your post'},
    {'name': 'Trixie Castro', 'post': 'Merienda time! Siopao & milk tea', 'description': 'Commented: Pahingi naman!'},
    {'name': 'Noah Aquino', 'post': 'Weekend unwind at the park', 'description': 'Liked your post'},
    {'name': 'Mikaela Gomez', 'post': 'Capstone defense throwback', 'description': 'Tagged you in a photo'},
    {'name': 'Daniel Navarro', 'post': 'Coffee run before 8 AM class', 'description': 'Liked your post'},
    {'name': 'Katrina Flores', 'post': 'Samgyup after finals?', 'description': 'Replied to your comment'},
    {'name': 'Justin Ocampo', 'post': 'New desk setup for coding, yippie', 'description': 'Liked your comment'},
    {'name': 'Camille Diaz', 'post': 'Lab activity done!', 'description': 'Commented: Ang bilis ah!'},
    {'name': 'Rafael Torres', 'post': 'Rainy afternoon playlist 🎶', 'description': 'Shared your post'},
    {'name': 'Bianca Salazar', 'post': 'Sunset view from the rooftop', 'description': 'Liked your post'},
    {'name': 'Joshua Mercado', 'post': 'Study session ☕', 'description': 'Commented: Sleep well din!'},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: ScreenUtil().screenWidth,
      child: ListView.separated(
        itemCount: _notifications.length,
        separatorBuilder: (context, index) => const Divider(height: 1),
        itemBuilder: (context, index) {
          final item = _notifications[index];
          return notif.Notification(
            name: item['name']!,
            post: item['post']!,
            description: item['description']!,
          );
        },
      ),
    );
  }
}
