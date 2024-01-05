import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:harmony_mobile/core/navigation/app_router.dart';

class ChooseUserTypeView extends StatelessWidget {
  const ChooseUserTypeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: Text(
          'Select a side',
          style: TextStyle(
            color: const Color(0xFF2C2C2C),
            fontSize: 18.sp,
            fontFamily: 'Gabarito',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(17.0),
          child: Column(
            children: [
              Text(
                'Select who how you want to use Harmony. Please note that you cannot run both a client and earner account using the same email.',
                style: TextStyle(
                  color: const Color(0xFF6D6E6F),
                  fontSize: 14.sp,
                  fontFamily: 'Gabarito',
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Container(
                width: double.infinity,
                height: 207,
                padding: const EdgeInsets.all(16),
                decoration: ShapeDecoration(
                  color: const Color(0xFFEFEFEF),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: SizedBox(
                        child: Text(
                          'Client',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: const Color(0xFF1E1E1E),
                            fontSize: 20.sp,
                            fontFamily: 'Gabarito',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
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
                height: 207,
                padding: const EdgeInsets.all(16),
                decoration: ShapeDecoration(
                  color: const Color(0xFFEFEFEF),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: SizedBox(
                        child: Text(
                          'Earner',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: const Color(0xFF1E1E1E),
                            fontSize: 20.sp,
                            fontFamily: 'Gabarito',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              GestureDetector(
                onTap: () =>
                    Navigator.pushNamed(context, Routes.chooseUserTypeRoute),
                child: Container(
                  width: 120.w,
                  height: 56.h,
                  padding: const EdgeInsets.all(8),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF202124),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Action',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.sp,
                          fontFamily: 'Gabarito',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
