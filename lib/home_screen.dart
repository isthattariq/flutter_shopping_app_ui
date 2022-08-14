import 'package:flutter/material.dart';
import 'package:shopping_app_task/product_detail_screen.dart';
import 'custom_widgets/custom_round_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> items = [
    'Hand Bags',
    'Jewellery',
    'Footwear',
    'Dresses',
    'Make up',
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          color: Colors.black54,
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back,
            size: 35.0,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: 40.0,
              color: Colors.black54,
            ),
          ),
          const SizedBox(width: 15.0),
          const Icon(
            Icons.shopping_cart_outlined,
            size: 35.0,
            color: Colors.black54,
          ),
          const SizedBox(width: 10.0),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                ' Women',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                height: 60.0,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: items.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, listIndex) {
                    return Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  currentIndex = listIndex;
                                });
                              },
                              child: Container(
                                margin: const EdgeInsets.all(8.0),
                                child: Text(
                                  items[listIndex],
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      color: currentIndex == listIndex
                                          ? Colors.black
                                          : Colors.grey),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: currentIndex == listIndex,
                              child: Container(
                                padding: EdgeInsets.zero,
                                margin: const EdgeInsets.all(8.0),
                                width: 80,
                                height: 2,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 25),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomRoundContainer(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProductDetailScreen(),
                            ),
                          );
                        },
                        nameImage: 'bag1.png',
                        containerColor: Colors.red,
                        containerHeight: 230.0,
                        containerWidth: 170.0,
                        brandText: 'Office Code',
                        price: '234',
                      ),
                      CustomRoundContainer(
                        onTap: () {},
                        nameImage: 'bag6.png',
                        containerColor: Colors.blue,
                        containerHeight: 230.0,
                        containerWidth: 170.0,
                        brandText: 'strip bag',
                        price: '399',
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomRoundContainer(
                        onTap: () {},
                        nameImage: 'bag3.png',
                        containerColor: Colors.deepOrangeAccent,
                        containerHeight: 230.0,
                        containerWidth: 170.0,
                        brandText: 'Carry bag',
                        price: '499',
                      ),
                      CustomRoundContainer(
                        onTap: () {},
                        nameImage: 'bag4.png',
                        containerColor: Colors.yellowAccent,
                        containerHeight: 230.0,
                        containerWidth: 170.0,
                        brandText: 'hand carry',
                        price: '299',
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomRoundContainer(
                        onTap: () {},
                        nameImage: 'bag5.png',
                        containerColor: Colors.black54,
                        containerHeight: 230.0,
                        containerWidth: 170.0,
                        brandText: 'One hand',
                        price: '199',
                      ),
                      CustomRoundContainer(
                        onTap: () {},
                        nameImage: 'bag1.png',
                        containerColor: Colors.redAccent,
                        containerHeight: 230.0,
                        containerWidth: 170.0,
                        brandText: 'curly hand bag',
                        price: '499',
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomRoundContainer(
                        onTap: () {},
                        nameImage: 'bag2.png',
                        containerColor: Colors.redAccent,
                        containerHeight: 230.0,
                        containerWidth: 170.0,
                        brandText: 'Office Code',
                        price: '234',
                      ),
                      CustomRoundContainer(
                        onTap: () {},
                        nameImage: 'bag6.png',
                        containerColor: Colors.blue,
                        containerHeight: 230.0,
                        containerWidth: 170.0,
                        brandText: 'Office Code',
                        price: '234',
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomRoundContainer(
                        onTap: () {},
                        nameImage: 'bag5.png',
                        containerColor: Colors.black54,
                        containerHeight: 230.0,
                        containerWidth: 170.0,
                        brandText: 'Office Code',
                        price: '234',
                      ),
                      CustomRoundContainer(
                        onTap: () {},
                        nameImage: 'bag1.png',
                        containerColor: Colors.redAccent,
                        containerHeight: 230.0,
                        containerWidth: 170.0,
                        brandText: 'Office Code',
                        price: '234',
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomRoundContainer(
                        onTap: () {},
                        nameImage: 'bag3.png',
                        containerColor: Colors.orangeAccent,
                        containerHeight: 230.0,
                        containerWidth: 170.0,
                        brandText: 'Office Code',
                        price: '234',
                      ),
                      CustomRoundContainer(
                        onTap: () {},
                        nameImage: 'bag4.png',
                        containerColor: Colors.yellowAccent,
                        containerHeight: 230.0,
                        containerWidth: 170.0,
                        brandText: 'Office Code',
                        price: '234',
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomRoundContainer(
                        onTap: () {},
                        nameImage: 'bag6.png',
                        containerColor: Colors.blue,
                        containerHeight: 230.0,
                        containerWidth: 170.0,
                        brandText: 'Office Code',
                        price: '234',
                      ),
                      CustomRoundContainer(
                        onTap: () {},
                        nameImage: 'bag5.png',
                        containerColor: Colors.black54,
                        containerHeight: 230.0,
                        containerWidth: 170.0,
                        brandText: 'Office Code',
                        price: '234',
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
