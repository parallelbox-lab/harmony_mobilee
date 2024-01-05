import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:harmony_mobile/core/navigation/app_router.dart';

import '../../../../../src/res/widgets/custom_button.dart';

class AccountCreated extends StatelessWidget {
  const AccountCreated({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Center(
                child: Image.asset(
                  "assets/images/account_created_iimage.png",
                  width: 237.12,
                  height: 248,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'Account created successfully',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFF1E1E1E),
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Now let’s jump right in.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFF6D6E6F),
                  fontSize: 14.sp,
                  fontFamily: 'Gabarito',
                  fontWeight: FontWeight.w500,
                ),
              ),
              Spacer(),
              Center(
                child: ButtonWidget(
                  press: () {
                    Navigator.pushNamed(context, Routes.accounntCreatedRoute);
                  },
                  width: 151.w,
                  borderRadius: 100,
                  ui: Text(
                    'Continue',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp,
                      fontFamily: 'Gabarito',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
