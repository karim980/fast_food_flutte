import 'package:burger_app/view/details_screen.dart';
import 'package:burger_app/view/widgets/indecator_widget.dart';
import 'package:burger_app/view/widgets/item_widget.dart';
import 'package:flutter/material.dart';

import '../model/burger_model.dart';


class HomeScreen extends StatelessWidget {
  final List<Burger> burgers;

  HomeScreen({required this.burgers});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.sort)),
        actions: [
          IconButton(onPressed: () {
          }, icon: Icon(Icons.search_rounded))
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: DefaultTabController(
              length: 1, // Number of tabs
              child: Column(
                children: [
                  TabBar(
                    labelColor: Colors.white,
                    dividerHeight: 0,
                    tabs: [
                      Tab(text: 'Burger'),
                      Tab(text: 'Pizza'),
                      Tab(text: 'Cheese'),
                      Tab(text: 'pasta'),

                    ],
                    indicator: CircleTabIndicator(
                        color: Colors.orange, radius: 5),
                  ),
                  Expanded(
                    child: GridView.builder(
                      padding: EdgeInsets.all(10),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, // Number of items per row
                        crossAxisSpacing: 10, // Spacing between items horizontally
                        mainAxisSpacing: 10, // Spacing between items vertically
                        childAspectRatio: 3 / 4, // Aspect ratio of each item
                      ),
                      itemCount: burgers.length,
                      itemBuilder: (context, index) {
                        final burger = burgers[index];
                        return InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailsScreen(
                              img: burger.image,
                              title: burger.title,
                              description: burger.description,
                              price: burger.price),
                            ));
                          },
                          child: ItemWidget(
                              subTitle: burger.subTitle,
                              price: burger.price.toString(),
                              title: burger.title,
                              img: burger.image),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),

      
      bottomSheet: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(

          boxShadow: [
            BoxShadow(
              color: Colors.transparent,
              offset: const Offset(0, 0),
              blurRadius: 8,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              child: Icon(
                Icons.mail,
                size: 30,
                color: Colors.white,
              ),
            ),
            InkWell(
              child: Icon(
                Icons.favorite,
                size: 30,
                color: Colors.white,
              ),
            ),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(80),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white,
                    offset: const Offset(0, 0),
                    blurRadius: 10,
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: Icon(
                Icons.shopping_cart,
                size: 20,
                color: Colors.white,
              ),
            ),
            InkWell(
              child: Icon(
                Icons.notifications,
                size: 30,
                color: Colors.white,
              ),
            ),
            InkWell(
              child: Icon(
                Icons.person,
                size: 30,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
