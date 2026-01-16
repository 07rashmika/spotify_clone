import 'package:flutter/material.dart';
import 'package:spotify_clone/models/colors.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({
    super.key,
    required this.drawerIcon,
    required this.userName,
  });

  final Widget drawerIcon;
  final String userName;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            child: InkWell(
              onTap: () {},
              child: Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: drawerIcon,
                  ),
                  Column(
                    children: [
                      Text(
                        userName,
                        style: TextStyle(
                          fontSize: 28,
                          color: SpotifyColors.white,
                        ),
                      ),
                      Text(
                        'View Profile',
                        style: TextStyle(
                          fontSize: 16,
                          color: SpotifyColors.mediumGrey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
