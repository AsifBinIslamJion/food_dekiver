import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selected = 0;

  List<Map<String, dynamic>> categories = [
    {
      'All': 'https://png.pngtree.com/png-vector/20240827/ourmid/pngtree-realistic-3d-fire-flame-effect-for-designs-png-image_13631567.png',
    },
    {
      'Hot Dog': 'https://media.istockphoto.com/id/1146404440/vector/hot-dog-with-mustard-hand-drawing.jpg?s=612x612&w=0&k=20&c=b4tmD8q4AClUIQZF5zjto04VW9LTyqzgpt8HuFUGuVM=',
    },
    {
      'Burger': 'https://png.pngtree.com/png-clipart/20241108/original/pngtree-delicious-and-testy-cheese-burger-png-image_16763714.png',
    },

    {
      'Hot Dog': 'https://media.istockphoto.com/id/1146404440/vector/hot-dog-with-mustard-hand-drawing.jpg?s=612x612&w=0&k=20&c=b4tmD8q4AClUIQZF5zjto04VW9LTyqzgpt8HuFUGuVM=',
    },
    {
      'Burger': 'https://png.pngtree.com/png-clipart/20241108/original/pngtree-delicious-and-testy-cheese-burger-png-image_16763714.png',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(40),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.menu),
                  style: IconButton.styleFrom(backgroundColor: Colors.black38),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('DELIVER', style: TextStyle(color: Colors.deepOrange)),
                    Row(
                      children: [
                        Text('Halal Lab Office'),
                        Icon(Icons.expand_more),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.shopping_basket, color: Colors.white),
                  style: IconButton.styleFrom(backgroundColor: Colors.black),
                ),
              ],
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Text('Hey Halal,'),
                Text(
                  'Good Afternoon !',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 20),

            TextField(
              decoration: InputDecoration(
                hintText: 'Search dishes, resturants',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text(
                  'All Categories',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text('See All'),
                Icon(Icons.chevron_right),
              ],
            ),

            SizedBox(height: 20),
            SizedBox(
              height: 110,

              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,

                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selected = index;
                      });
                    },
                    child: Container(
                      height: 100,
                      width: 80,
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: selected == index
                            ? const Color.fromARGB(255, 141, 102, 199)
                            : const Color.fromARGB(255, 233, 237, 241),
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(categories[index].values.first),
                          Text(categories[index].keys.first),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text(
                  'Open Restaurants',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Spacer(),
                Text('See All'),
                Icon(Icons.chevron_right),
              ],
            ),
            SizedBox(height: 15),

            ClipRRect(
              borderRadius: BorderRadius.circular(15),

              child: Image.network(
                'https://ichef.bbci.co.uk/food/ic/food_16x9_1600/recipes/greek_salad_16407_16x9.jpg',
              ),
            ),
            SizedBox(height: 15),

            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Rose Garden Restaurants',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Burger- Chiken - Riche - Wings',
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.star_border_outlined, color: Colors.orange),
                Text('4.7', style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(width: 15),
                Icon(Icons.delivery_dining_outlined, color: Colors.orange),
                Text('Free', style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(width: 15),
                Icon(Icons.timer_outlined, color: Colors.orange),
                Text('20 min', style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: 15),
            ClipRRect(
              borderRadius: BorderRadius.circular(15),

              child: Image.network(
                'https://maureenabood.com/wp-content/uploads/2023/03/Lebanese-Salad-ingredients-w-dressing-Maureen-Abood.jpg',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
