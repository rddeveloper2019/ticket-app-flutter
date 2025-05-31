import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class Hotel extends StatelessWidget {
  const Hotel({super.key, required this.hotel});

  final Map<String, dynamic> hotel;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.6,
      height: 320,
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: AppStyles.primaryColor,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              color: AppStyles.primaryColor,
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                fit: BoxFit.cover,

                image: AssetImage(AppMedia.getMediaUrl(hotel["image"])),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            hotel["place"],
            style: AppStyles.headLine1.copyWith(color: AppStyles.kakiColor),
          ),
          const SizedBox(height: 4),
          Text(
            hotel["destination"],
            style: AppStyles.headLine3.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 4),
          Text(
            '\$${hotel["price"]}/night',
            style: AppStyles.headLine1.copyWith(color: AppStyles.kakiColor),
          ),
        ],
      ),
    );
  }
}
