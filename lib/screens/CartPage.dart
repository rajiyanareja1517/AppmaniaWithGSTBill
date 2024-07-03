import 'package:appmania/utils/all_product_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CartPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CaetPage();
  }
}

class _CaetPage extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Cart",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.close),
              color: Colors.white,
            ),
          )
        ],
        backgroundColor: Colors.green,
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.green),
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            margin: EdgeInsets.only(top: 50),
            decoration: BoxDecoration(
                color: Color(0xddf4f2ff),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20))),
            child: ProductData.cartData.length == 0
                ? Container(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.shopify,
                          size: 100,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Your cart is empty!",
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.blue)),
                            onPressed: () {
                              Navigator.pushNamed(context, 'homePage');
                              Navigator.pop(context);
                            },
                            child: Text(
                              "Shop Now",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ))
                      ],
                    ),
                  )
                : Column(
                    children: [
                      Expanded(
                        flex: 3,
                        child: ListView.builder(
                          padding:
                              EdgeInsets.only(left: 20, right: 20, top: 20),
                          itemCount: ProductData.cartData.length,
                          itemBuilder: (context, index) {
                            return Container(
                              height: 100,
                              margin: EdgeInsets.only(top: 10),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15))),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Align(
                                        child: Container(
                                          width: 120,
                                          height: 120,
                                          margin: EdgeInsets.only(
                                              top: 10, bottom: 10),
                                          child: CircleAvatar(
                                              radius: 90,
                                              backgroundImage: NetworkImage(
                                                  "${ProductData.cartProductData[index]['thumbnail']}")),
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            width: 150,
                                            child: Text(
                                              "${ProductData.cartProductData[index]['title']}",
                                              maxLines: 1,
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                          Text(
                                            "\$${ProductData.cartProductData[index]['price']}",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Row(
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              ProductData.cartProductData[index]
                                                      ['cartCount'] =
                                                  ProductData.cartProductData[
                                                          index]['cartCount'] -
                                                      1;
                                              setState(() {});
                                              if (ProductData.cartProductData[
                                                      index]['cartCount'] ==
                                                  0) {
                                                ProductData.cartData.remove(
                                                    ProductData.cartProductData[
                                                        index]);
                                                ProductData.cartProductData
                                                    .removeAt(index);
                                              }
                                            },
                                            child: Container(
                                                height: 27,
                                                width: 27,
                                                alignment: Alignment.center,
                                                decoration: BoxDecoration(
                                                    color: Colors.black,
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                20))),
                                                child: Icon(
                                                  Icons.remove,
                                                  color: Colors.white,
                                                )),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            "${ProductData.cartProductData[index]['cartCount']}",
                                            style: TextStyle(fontSize: 18),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          InkWell(
                                            onTap: () {
                                              ProductData.cartProductData[index]
                                                      ['cartCount'] =
                                                  ProductData.cartProductData[
                                                          index]['cartCount'] +
                                                      1;
                                              if (ProductData.cartProductData[index]['cartCount'] > 0) {
                                                ProductData.cartProductData[index]['cartPrice'] = 0;
                                                for (int i = 0; i < ProductData.cartProductData[index]['cartCount']; i++) {
                                                  ProductData.cartProductData[
                                                          index]['cartPrice'] +=
                                                      ProductData
                                                              .cartProductData[
                                                          index]['price'];
                                                }
                                              } else {
                                                ProductData
                                                        .cartProductData[index]
                                                    ['cartPrice'] = ProductData
                                                        .cartProductData[index]
                                                    ['price'];
                                              }
                                              setState(() {});
                                            },
                                            child: Container(
                                                height: 27,
                                                width: 27,
                                                alignment: Alignment.center,
                                                decoration: BoxDecoration(
                                                    color: Colors.black,
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                20))),
                                                child: Icon(
                                                  Icons.add,
                                                  color: Colors.white,
                                                )),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "\$ ${ProductData.cartProductData[index]['cartPrice']}",
                                        style: TextStyle(
                                            color: Colors.grey.shade900),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          width: double.infinity,
                          height: 700,
                          alignment: Alignment.bottomCenter,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20))),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    left: 10, right: 10, top: 10, bottom: 5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Subtotal",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    Text(
                                      "\$${ProductData.totalPrice()}",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(
                                height: 2,
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    left: 10, right: 10, top: 5, bottom: 5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Delivery",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    Text(
                                      "\$${ProductData.totalDelivery()}",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(
                                height: 2,
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    left: 10, right: 10, top: 5, bottom: 5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "GST(18%)",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    Text(
                                      "\$${ProductData.totalGST()}",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(
                                height: 2,
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    left: 10, right: 10, top: 5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Total",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "\$${ProductData.finalTotalPrice()}",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, "billPage");
                                },
                                child: Container(
                                  width: double.infinity,
                                  height: 57,
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.only(
                                      left: 10, right: 10, top: 20),
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10))),
                                  child: Text(
                                    "CHECKOUT",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
          ),
        ],
      ),
    );
  }
}
