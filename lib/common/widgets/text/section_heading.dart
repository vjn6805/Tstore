import 'package:flutter/material.dart';

class TSectionHeading extends StatelessWidget {
  const TSectionHeading({
    super.key, required this.title, this.buttonTitle='View All', this.onPressed, this.color, this.showActionButton=false,
  });

  final String title,buttonTitle;
  final void Function()? onPressed;
  final Color? color;
  final bool showActionButton;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title,style: Theme.of(context).textTheme.headlineSmall!.apply(color: color),maxLines: 1,overflow: TextOverflow.ellipsis,),
        if(showActionButton)TextButton(onPressed: onPressed, child: Text(buttonTitle))
      ],
    );
  }
}