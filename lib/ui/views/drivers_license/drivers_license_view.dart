import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:stacked/stacked.dart';
import 'package:test_task/ui/models/languages.dart';
import 'package:test_task/ui/utils/extensions.dart';
import 'package:test_task/ui/views/drivers_license/drivers_license_viewModel.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:test_task/ui/widgets/cardintro.dart';
import 'package:test_task/ui/widgets/cardprofile.dart';

class DriversLicenseView extends StackedView<DriversLicenseModel> {
  const DriversLicenseView({super.key});

  @override
  Widget builder(
      BuildContext context, DriversLicenseModel viewModel, Widget? child) {
    return Scaffold(
      backgroundColor: const Color(0xff1A62B4),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xff1A62B4),
        title: Text(AppLocalizations.of(context).driversLicenseHeader,
            style: context.bodyLarge!.copyWith(
                fontWeight: FontWeight.w700,
                color: Colors.white,
                fontSize: 14)),
        leading: const Icon(
          Icons.keyboard_arrow_left,
          color: Colors.white,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButton(
              underline: const SizedBox(),
              icon: const Icon(
                Icons.language,
                color: Colors.white,
              ),
              items: Languages.languageList()
                  .map((e) => DropdownMenuItem<Languages>(
                      value: e,
                      child: Row(
                        children: [Text(e.flag), const Gap(10), Text(e.name)],
                      )))
                  .toList(),
              onChanged: (value) {
                viewModel.languageService.changeLocale(value!.languageCode);
              },
            ),
          )
        ],
      ),
      body: Column(
        children: [
          SvgPicture.asset(
            'assets/svg/wave.svg',
            color: const Color(0xff2E71C2),
          ),
          Swiper(
            itemCount: 2,
            itemWidth: MediaQuery.of(context).size.width * 0.9,
            itemHeight: MediaQuery.of(context).size.height * 0.56,
            layout: SwiperLayout.STACK,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                    image: DecorationImage(
                      image: const AssetImage('assets/images/hor.png'),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                        Colors.blue.withOpacity(0.4), // Tint color and opacity
                        BlendMode.srcATop, // Blend mode
                      ),
                    )),
                child: index.isEven ? const CardIntro() : const CardProfile(),
              );
            },
            onIndexChanged: (value) {
              viewModel.onIndexChanged(value);
            },
          ),
          const Gap(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(2, (index) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 4),
                width: viewModel.currentIndex == index ? 16 : 8,
                height: 8,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                ),
              );
            }),
          ),
          const Spacer(),
          Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none, // Allow overflow
            children: [
              // Bottom container
              Container(
                width: double.infinity,
                height: MediaQuery.sizeOf(context).height * 0.08,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                ),
                child: Center(
                  child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(AppLocalizations.of(context).qrCode)),
                ),
              ),

              Positioned(
                top: -(MediaQuery.sizeOf(context).height * 0.13) / 2,
                child: Container(
                    width: 100,
                    height: 100,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: SvgPicture.asset('assets/svg/QR.svg')),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  DriversLicenseModel viewModelBuilder(BuildContext context) {
    return DriversLicenseModel();
  }
}
