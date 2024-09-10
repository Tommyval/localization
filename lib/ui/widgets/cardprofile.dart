import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:gap/gap.dart';
import 'package:test_task/ui/utils/extensions.dart';

class CardProfile extends StatelessWidget {
  const CardProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
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
          const Gap(30),
          Row(
            children: [
              Flexible(
                child: Column(
                  children: [
                    Image.asset('assets/images/man.png'),
                    const Gap(30),
                    Text(
                      AppLocalizations.of(context).signature,
                    ),
                    const Gap(30),
                    Image.asset('assets/images/signature.png'),
                  ],
                ),
              ),
              const Gap(20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppLocalizations.of(context).nameHeader,
                    
                  ),
                  Text(
                    AppLocalizations.of(context).name,style: context.bodyMedium!.copyWith(fontWeight: FontWeight.w700),
                  ),
                  Text(
                    AppLocalizations.of(context).surnameHeader,
                  ),
                  Text(
                    AppLocalizations.of(context).surName,style: context.bodyMedium!.copyWith(fontWeight: FontWeight.w700)
                  ),
                  Text(
                    AppLocalizations.of(context).fathersNameHeader,
                  ),
                  Text(
                    AppLocalizations.of(context).fathersName,style: context.bodyMedium!.copyWith(fontWeight: FontWeight.w700)
                  ),
                  Text(
                    AppLocalizations.of(context).categoryHeader,
                  ),
                  Text(
                    AppLocalizations.of(context).category,style: context.bodyMedium!.copyWith(fontWeight: FontWeight.w700)
                  ),
                  Text(
                    AppLocalizations.of(context).issueDateHeader,
                  ),
                  Text(
                    AppLocalizations.of(context).issueDate,style: context.bodyMedium!.copyWith(fontWeight: FontWeight.w700)
                  ),
                  Text(
                    AppLocalizations.of(context).issueAuthorityHeader,
                  ),
                  Text(
                    AppLocalizations.of(context).issueAuthority,style: context.bodyMedium!.copyWith(fontWeight: FontWeight.w700)
                  ),
                  Text(
                    AppLocalizations.of(context).expiryDateHeder,
                    style: const TextStyle(
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Text(
                    AppLocalizations.of(context).expiryDate,style: context.bodyMedium!.copyWith(fontWeight: FontWeight.w700)
                  ),
                  Text(
                    AppLocalizations.of(context).statusHeader,
                  ),
                  Text(
                    AppLocalizations.of(context).status,style: context.bodyMedium!.copyWith(fontWeight: FontWeight.w700)
                  ),
                  Text(
                    AppLocalizations.of(context).certificateNoHeader,
                    style: const TextStyle(
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Text(
                    AppLocalizations.of(context).certificateNo,style: context.bodyMedium!.copyWith(fontWeight: FontWeight.w700)
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
