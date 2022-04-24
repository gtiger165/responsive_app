import 'package:flutter/material.dart';
import 'package:responsive_app/app/utils/screen_util.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key, this.leadingWidget}) : super(key: key);
  final Widget? leadingWidget;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      child: Container(
        color: Colors.blue,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            children: [
              Text('EXPLORE'),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'Discover',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    SizedBox(width: getScreenSize(context).width / 20),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'Contact Us',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  'Sign Up',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              SizedBox(
                width: getScreenSize(context).width / 50,
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
      preferredSize: Size(getScreenSize(context).width, 1000),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(1000);
}
