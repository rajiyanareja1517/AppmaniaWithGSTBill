import 'package:appmania/screens/favorite_page.dart';
import 'package:appmania/utils/all_product_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePage();
  }
}

class _HomePage extends State<HomePage> {
  @override
  String find = "Salad";

  Icon favIcon = Icon(
    Icons.favorite, // Icons.favorite
    color: Colors.red, // Colors.red
    size: 24,
  );
  Icon unfavIcon = Icon(
    Icons.favorite_border, // Icons.favorite_border
    color: Colors.grey,
    size: 24,
  );

  List<Map<String, dynamic>> sortProductData = <Map<String, dynamic>>[];

  @override
  void initState() {
    setState(() {
      for (int i = 0; i < ProductData.allProductData.length; i++) {
        if (ProductData.allProductData[i]['typeName'] == find) {
          sortProductData = ProductData.allProductData[i]['type'];
          print(
              "testtt:::>>$i..$sortProductData..$ProductData.allProductData..$find");
        }
      }
      print("testtt:::>>$sortProductData");
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    String search = '';
    var isFav = false;
    var searchTextController = TextEditingController();
    final double itemHeight = (size.height - kToolbarHeight - 32) / 2.5;
    final double itemWidth = size.width / 2.2;
    var findSaladSelected = Container(
      padding: EdgeInsets.only(right: 15, left: 15, bottom: 5, top: 5),
      child: Text(
        "Salad",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      decoration: BoxDecoration(
          color: Colors.green, borderRadius: BorderRadius.circular(20)),
    );
    var findSaladUnSelected = Container(
      padding: EdgeInsets.only(right: 15, left: 15, bottom: 5, top: 5),
      child: Text(
        "Salad",
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      decoration: BoxDecoration(
          color: Colors.grey.shade200, borderRadius: BorderRadius.circular(20)),
    );

    var findHotSaleSelected = Container(
      padding: EdgeInsets.only(right: 15, left: 15, bottom: 5, top: 5),
      child: Text(
        "Hot sale",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      decoration: BoxDecoration(
          color: Colors.green, borderRadius: BorderRadius.circular(20)),
    );
    var findHotSaleUnSelected = Container(
      padding: EdgeInsets.only(right: 15, left: 15, bottom: 5, top: 5),
      child: Text(
        "Hot sale",
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      decoration: BoxDecoration(
          color: Colors.grey.shade200, borderRadius: BorderRadius.circular(20)),
    );

    var findPopSelected = Container(
      padding: EdgeInsets.only(right: 15, left: 15, bottom: 5, top: 5),
      child: Text(
        "Popularity",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      decoration: BoxDecoration(
          color: Colors.green, borderRadius: BorderRadius.circular(20)),
    );
    var findPopUnSelected = Container(
      padding: EdgeInsets.only(right: 15, left: 15, bottom: 5, top: 5),
      child: Text(
        "Popularity",
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      decoration: BoxDecoration(
          color: Colors.grey.shade200, borderRadius: BorderRadius.circular(20)),
    );

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leading: Icon(
          Icons.location_on_rounded,
          color: Colors.black,
        ),
        title: Text(
          "Rajkot City",
          style: TextStyle(fontSize: 18),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FavoritePage()),
                ).then((value) => setState(() {}));
                // Navigator.pushNamed(context, 'favPage');
              },
              child: Container(
                width: 37,
                height: 37,
                alignment: Alignment.center,
                child: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
                decoration: BoxDecoration(
                    color: Color(0xffF4F4F4),
                    borderRadius: BorderRadius.circular(90)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'cartPage');
              },
              child: Container(
                width: 37,
                height: 37,
                alignment: Alignment.center,
                child: Icon(
                  Icons.filter_list_rounded,
                  color: Colors.black,
                ),
                decoration: BoxDecoration(
                    color: Color(0xffF4F4F4),
                    borderRadius: BorderRadius.circular(90)),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(
                left: 20,
                top: 10,
                right: 20,
                bottom: 10,
              ),
              child: RichText(
                text: const TextSpan(children: [
                  TextSpan(
                      text: "Find The",
                      style: TextStyle(color: Colors.black, fontSize: 30)),
                  TextSpan(
                      text: " Best \nFood",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: " Around You",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                      )),
                ]),
              ),
            ),
            Container(
              height: 40,
              margin: EdgeInsets.only(
                left: 20,
                top: 10,
                right: 20,
                bottom: 10,
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color(0xffF4F4F4),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Icon(
                            Icons.search,
                            color: Color(0xff797887),
                          )),
                      Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text(
                            "Search your favourit food",
                            style: TextStyle(color: Color(0xffA8A8A8)),
                          )),
                    ],
                  ),
                  Container(
                      margin: EdgeInsets.only(right: 10),
                      child: Icon(Icons.power_input_rounded))
                ],
              ),
            ),
            SizedBox(
              height: 37,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: 20,
                  ),
                  child: Text(
                    "Find",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 20),
                  ),
                ),
                SizedBox(
                  width: 7,
                ),
                Text(
                  "5km",
                  style: TextStyle(color: Colors.orange, fontSize: 15),
                ),
                Icon(
                  Icons.chevron_right,
                  color: Colors.orange,
                  size: 20,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      find = "Salad";

                      for (int i = 0;
                          i < ProductData.allProductData.length;
                          i++) {
                        if (ProductData.allProductData[i]['typeName'] == find) {
                          sortProductData =
                              ProductData.allProductData[i]['type'];
                        } else {
                          var r = ProductData.allProductData[i]['typeName'];
                        }
                      }
                    });
                  },
                  child:
                      find == "Salad" ? findSaladSelected : findSaladUnSelected,
                ),
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      find = "Hot Sale";

                      for (int i = 0;
                          i < ProductData.allProductData.length;
                          i++) {
                        if (ProductData.allProductData[i]['typeName'] == find) {
                          sortProductData =
                              ProductData.allProductData[i]['type'];
                          print("lkjkhjhjhgghvhgfvghv55555555");
                          /*print(
                              "testtt:::>>$i..$sortProductData..$ProductData.allProductData..$find");*/
                        } else {
                          var r = ProductData.allProductData[i]['typeName'];
                          print(".............$r-============$find");
                        }
                        print("11111111111111111111111111111");
                        /*  print(
                            "testtt2:::>>$i..$sortProductData..$ProductData.allProductData..$find");*/
                      }
                    });
                  },
                  child: find == "Hot Sale"
                      ? findHotSaleSelected
                      : findHotSaleUnSelected,
                ),
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      find = "Popularity";

                      for (int i = 0;
                          i < ProductData.allProductData.length;
                          i++) {
                        if (ProductData.allProductData[i]['typeName'] == find) {
                          sortProductData =
                              ProductData.allProductData[i]['type'];
                          print("lkjkhjhjhgghvhgfvghv55555555");
                          /*print(
                              "testtt:::>>$i..$sortProductData..$ProductData.allProductData..$find");*/
                        } else {
                          var r = ProductData.allProductData[i]['typeName'];
                          print(".............$r-============$find");
                        }
                        print("11111111111111111111111111111");
                        /*  print(
                            "testtt2:::>>$i..$sortProductData..$ProductData.allProductData..$find");*/
                      }
                    });
                  },
                  child: find == "Popularity"
                      ? findPopSelected
                      : findPopUnSelected,
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Flexible(
              child: GridView.builder(
                padding: EdgeInsets.all(15),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                    childAspectRatio: itemWidth / itemHeight),
                itemCount: sortProductData.length,
                itemBuilder: (context, index) {
                  return Container(
                      child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "detailsPage",
                          arguments: sortProductData[index]);
                    },
                    child: Container(
                      width: 160,
                      height: 260,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Stack(
                            children: [
                              Align(
                                alignment: Alignment.topRight,
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      sortProductData[index]['isFav'] =
                                          !sortProductData[index]['isFav'];
                                      if (sortProductData[index]['isFav'] ==
                                          true) {
                                        ProductData.favData
                                            .add(sortProductData[index]);
                                        ProductData.covertUniqueData();
                                      } else {
                                        ProductData.favData
                                            .remove(sortProductData[index]);
                                        ProductData.covertUniqueData();
                                      }
                                    });
                                  },
                                  icon: sortProductData[index]['isFav']
                                      ? favIcon
                                      : unfavIcon,
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                  width: 120,
                                  height: 120,
                                  margin: EdgeInsets.only(top: 25),
                                  child: CircleAvatar(
                                      radius: 100,
                                      backgroundImage: NetworkImage(
                                          "${sortProductData[index]['thumbnail']}")),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10, right: 10),
                            child: SizedBox(
                              width: 150,
                              child: Text(
                                "${sortProductData[index]['title']}",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Text(
                                    sortProductData[index]['timing'],
                                    style: TextStyle(color: Colors.grey),
                                  )),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star_border_purple500_outlined,
                                    color: Colors.amber,
                                    size: 19,
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    sortProductData[index]['rating'].toString(),
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  margin: EdgeInsets.only(left: 15, bottom: 10),
                                  child: Text(
                                    "\$ ${sortProductData[index]['price'].toString()},",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  )),
                              GestureDetector(
                                onTap: () {
                                  sortProductData[index]['cartCount'] =
                                      sortProductData[index]['cartCount'] + 1;
                                  if(sortProductData[index]['cartCount']>0){
                                    sortProductData[index]['cartPrice']=0;
                                    for(int i=0;i<sortProductData[index]['cartCount'];i++){
                                      sortProductData[index]['cartPrice'] +=sortProductData[index]['price'];
                                    }
                                  }else{
                                    sortProductData[index]['cartPrice']=sortProductData[index]['price'];
                                  }
                                  ProductData.cartData
                                      .add(sortProductData[index]);
                                  ProductData.covertUniqueData();
                                },
                                child: Align(
                                  alignment: Alignment.bottomRight,
                                  child: Container(
                                    width: 37,
                                    height: 37,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(15),
                                            bottomRight: Radius.circular(15))),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
