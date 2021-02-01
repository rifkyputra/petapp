import 'package:flutter/material.dart';

class HomeStoryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 6),
      child: SingleChildScrollView(
          // physics: PageScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              _storyOrb(),
              _storyOrb(),
              _storyOrb(),
              _storyOrb(),
              _storyOrb(),
              _storyOrb(),
              _storyOrb(),
              _storyOrb(),
              _storyOrb(),
              _storyOrb(),
            ],
          )),
    );
  }

  _storyOrb({image}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 8),
      child: Column(
        children: [
          Container(
            width: 50,
            height: 50,
            constraints: BoxConstraints(maxHeight: 55, maxWidth: 80),
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.brown),
            padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 14),
            child: Container(),
          ),
          Text(
            'Teti',
            style: TextStyle(color: Colors.black54),
          ),
        ],
      ),
    );
  }
}
