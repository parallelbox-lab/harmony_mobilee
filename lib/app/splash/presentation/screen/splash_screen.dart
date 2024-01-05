import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:harmony_mobile/app/splash/presentation/viewmodels/splash_viewmodels.dart';
import 'package:harmony_mobile/core/navigation/app_router.dart';
import 'package:stacked/stacked.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(17.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset("assets/icons/harmony_logo.svg"),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 16),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 1, color: Color(0xFFD9D9D9)),
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                    child: Text(
                      'Log in',
                      style: TextStyle(
                        color: const Color(0xFF2C2C2C),
                        fontSize: 16.sp,
                        fontFamily: 'Gabarito',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )
                ],
              ),
              const Spacer(),
              ViewModelBuilder<SplashViewmodel>.reactive(
                  viewModelBuilder: () => SplashViewmodel(),
                  builder: (_, vm, __) {
                    return Expanded(
                      flex: 1,
                      child: PageView.builder(
                        physics: const ClampingScrollPhysics(),
                        controller: vm.pageController,
                        onPageChanged: (int page) {
                          vm.currentPage = page;
                        },
                        itemCount: vm.onboardingData.length,
                        itemBuilder: (context, index) => Container(
                          //color: Colors.green,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'No misses, and no losses',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: const Color(0xFF1E1E1E),
                                  fontSize: 16.sp,
                                  fontFamily: 'Gabarito',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                              Text(
                                'For increased security, and easier identification on pickup users need to take photos in-app, instead of uploading.   You’ll be asked to retake your photo every 3 months.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: const Color(0xFF6D6E6F),
                                  fontSize: 14.sp,
                                  fontFamily: 'Gabarito',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
              SizedBox(
                height: 13.h,
              ),
              GestureDetector(
                onTap: () =>
                    Navigator.pushNamed(context, Routes.chooseUserTypeRoute),
                child: Container(
                  // width: 151,
                  // height: 56.h,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 22, vertical: 24),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF202124),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Get started',
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
              SizedBox(
                height: 13.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
