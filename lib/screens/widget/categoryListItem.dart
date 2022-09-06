import 'package:flutter/material.dart';

class BuildCategoryListItem extends StatelessWidget {
  const BuildCategoryListItem(
      {Key key, this.name, this.color, this.onTap, this.colorText})
      : super(key: key);
  final String name;
  final Color color;
  final Color colorText;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
            constraints: BoxConstraints(minWidth: 120),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Center(
              child: Text(
                name,
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    .copyWith(color: colorText),
              ),
            )),
      ),
    );
  }
}
