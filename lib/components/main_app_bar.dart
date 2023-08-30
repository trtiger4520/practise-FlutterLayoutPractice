import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.grey,
                      width: 2,
                    ),
                  ),
                  child: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        'http://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50'),
                  ),
                ),
                const SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Rafael Williams',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Good morning',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ],
            ),
            badges.Badge(
              badgeContent: const Text(
                '2',
                style: TextStyle(color: Colors.white),
              ),
              badgeStyle: badges.BadgeStyle(
                badgeColor: Colors.teal.shade300,
                padding: const EdgeInsets.all(8),
              ),
              child: IconButton(
                icon: const Icon(Icons.notifications),
                iconSize: 25,
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(76);
}
