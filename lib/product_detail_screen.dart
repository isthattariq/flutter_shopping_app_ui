import 'package:flutter/material.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({Key? key}) : super(key: key);

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  int radioGroup = 0;
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0,
        leading: IconButton(
          color: Colors.white,
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back,
            size: 35.0,
          ),
        ),
        actions: const [
          Icon(
            Icons.search,
            size: 40.0,
            color: Colors.white,
          ),
          SizedBox(width: 15.0),
          Icon(
            Icons.shopping_cart_outlined,
            size: 35.0,
            color: Colors.white,
          ),
          SizedBox(width: 10.0),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 50, top: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Aristocratic Hand Bag',
                    style: TextStyle(color: Colors.white),
                  ),
                  const Text(
                    'Office Code',
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Price',
                            style:
                                TextStyle(fontSize: 16.0, color: Colors.white),
                          ),
                          Text(
                            '\$234',
                            style: TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )
                        ],
                      ),
                      const SizedBox(width: 10.0),
                      Image.asset(
                        'assets/bag1.png',
                        width: 250,
                        height: 250,
                      ),
                    ],
                  ),
                  // SizedBox(height: 0.200,),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              height: 475.750,
              width: MediaQuery.of(context).size.width,
              child: Container(
                margin: const EdgeInsets.only(left: 25, top: 80, right: 25),
                //color: Colors.green,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 100,
                          width: 150,
                          //color: Colors.grey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Color',
                                style: TextStyle(fontSize: 19),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Radio(
                                    fillColor: MaterialStateColor.resolveWith(
                                        (states) => Colors.red),
                                    overlayColor:
                                        MaterialStateColor.resolveWith(
                                            (states) => Colors.red),
                                    focusColor: Colors.red,
                                    value: 0,
                                    groupValue: radioGroup,
                                    onChanged: (value) {
                                      setState(() {
                                        radioGroup = value as int;
                                      });
                                    },
                                  ),
                                  Radio(
                                      fillColor: MaterialStateColor.resolveWith(
                                          (states) => Colors.green),
                                      overlayColor:
                                          MaterialStateColor.resolveWith(
                                              (states) => Colors.green),
                                      focusColor: Colors.green,
                                      activeColor: Colors.green,
                                      value: 1,
                                      groupValue: radioGroup,
                                      onChanged: (value) {
                                        setState(() {
                                          radioGroup = value as int;
                                        });
                                      }),
                                  Radio(
                                      fillColor: MaterialStateColor.resolveWith(
                                          (states) => Colors.black),
                                      overlayColor:
                                          MaterialStateColor.resolveWith(
                                              (states) => Colors.black),
                                      focusColor: Colors.black,
                                      value: 2,
                                      groupValue: radioGroup,
                                      onChanged: (value) {
                                        setState(() {
                                          radioGroup = value as int;
                                        });
                                      }),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          height: 80.0,
                          width: 80.0,
                          //color: Colors.grey,
                          child: Column(
                            children: const [
                              Text(
                                'Size',
                                style: TextStyle(fontSize: 19),
                              ),
                              SizedBox(height: 10.0),
                              Text(
                                '12 cm',
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Text(
                        'A bag is a common tool in the form of a non-rigid container. The use of bags predates recorded history, with the earliest bags being no more than lengths of animal skin, cotton, or woven plant fibers'),
                    //--------------------description
                    const SizedBox(height: 50.0),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white12,
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                counter--;
                              });
                            },
                            icon: const Icon(Icons.remove),
                          ),
                        ),
                        const SizedBox(width: 15.0),
                        Text(
                          '0$counter',
                          style: const TextStyle(fontSize: 19),
                        ),
                        const SizedBox(width: 15.0),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white12,
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                counter++;
                              });
                            },
                            icon: const Icon(Icons.add),
                          ),
                        ),
                        const SizedBox(width: 155.0),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.red,
                            border: Border.all(color: Colors.red),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.favorite,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    //-------------------- cart and button

                    const SizedBox(height: 38.0),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white12,
                            border: Border.all(color: Colors.red),
                            borderRadius: BorderRadius.circular(18),
                          ),
                          padding: const EdgeInsets.all(5),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.add_shopping_cart_outlined,
                              color: Colors.red,
                            ),
                          ),
                        ),
                        const SizedBox(width: 25.0),
                        Container(
                          height: 55.0,
                          width: 275.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.red,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            onPressed: () {},
                            child: const Text(
                              'BUY NOW',
                              style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
