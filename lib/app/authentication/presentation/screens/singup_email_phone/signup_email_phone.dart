import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:harmony_mobile/core/navigation/app_router.dart';
import 'package:harmony_mobile/src/res/widgets/custom_button.dart';

class SignupEmailPhone extends StatelessWidget {
  const SignupEmailPhone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: const ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: Color(0xFFD9D9D9),
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(6),
                      topRight: Radius.circular(6),
                    ),
                  ),
                ),
                child: TextFormField(
                    decoration: const InputDecoration(
                  hintText: 'First Name',
                  border: InputBorder.none, // Removes the border
                )),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: const ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: Color(0xFFD9D9D9),
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(6),
                      bottomRight: Radius.circular(6),
                    ),
                  ),
                ),
                child: TextFormField(
                    decoration: const InputDecoration(
                  hintText: 'Last Name',
                  border: InputBorder.none, // Removes the border
                )),
              ),
              Text(
                'Make sure it matches the name on your government ID',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFF868686),
                  fontSize: 11.sp,
                  fontFamily: 'Gabarito',
                  fontWeight: FontWeight.w400,
                  letterSpacing: -0.22,
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: const ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: Color(0xFFD9D9D9),
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(6),
                      topRight: Radius.circular(6),
                    ),
                  ),
                ),
                child: TextFormField(
                    decoration: const InputDecoration(
                  hintText: 'Email',
                  border: InputBorder.none, // Removes the border
                )),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: const ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: Color(0xFFD9D9D9),
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(6),
                      bottomRight: Radius.circular(6),
                    ),
                  ),
                ),
                child: TextFormField(
                    decoration: const InputDecoration(
                  hintText: 'Phone Number',
                  border: InputBorder.none, // Removes the border
                )),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: const ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: Color(0xFFD9D9D9),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                  ),
                ),
                child: TextFormField(
                    decoration: const InputDecoration(
                  hintText: 'Password',
                  border: InputBorder.none, // Removes the border
                )),
              ),
              SizedBox(
                height: 40.h,
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'By selecting Continue, I agree to Harmony’s ',
                      style: TextStyle(
                        color: const Color(0xFF666666),
                        fontSize: 14.sp,
                        fontFamily: 'Gabarito',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextSpan(
                      text: 'Terms of Service',
                      style: TextStyle(
                        color: const Color(0xFF1E1E1E),
                        fontSize: 14.sp,
                        fontFamily: 'Gabarito',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextSpan(
                      text: ', and acknowledge the ',
                      style: TextStyle(
                        color: const Color(0xFF666666),
                        fontSize: 14.sp,
                        fontFamily: 'Gabarito',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextSpan(
                      text: 'Privacy Policy',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.sp,
                        fontFamily: 'Gabarito',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20.h,
              ),
              Center(
                child: ButtonWidget(
                  press: () {
                    Navigator.pushNamed(context, Routes.loginRoute);
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

  AppBar _appBar() {
    return AppBar(
      leading: Icon(
        Icons.arrow_back,
        size: 24.sp,
        color: Colors.black,
      ),
      centerTitle: true,
      title: Text(
        'Account details',
        style: TextStyle(
          color: const Color(0xFF2C2C2C),
          fontSize: 18.sp,
          fontFamily: 'Gabarito',
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
