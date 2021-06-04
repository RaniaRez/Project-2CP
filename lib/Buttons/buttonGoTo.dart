import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../myicons.dart';
import 'package:flutter/foundation.dart';
class GoToButton extends StatelessWidget {
  GoToButton({@required this.onPressed});
  final GestureTapCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return BouncingWidget(
      onPressed: onPressed,
      scaleFactor: 2,
      duration: Duration(milliseconds: 100),
      child: IconButton(
          icon : SvgPicture.asset(buttonGoTo),
          iconSize: 90.0,
      ),
    );
  }
}
