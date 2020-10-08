import 'package:flutter/material.dart';
import 'package:timechime/const/size_config.dart';

AppBar appBarAdd(BuildContext context) {
  return AppBar(
      leading: IconButton(
        icon: Icon(
          Icons.menu,
          color: Theme.of(context).iconTheme.color,
        ),
        onPressed: () {},
      ),
      actions: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
          child: InkWell(
            child: Container(
              width: getProportionateScreenWidth(32),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
            onTap: () {},
          ),
        ),
      ]);
}
