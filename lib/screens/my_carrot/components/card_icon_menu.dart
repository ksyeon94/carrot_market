import 'package:carrot_market_ui/theme.dart';
import 'package:flutter/material.dart';

import '../../../models/icon_menu.dart';

class CardIconMenu extends StatelessWidget {
  CardIconMenu({Key? key, required this.iconMenuList}) : super(key: key);
  final List<IconMenu> iconMenuList;

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 0.5,
        margin: EdgeInsets.zero,
        shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children:
              List.generate(iconMenuList.length,
                      (index) => _buildRowIconItem(
                          iconMenuList[index].title, iconMenuList[index].iconData),
              ),
          ),
        )
    );
  }

  Widget _buildRowIconItem(String title, IconData iconData) {
    return Container(
      height: 50,
      child: Row(
        children: [
          Icon(iconData, size: 17,),
          const SizedBox(width: 20,),
          Text(title, style: textTheme().subtitle1,)
        ],

      ),
    );
  }
}