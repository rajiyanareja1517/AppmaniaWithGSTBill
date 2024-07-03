import 'package:appmania/utils/all_product_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Wishlist",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          Padding(
              padding: const EdgeInsets.all(10),
              child: IconButton(
                icon: Icon(
                  Icons.close,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ))
        ],
        backgroundColor: Color(0xff63D346),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(color: Color(0xff63D346)),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 30),
            width: double.infinity,
            height: double.infinity,
            margin: EdgeInsets.only(top: 50),
            decoration: BoxDecoration(
                color: Color(0xddf4f2ff),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30))),
            child: ProductData.favProductData.length == 0
                ? Container(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Icon(
                          Icons.remove_shopping_cart,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "No Data Found!",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  )
                : ListView.builder(
                    itemCount: ProductData.favProductData.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 100,
                        margin: EdgeInsets.only(top: 10),
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        child: Row(
                          children: [
                            Align(
                              child: Container(
                                width: 120,
                                height: 120,
                                margin: EdgeInsets.only(top: 10, bottom: 10),
                                child: CircleAvatar(
                                    radius: 90,
                                    backgroundImage: NetworkImage(ProductData
                                        .favProductData[index]['thumbnail'])),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 170,
                                  child: Text(
                                    ProductData.favProductData[index]['title'],
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                Text(
                                  "\$ " +
                                      ProductData.favProductData[index]['price']
                                          .toString(),
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                margin: EdgeInsets.only(top: 15, right: 5),
                                child: IconButton(
                                    icon:
                                        Icon(Icons.delete, color: Colors.grey),
                                    onPressed: () {
                                      for (int i = 0;
                                          i < ProductData.allProductData.length;
                                          i++) {
                                        List<Map<String, dynamic>> temp =
                                            ProductData.allProductData[i]
                                                ['type'];

                                        for (int j = 0; j < temp.length; j++) {
                                          if (ProductData.allProductData[i]['type'][j]['id'] ==
                                              ProductData.favProductData[index]
                                                  ['id']) {
                                            ProductData.allProductData[i]['type'][j]['isFav'] = false;
                                            print("clickme");
                                          }
                                        }
                                      }

                                      ProductData.favData.remove(
                                          ProductData.favProductData[index]);
                                      ProductData.favProductData
                                          .removeAt(index);

                                      setState(() {});
                                    }),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
          )
        ],
      ),
    );
  }
}
