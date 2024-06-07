import 'package:flutter/material.dart';

class ButtonWithIconAndText extends StatelessWidget {
  const ButtonWithIconAndText({
    super.key,
    required this.icon,
    required this.text,
    required this.onPressed,
  });

  final IconData icon;
  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    return Expanded(
      child: GestureDetector(
        onTap: onPressed,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: color),
            Text(text, style: TextStyle(color: color)),
          ],
        ),
      ),
    );
  }
}
