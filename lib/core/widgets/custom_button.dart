import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:profile/core/utils/app_constance.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, required this.icon});
  final String text;
  final String icon;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(13),
      onTap: () => print('object'),
      child: Container(
        height: 33,
        width: 155,
        decoration: BoxDecoration(
            color: AppConstance.blueColor,
            borderRadius: BorderRadius.circular(13)),
        child: InkWell(
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const SizedBox(
                width: 10,
              ),
              // ignore: prefer_const_constructors
              SvgPicture.asset(
                icon,
                height: 16,
                width: 16,
                fit: BoxFit.cover,
                // color: primaryColor,
                color: AppConstance.whiteColor,
              ),

              Expanded(
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      color: AppConstance.whiteColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
