import 'burger_model.dart';


  var fakeData = {
    "data": [
      {
        "title": "Cheese Burger",
        "image": "pngwing.com.png",
        "subTitle": "Hot Burger",
        "description":
        "A cheeseburger is a classic sandwich made with a ground beef patty grilled to juicy perfection. The patty is nestled between a soft bun and topped with melty cheese, usually cheddar or American.  For a delicious twist, additional toppings like lettuce, tomato, onion, pickles, ketchup, mustard, and mayo can be added.",
        "quantity": 0,
        "isFav": false,
        "price": 55,
      },
      {
        "title": "Cheese Burger",
        "image": "pngwing.com.png",
        "description":
        "A cheeseburger is a classic sandwich made with a ground beef patty grilled to juicy perfection. The patty is nestled between a soft bun and topped with melty cheese, usually cheddar or American.  For a delicious twist, additional toppings like lettuce, tomato, onion, pickles, ketchup, mustard, and mayo can be added.",
        "subTitle": "Hot Burger",
        "quantity": 0,
        "isFav": false,
        "price": 55,
      },
      {
        "title": "Cheese Burger",
        "image": "pngwing.com.png",
        "description":
        "A cheeseburger is a classic sandwich made with a ground beef patty grilled to juicy perfection. The patty is nestled between a soft bun and topped with melty cheese, usually cheddar or American.  For a delicious twist, additional toppings like lettuce, tomato, onion, pickles, ketchup, mustard, and mayo can be added.",
        "subTitle": "Hot Burger",
        "quantity": 0,
        "isFav": false,
        "price": 55,
      },
      {
        "title": "Cheese Burger",
        "description":
        "A cheeseburger is a classic sandwich made with a ground beef patty grilled to juicy perfection. The patty is nestled between a soft bun and topped with melty cheese, usually cheddar or American.  For a delicious twist, additional toppings like lettuce, tomato, onion, pickles, ketchup, mustard, and mayo can be added.",
        "image": "pngwing.com.png",
        "subTitle": "Hot Burger",
        "quantity": 0,
        "isFav": false,
        "price": 55,
      },
    ]
  };


  // Parse the fake data
  List<Burger> burgers = (fakeData['data'] as List)
      .map((data) => Burger.fromJson(data))
      .toList();

