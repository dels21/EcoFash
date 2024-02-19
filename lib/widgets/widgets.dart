import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class GridViews extends StatelessWidget {
  String name;
  int price;
  String url;
  GridViews(
      {super.key, required this.name, required this.price, required this.url});
  // const GridViews({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2,
      child: Center(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 2 - 25,
              height: 240,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/$url'), fit: BoxFit.cover),
              ),
              child: const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 5, 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.favorite_border,
                      color: Colors.red,
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '21WN',
                    style: GoogleFonts.tenorSans(),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    name,
                    style: GoogleFonts.tenorSans(),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    '\$$price',
                    style: GoogleFonts.tenorSans(
                        textStyle: const TextStyle(color: Colors.red)),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ProductColor extends StatelessWidget {
  String productColor = '';
  int hexToInteger(String hex) => int.parse(hex, radix: 16);
  ProductColor({super.key, required this.productColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20.0,
      height: 20.0,
      decoration: BoxDecoration(
        color: Color(hexToInteger(productColor)),
        shape: BoxShape.circle,
      ),
    );
  }
}

class ProductDetailedView extends StatelessWidget {
  String productName = '';
  String productDescription = '';
  int productPrice = 0;
  ProductDetailedView(
      {super.key,
      required this.productName,
      required this.productDescription,
      required this.productPrice});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.65,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/Home_page_1.png'),
                    fit: BoxFit.cover)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 0.0),
          child: Container(
            // color: Colors.red,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productName,
                  textAlign: TextAlign.left,
                  style: GoogleFonts.tenorSans(
                    textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                const SizedBox(
                  height: 6.0,
                ),
                Text(
                  productDescription,
                  textAlign: TextAlign.left,
                  style: GoogleFonts.tenorSans(
                    textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w300),
                  ),
                ),
                const SizedBox(
                  height: 6.0,
                ),
                Text(
                  '\$$productPrice',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.tenorSans(
                    textStyle: const TextStyle(
                        color: Colors.red,
                        fontSize: 18,
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ProductInformation extends StatelessWidget {
  String title = '';
  String content = '';
  ProductInformation({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 0.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                textAlign: TextAlign.left,
                style: GoogleFonts.tenorSans(
                  textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                content,
                textAlign: TextAlign.left,
                style: GoogleFonts.tenorSans(
                  textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w300),
                ),
              )
            ],
          ),
        ));
  }
}

class WishlistEmpty extends StatelessWidget {
  const WishlistEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Row(
              children: [
                Icon(
                  Icons.close,
                  size: 30,
                ),
              ],
            ),
            Text(
              'WISHLIST',
              style: GoogleFonts.tenorSans(
                textStyle: const TextStyle(fontSize: 24),
              ),
            ),
            const Image(
              image: AssetImage('images/Home_page_garis.png'),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              '0 ITEM(S)',
              style: GoogleFonts.tenorSans(
                textStyle: const TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ),
            const Spacer(),
            Column(
              children: [
                Text(
                  "THERE'S NO WISHLIST",
                  style: GoogleFonts.tenorSans(
                    textStyle: const TextStyle(),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                  ),
                  child: Text(
                    'SELECT PRODUCT',
                    style: GoogleFonts.tenorSans(
                      textStyle: const TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

class WishlistItems extends StatelessWidget {
  const WishlistItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class CartEmpty extends StatelessWidget {
  const CartEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const Row(
                  children: [
                    Icon(
                      Icons.close,
                      size: 30,
                    ),
                  ],
                ),
                Text(
                  'CART',
                  style: GoogleFonts.tenorSans(
                    textStyle: const TextStyle(fontSize: 24),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Spacer(),
                Text(
                  "You have no items in your Shopping Bag.",
                  style: GoogleFonts.tenorSans(
                    textStyle: const TextStyle(),
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Product {
  String productName;
  String productDescription;
  int productQuantity;
  int productPrice;
  bool isChecked;

  Product({
    required this.productName,
    required this.productDescription,
    required this.productQuantity,
    required this.productPrice,
    required this.isChecked,
  });
}

class CartNoEmpty extends StatefulWidget {
  CartNoEmpty({Key? key}) : super(key: key);

  @override
  State<CartNoEmpty> createState() => _CartNoEmptyState();
}

class _CartNoEmptyState extends State<CartNoEmpty> {
  final List<Product> products = [
    Product(
      productName: 'L A M E R E I',
      productDescription: 'Recycle Boucle Knit Cardigan Pink',
      productQuantity: 2,
      productPrice: 120,
      isChecked: true,
    ),
    Product(
      productName: 'L A M A K A L I',
      productDescription: 'Recycle Boucle Knit Cardigan Orange',
      productQuantity: 2,
      productPrice: 100,
      isChecked: true,
    ),
  ];

  void _showDeleteConfirmationDialog(int index) {
    setState(() {
      products.removeAt(index);
      if (products.isEmpty) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CartEmpty()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double subtotal = 0;

    for (var product in products) {
      // Tambahkan produk ke subtotal hanya jika checkbox tercentang
      if (product.productQuantity > 0) {
        if (product.isChecked == true) {
          subtotal += product.productPrice * product.productQuantity;
        }
      }
    }

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  // Handle closing the cart
                },
                icon: Icon(
                  Icons.close,
                  size: 30,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                child: Text(
                  'CART',
                  style: TextStyle(fontSize: 24),
                ),
              ),
              SizedBox(height: 15),
              Expanded(
                child: ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    final product = products[index];
                    return CartItem(
                      product: product,
                      onQuantityChanged: (value) {
                        setState(() {
                          product.productQuantity = value;
                        });
                      },
                      onCheckedChanged: (value) {
                        setState(() {
                          product.isChecked = value;
                        });
                      },
                      onDelete: () {
                        _showDeleteConfirmationDialog(index);
                      },
                    );
                  },
                ),
              ),
              Divider(thickness: 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'SUBTOTAL',
                    style: TextStyle(fontSize: 25),
                  ),
                  Text(
                    '\$${subtotal.toStringAsFixed(2)}',
                    style: TextStyle(color: Colors.orange, fontSize: 25),
                  )
                ],
              ),
              SizedBox(height: 10),
              Text(
                '*shipping charges, taxes and discount codes ',
                style: TextStyle(color: Colors.grey),
              ),
              Text(
                'are calculated at the time of accounting.',
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CheckOutDetail extends StatefulWidget {
  CheckOutDetail({Key? key}) : super(key: key);

  @override
  State<CheckOutDetail> createState() => _CheckOutDetailState();
}

class _CheckOutDetailState extends State<CheckOutDetail> {
  final List<Product> products = [
    Product(
        productName: 'L A M E R E I',
        productDescription: 'Recycle Boucle Knit Cardigan Pink',
        productQuantity: 2,
        productPrice: 120,
        isChecked: true),
    Product(
      productName: 'L A M A K A L I',
      productDescription: 'Recycle Boucle Knit Cardigan Orange',
      productQuantity: 2,
      productPrice: 100,
      isChecked: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    double total = 0;

    for (var product in products) {
      total += product.productPrice * product.productQuantity;
    }

    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.375,
        child: Column(children: [
          Expanded(
            child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return CheckOutItem(
                  product: product,
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 0.0),
            child: Image(image: AssetImage('images/Checkout_page_line.png')),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'TOTAL',
                  style: TextStyle(fontSize: 25),
                ),
                Text(
                  '\$${total.toStringAsFixed(2)}',
                  style: TextStyle(color: Colors.orange, fontSize: 25),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class CartItem extends StatefulWidget {
  final Product product;
  final ValueChanged<int> onQuantityChanged;
  final VoidCallback onDelete;
  final ValueChanged<bool> onCheckedChanged;

  const CartItem({
    Key? key,
    required this.product,
    required this.onQuantityChanged,
    required this.onDelete,
    required this.onCheckedChanged,
  }) : super(key: key);

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Container(
        height: 150,
        decoration: BoxDecoration(
        color: Colors.white,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 50.0, 10.0, 10.0),
              child: SizedBox(
                width: 20,
                height: 20,
                child: Checkbox(
                  value: widget.product.isChecked,
                  onChanged: (bool? value) {
                    widget.onCheckedChanged(!widget.product.isChecked);
                  },
                ),
              ),
            ),
            Image(
              image: AssetImage('images/Cart_page_1.png'),
              fit: BoxFit.fill,
            ),
            SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.product.productName,
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 5),
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(
                    widget.product.productDescription,
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                  ),
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        if (widget.product.productQuantity > 0) {
                          widget.onQuantityChanged(
                              widget.product.productQuantity - 1);
                          if (widget.product.productQuantity == 0) {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text('Remove Item'),
                                  content: Text(
                                      'Are you sure you want to remove this item from the cart?'),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text('Cancel'),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                        widget.onDelete();
                                      },
                                      child: Text('OK'),
                                    ),
                                  ],
                                );
                              },
                            );
                          }
                        }
                      },
                      child: Image(image: AssetImage('images/minus.png')),
                    ),
                    SizedBox(width: 5),
                    Text(widget.product.productQuantity.toString()),
                    SizedBox(width: 5),
                    GestureDetector(
                      onTap: () {
                        widget.onQuantityChanged(
                            widget.product.productQuantity + 1);
                      },
                      child: Image(image: AssetImage('images/Plus.png')),
                    ),
                  ],
                ),
                Text(
                  '\$${widget.product.productPrice}',
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Order {
  int orderId;
  String recipientName;
  String recipientAddress;
  dynamic createdDate;
  String status;

  Order(
      {required this.orderId,
      required this.recipientName,
      required this.recipientAddress,
      required this.createdDate,
      required this.status});
}

class OrderItem {
  String productName;
  int quantity;

  OrderItem({required this.productName, required this.quantity});
}

class OrderDetail extends StatelessWidget {
  Order order;
  int customerId;

  final List<OrderItem> orderItems = [
    OrderItem(productName: 'Sweater', quantity: 20),
    OrderItem(productName: 'Sweater', quantity: 20),
  ];

  OrderDetail({Key? key, required this.order, required this.customerId})
      : super(key: key);

  Color _getBorderColor(String status) {
    if (status == 'completed') {
      return Colors.green; // Green color for completed status
    } else if (status == 'pending') {
      return Colors.yellow; // Yellow color for pending status
    } else {
      return Colors.red; // Default color for other statuses
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      child: GestureDetector(
        onTap: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            backgroundColor: Colors.transparent,
            builder: (BuildContext context) {
              return Container(
                color: Colors.transparent,
                child: Center(
                  child: FractionallySizedBox(
                    widthFactor: 0.8,
                    child: Container(
                      padding: EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 235, 232, 232),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 40.0),
                        child: Column(
                          mainAxisSize: MainAxisSize
                              .min, // Adjust the height based on content
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  icon: Icon(Icons.close),
                                ),
                              ],
                            ),
                            Text(
                              "ORDER",
                              style: GoogleFonts.zenAntique(
                                textStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                            ),
                            SizedBox(height: 20.0),
                            Text(
                              "Recipient Name: ${order.recipientName}",
                              style: GoogleFonts.zenAntique(
                                textStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              "Recipient Address: ${order.recipientAddress}",
                              style: GoogleFonts.zenAntique(
                                textStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              "Expected Received Date: ${order.createdDate}",
                              style: GoogleFonts.zenAntique(
                                textStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              "Items:",
                              style: GoogleFonts.zenAntique(
                                textStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                            ),
                            ListView.builder(
                              shrinkWrap: true,
                              itemCount: orderItems.length,
                              itemBuilder: (context, index) {
                                final orderItem = orderItems[index];
                                return Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 4.0),
                                  child: Row(
                                    children: [
                                      Icon(Icons.circle,
                                          size: 7.5, color: Colors.black),
                                      SizedBox(width: 5),
                                      Text(
                                        "${orderItem.productName} - ${orderItem.quantity} Pcs",
                                        style: GoogleFonts.zenAntique(
                                          textStyle: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w200,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
        child: Container(
          width: MediaQuery.of(context).size.width * 0.875,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 235, 232, 232),
            borderRadius: BorderRadius.circular(20.0),
            border: Border.all(
              color: _getBorderColor(
                  order.status), // Apply border color based on status
              width: 2.0,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
                child: Row(
                  children: [
                    Text(
                      "ORDER",
                      style: GoogleFonts.zenAntique(
                        textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Text(
                      "${order.orderId}",
                      style: GoogleFonts.zenAntique(
                        textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 4.0, 10.0, 4.0),
                child: Text(
                  "Recipient Address : ${order.recipientAddress}",
                  style: GoogleFonts.zenAntique(
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 4.0, 10.0, 20.0),
                child: Text(
                  "Expected Received Date : ${order.createdDate}",
                  style: GoogleFonts.zenAntique(
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CheckOutItem extends StatelessWidget {
  final Product product;

  const CheckOutItem({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Container(
        height: 150,
        margin: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: AssetImage('images/Cart_page_1.png'),
              fit: BoxFit.fill,
            ),
            SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.productName,
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 5),
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(
                    product.productDescription,
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                  ),
                ),
                SizedBox(height: 5),
                Text(product.productQuantity.toString() + ' Pcs'),
                Text(
                  '\$${product.productPrice}',
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
