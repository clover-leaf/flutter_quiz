import 'package:chicken/common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Buttonbox extends StatelessWidget {
  const Buttonbox({
    super.key,
    required this.iconSvg,
    required this.label,
    this.width,
  });

  final String iconSvg;
  final String label;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: Constant.SIDETAB_BUTTON_HEIGHT.value,
        width: width ?? double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(Constant.BORDER_RADIUS.value)),
            color: Theme.of(context).scaffoldBackgroundColor),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 4, 0),
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: SvgPicture.asset(
                  iconSvg,
                  height: Constant.SIDETAB_BUTTON_HEIGHT.value / 2,
                  width: Constant.SIDETAB_BUTTON_HEIGHT.value / 2,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
            Text(label, style: Theme.of(context).textTheme.headline1),
          ],
        ));
  }
}
