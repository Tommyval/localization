import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:gap/gap.dart';
import 'package:test_task/ui/utils/extensions.dart';

class CardIntro extends StatelessWidget {
  const CardIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPicture.asset('assets/svg/map.svg'),
                  const Gap(5),
                  Text(
                    AppLocalizations.of(context).location,
                    style: context.bodySmall!
                        .copyWith(fontSize: 10, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    AppLocalizations.of(context).driversLicense,
                    style: context.bodySmall!
                        .copyWith(fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                  const Gap(5),
                  SvgPicture.asset('assets/svg/coil.svg')
                ],
              )
            ],
          ),
          const Gap(20),
          Text(
            AppLocalizations.of(context).personalNoHeader,
          ),
          Text(
            AppLocalizations.of(context).personalNumbers,style: context.bodyMedium!.copyWith(fontWeight: FontWeight.w700)
          ),
        ],
      ),
    );
  }
}
