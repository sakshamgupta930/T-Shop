import 'package:flutter/material.dart';

class TSectionHeading extends StatelessWidget {
  final String title, buttonTitle;
  final Color? textColor;
  final void Function()? onPressed;
  final bool showActionButton;
  const TSectionHeading({
    super.key, required this.title, this.buttonTitle = 'View all', this.textColor, this.onPressed, this.showActionButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: textColor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showActionButton)
          TextButton(onPressed: () {}, child: Text(buttonTitle)),
      ],
    );
  }
}
