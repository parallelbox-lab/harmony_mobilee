import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:harmony_mobile/core/navigation/app_router.dart';

class SignupType extends StatelessWidget {
  const SignupType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.0.w, vertical: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xFFD9D9D9)),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Icon(
                    Icons.g_mobiledata_outlined,
                    size: 18.sp,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  Text(
                    'Sign up with Google',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFF2D2D2D),
                      fontSize: 16.sp,
                      fontFamily: 'Gabarito',
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ]),
              ),
              SizedBox(
                height: 14.h,
              ),
              Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xFFD9D9D9)),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Icon(
                    Icons.apple,
                    size: 18.sp,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  Text(
                    'Sign up with Apple',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFF2D2D2D),
                      fontSize: 16.sp,
                      fontFamily: 'Gabarito',
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ]),
              ),
              SizedBox(
                height: 14.h,
              ),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, Routes.signupEmail),
                child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 16),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 1, color: Color(0xFFD9D9D9)),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    child: Text(
                      'Sign up with email or phone',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: const Color(0xFF2D2D2D),
                        fontSize: 16.sp,
                        fontFamily: 'Gabarito',
                        fontWeight: FontWeight.w500,
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
