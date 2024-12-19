import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.leading,
    required this.title,
    required this.subtitle,
    required this.badgelabel,
     this.badgechild, this.onTap,
  });
  final IconData leading;
  final String title;
  final String subtitle;
  final Widget badgelabel;
  final Widget ?badgechild;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell( onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
        child: Row(
          children: [
            //leading
            Icon(leading),
            SizedBox(
              width: 14,
            ),
            // center
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title),
                  //subtitle
                  Text(subtitle),
                ],
              ),
            ),
      
            //trailing
            Badge(
              label: badgelabel,
              child: badgechild,
            )
          ],
        ),
      ),
    );
  }
}