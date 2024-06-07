import 'package:flutter/material.dart';
import 'package:flutter_layout_demo/components/button_with_icon_and_text.dart';

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    super.key,
    required this.callIconPressed,
    required this.routeIconPressed,
    required this.shareIconPressed,
  });

  final void Function()? callIconPressed;
  final void Function()? routeIconPressed;
  final void Function()? shareIconPressed;

  @override
  Widget build(BuildContext context) {
    final List<Widget> buttons = [
      ButtonWithIconAndText(
          icon: Icons.call, text: 'CALL', onPressed: callIconPressed),
      ButtonWithIconAndText(
          icon: Icons.map, text: 'ROUTE', onPressed: routeIconPressed),
      ButtonWithIconAndText(
          icon: Icons.share, text: 'SHARE', onPressed: shareIconPressed),
    ];

    return Row(
      children: buttons,
    );
  }
}
