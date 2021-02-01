import 'package:flutter/material.dart';

class HomePostItem extends StatelessWidget {
  final width;

  const HomePostItem({Key key, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 2),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: FlutterLogo(),
            ),
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Title!',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  Text('description'),
                  SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.blue,
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    child: Text('label '),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
