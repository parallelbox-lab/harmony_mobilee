import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/navigation/app_router.dart';
import '../../../../../src/res/widgets/custom_button.dart';

class VerifyEmail extends StatefulWidget {
  const VerifyEmail({Key? key}) : super(key: key);

  @override
  State<VerifyEmail> createState() => _VerifyEmailState();
}

class _VerifyEmailState extends State<VerifyEmail> {
  final GlobalKey closeContext = GlobalKey<NavigatorState>();
  // key for dialog after otp resend is successful
  final closeContext2 = GlobalKey<NavigatorState>();
  final TextEditingController _pin1Controller = TextEditingController();
  final TextEditingController _pin2Controller = TextEditingController();
  final TextEditingController _pin3Controller = TextEditingController();
  final TextEditingController _pin4Controller = TextEditingController();
  final TextEditingController _pin5Controller = TextEditingController();
  final TextEditingController _pin6Controller = TextEditingController();

  FocusNode pin1FocusNode = FocusNode();
  FocusNode pin2FocusNode = FocusNode();
  FocusNode pin3FocusNode = FocusNode();
  FocusNode pin4FocusNode = FocusNode();
  FocusNode pin5FocusNode = FocusNode();
  FocusNode pin6FocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
    pin5FocusNode = FocusNode();
    pin6FocusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();
    pin5FocusNode.dispose();
    pin6FocusNode.dispose();
  }

  bool _isLoading = false;

  void nextField(String value, FocusNode? focusNode) {
    if (value.length == 1) {
      focusNode!.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    // Create a List of TextEditingController
    List<TextEditingController> controllers = [
      _pin1Controller,
      _pin2Controller,
      _pin3Controller,
      _pin4Controller,
      _pin5Controller,
      _pin6Controller
    ];
    // Create a List of FocusNode
    List<FocusNode> focusNodes = [
      pin1FocusNode,
      pin2FocusNode,
      pin3FocusNode,
      pin4FocusNode,
      pin5FocusNode,
      pin6FocusNode
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _appBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Enter the code sent to ',
                    style: TextStyle(
                      color: const Color(0xFF6D6E6F),
                      fontSize: 14.sp,
                      fontFamily: 'Gabarito',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextSpan(
                    text: 'user@gmail.com',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.sp,
                      fontFamily: 'Gabarito',
                      fontWeight: FontWeight.w500,
                      height: 0.10,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Color(0xFFD9D9D9)),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  6,
                  (index) {
                    return SizedBox(
                      width: 50,
                      height: 50,
                      child: TextFormField(
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                        ],
                        controller: controllers[index],
                        focusNode: focusNodes[index],
                        obscureText: false,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 28.sp,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Prompt',
                        ),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          border: outlineInputBorder(),
                          focusedBorder: outlineInputBorder(),
                          enabledBorder: outlineInputBorder(),
                        ),
                        onChanged: (value) {
                          if (value.isNotEmpty) {
                            if (index < 5) {
                              // Automatically move to the next TextFormField
                              FocusScope.of(context)
                                  .requestFocus(focusNodes[index + 1]);
                            } else {
                              FocusScope.of(context).unfocus();

                              // If it's the last field, handle completion logic
                              // E.g., you can submit the OTP here
                            }
                          } else {
                            if (index > 0) {
                              // If the field is empty, go back to the previous TextFormField
                              FocusScope.of(context)
                                  .requestFocus(focusNodes[index - 1]);
                            }
                          }
                        },
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 90.h,
            ),
            Center(
              child: ButtonWidget(
                press: () {
                  Navigator.pushNamed(context, Routes.verifyEmailRoute);
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
        'Verify Email',
        style: TextStyle(
          color: const Color(0xFF2C2C2C),
          fontSize: 18.sp,
          fontFamily: 'Gabarito',
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  UnderlineInputBorder outlineInputBorder() {
    return UnderlineInputBorder(
      borderSide:
          const BorderSide(color: Colors.grey), // Customize the color if needed
      borderRadius: BorderRadius.circular(14),
    );
  }
}
