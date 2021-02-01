import 'package:flutter/material.dart';
import 'package:my_pet/ui/widgets/home_post_item_widget.dart';
import 'package:my_pet/ui/widgets/home_story_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            Text('q222'),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.grey.shade300,
        elevation: 0,
        toolbarHeight: 88,
        leadingWidth: 33,
        leading: HomeAppBarBtn(),
        title: HomeStoryWidget(),
      ),
      body: Stack(
        children: [
          ListView.builder(
            itemCount: 8,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return HomePostItem(
                width: MediaQuery.of(context).size.width,
              );
            },
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: DraggableScrollableSheet(
              maxChildSize: 0.6,
              expand: true,

              minChildSize: 0.2,
              initialChildSize: 0.2,
              // onClosing: () {},
              // enableDrag: true,
              builder: (context, scroll) {
                return SingleChildScrollView(
                  controller: scroll,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12)),
                      color: Colors.white,
                    ),
                    height: MediaQuery.of(context).size.height / 2,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        SizedBox(height: 10),
                        Container(
                          width: 80,
                          height: 5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 34,
                              height: 34,
                              padding: const EdgeInsets.all(7),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.deepOrange,
                              ),
                            ),
                            SizedBox(width: 12),
                            Text('My Pet House 1'),
                          ],
                        ),
                        Text('Halo'),
                      ],
                    ),
                    // height: 100,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class HomeAppBarBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Scaffold.of(context).openDrawer();
      },
      child: Icon(Icons.thermostat_rounded),
    );
  }
}
