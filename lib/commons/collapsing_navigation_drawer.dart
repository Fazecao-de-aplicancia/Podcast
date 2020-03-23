import 'package:podcast/theme.dart';
import 'package:flutter/material.dart';
import 'package:podcast/model/navigation_model.dart';
import 'package:podcast/commons/collapsing_navigation_drawer.dart';

class CollapsingNavigationDrawer extends StatefulWidget {
  CollapsingNavigationDrawer({Key key}) : super(key: key);

  @override
  _CollapsingNavigationDrawerState createState() => _CollapsingNavigationDrawerState();
}

class _CollapsingNavigationDrawerState extends State<CollapsingNavigationDrawer> {
  double max_width = 250;
  double min_width = 70;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250.0,
      color: drawer_bg_color,
      child: Column(
        children: <Widget>[
          SizedBox(height: 50.0),
          CollapsingListTile (
            title: 'Henrique de Abreu',
            icon: Icons.person
          ),
          Expanded(
            child: ListView.builder(itemBuilder: (context, counter) {
              return CollapsingListTile (
                title: navigationItems[counter].title,
                icon: navigationItems[counter].icon,
              );
            },
              itemCount: navigationItems.length
            ),
          ),
        ],
      )
    );
  }
}

class CollapsingListTile extends StatefulWidget {

  final String title;
  final IconData icon;

  CollapsingListTile({@required this.title, @required this.icon});

  @override
  _CollapsingListTileState createState() => _CollapsingListTileState();
}

class _CollapsingListTileState extends State<CollapsingListTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
      child: Row(
         children: <Widget>[
          Icon(widget.icon, color: Colors.white30, size: 38.0),
          SizedBox(width: 10.0),
          Text(widget.title, style: default_list_title_style)
         ],
      ),
    );
  }
}