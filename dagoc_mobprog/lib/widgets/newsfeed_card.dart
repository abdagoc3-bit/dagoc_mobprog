import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants.dart';
import 'custom_text.dart';

class NewsFeedCard extends StatefulWidget {
  final String userName;
  final String postContent;
  final String date;
  final int numOfHearts;
  final int numOfComments;
  final bool hasImage;
  final String? imagePath;
  final String? avatarPath;

  const NewsFeedCard({
    super.key,
    required this.userName,
    required this.postContent,
    required this.date,
    this.numOfHearts = 0,
    this.numOfComments = 0,
    this.hasImage = false,
    this.imagePath,
    this.avatarPath,
  });

  @override
  State<NewsFeedCard> createState() => _NewsFeedCardState();
}

class _NewsFeedCardState extends State<NewsFeedCard> {
  late int _heartsCount;
  bool _isLiked = false;

  @override
  void initState() {
    super.initState();
    _heartsCount = widget.numOfHearts;
  }

  void _toggleLike() {
    setState(() {
      _isLiked = !_isLiked;
      _heartsCount += _isLiked ? 1 : -1;
    });
  }

  void _onCommentPressed() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Opening comments for ${widget.userName}\'s post...'),
        duration: const Duration(seconds: 1),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10.sp),
      child: Padding(
        padding: EdgeInsets.all(10.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                UserAvatarWidget(
                  avatarPath: widget.avatarPath,
                  radius: 18.r,
                ),
                SizedBox(width: 10.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: widget.userName,
                        fontSize: 15.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      Row(
                        children: [
                          CustomText(
                            text: widget.date,
                            fontSize: 12.sp,
                            color: Colors.grey[600]!,
                            fontWeight: FontWeight.normal,
                          ),
                          SizedBox(width: 4.w),
                          Icon(
                            Icons.public,
                            color: Colors.grey[600],
                            size: 14.sp,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Icon(Icons.more_horiz, size: 20.sp),
              ],
            ),
            SizedBox(height: 8.h),

            CustomText(
              text: widget.postContent,
              fontSize: 13.sp,
              color: Colors.black87,
              fontWeight: FontWeight.normal,
            ),
            SizedBox(height: 8.h),

            if (widget.hasImage) ...[
              PostImageWidget(imagePath: widget.imagePath),
              SizedBox(height: 8.h),
            ],

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: '$_heartsCount ${_heartsCount == 1 ? 'Heart' : 'Hearts'}',
                  fontSize: 12.sp,
                  color: Colors.grey[700]!,
                  fontWeight: FontWeight.normal,
                ),
                if (widget.numOfComments > 0)
                  CustomText(
                    text: '${widget.numOfComments} Comments',
                    fontSize: 12.sp,
                    color: Colors.grey[700]!,
                    fontWeight: FontWeight.normal,
                  ),
              ],
            ),
            const Divider(height: 16),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ActionButtonWidget(
                  icon: _isLiked ? Icons.favorite : Icons.favorite_border,
                  label: 'Love',
                  isActive: _isLiked,
                  onPressed: _toggleLike,
                ),
                ActionButtonWidget(
                  icon: Icons.chat_bubble_outline,
                  label: 'Comment',
                  onPressed: _onCommentPressed,
                ),
                ActionButtonWidget(
                  icon: Icons.send_outlined,
                  label: 'Share',
                  onPressed: () {},
                ),
              ],
            ),
            const Divider(height: 16),

            Row(
              children: [
                UserAvatarWidget(
                  avatarPath: widget.avatarPath,
                  radius: 14.r,
                ),
                SizedBox(width: 10.w),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 12.w,
                      vertical: 6.h,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: CustomText(
                      text: 'Write a comment...',
                      fontSize: 12.sp,
                      color: Colors.grey[700]!,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            CustomText(
              text: 'View comments',
              fontSize: 12.sp,
              fontWeight: FontWeight.normal,
              color: Colors.grey[700]!,
            ),
          ],
        ),
      ),
    );
  }
}

class UserAvatarWidget extends StatelessWidget {
  final String? avatarPath;
  final double radius;

  const UserAvatarWidget({
    super.key,
    this.avatarPath,
    this.radius = 18,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: Colors.grey[300],
      backgroundImage:
          (avatarPath != null && avatarPath!.isNotEmpty)
              ? AssetImage(avatarPath!)
              : null,
      onBackgroundImageError:
          (avatarPath != null && avatarPath!.isNotEmpty)
              ? (_, _) {}
              : null,
      child: (avatarPath == null || avatarPath!.isEmpty)
          ? Icon(Icons.person, color: Colors.grey[700], size: radius)
          : null,
    );
  }
}

class PostImageWidget extends StatelessWidget {
  final String? imagePath;

  const PostImageWidget({
    super.key,
    this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    final resolvedPath = (imagePath != null && imagePath!.isNotEmpty)
        ? imagePath!
        : 'assets/images/owl.jpg';

    return ClipRRect(
      borderRadius: BorderRadius.circular(8.r),
      child: Image.asset(
        resolvedPath,
        width: double.infinity,
        height: 200.h,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          return Container(
            width: double.infinity,
            height: 200.h,
            color: Colors.grey[200],
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.image_not_supported, size: 36.sp, color: Colors.grey),
                SizedBox(height: 6.h),
                CustomText(
                  text: 'Image placeholder ($resolvedPath)',
                  fontSize: 11.sp,
                  color: Colors.grey[700]!,
                  fontWeight: FontWeight.normal,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class ActionButtonWidget extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onPressed;
  final bool isActive;

  const ActionButtonWidget({
    super.key,
    required this.icon,
    required this.label,
    required this.onPressed,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    final Color activeColor = isActive ? Colors.red : FB_DARK_PRIMARY;

    return TextButton.icon(
      onPressed: onPressed,
      icon: Icon(
        icon,
        color: activeColor,
        size: 18.sp,
      ),
      label: CustomText(
        text: label,
        fontSize: 12.sp,
        color: activeColor,
        fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
      ),
    );
  }
}