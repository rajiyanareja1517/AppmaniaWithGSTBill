class ProductData {
  static Set<Map<String, dynamic>> cartData = {};
  static List<Map<String, dynamic>> cartProductData = [];

  static Set<Map<String, dynamic>> favData = {};
  static List<Map<String, dynamic>> favProductData = [];

  static List<Map<String, dynamic>> allProductData = <Map<String, dynamic>>[
    {
      'typeName': 'Popularity',
      'type': [
        {
          'id': 1,
          'title': "Broccoli Pesto",
          'price': 218,
          'cartCount': 0,
          'cartPrice': 0,
          'delivery': 3.0,
          'rating': 4,
          'timing': "20min",
          'cookingTime': "10min",
          'description':
              "Made with a handful of basic ingredients, this vibrant broccoli pesto is insanely easy to make. Toss it with pasta for a delicious weeknight dinner!",
          'type': "Popularity",
          'isFav': false,
          'thumbnail':
              "https://cdn.loveandlemons.com/wp-content/uploads/2021/02/broccoli-pesto-1.jpg",
          'images': [
            "https://cdn.loveandlemons.com/wp-content/uploads/2021/02/broccoli-pesto-2.jpg",
            "https://cdn.loveandlemons.com/wp-content/uploads/2021/02/broccoli-pesto-3.jpg",
            "https://cdn.loveandlemons.com/wp-content/uploads/2021/02/broccoli-pesto-pasta.jpg",
            "https://cdn.loveandlemons.com/wp-content/uploads/2021/02/broccoli-pesto.jpg",
          ],
          'ingradients': [
            "🍅",
            "🍈",
            "🥬",
            "🍐",
            "🍏",
            "🥭",
            "🍍",
            "🍋",
            "🍊",
            "🍎",
            "🍌",
            "🍉",
            "🍈",
            "🍇"
          ]
        },
        {
          'id': 2,
          'title': "Broccoli Pesto Quinoa Salad",
          'price': 218,
          'delivery': 3.0,
          'rating': 4,
          'cartCount': 0,
          'cartPrice': 0,
          'timing': "20min",
          'cookingTime': "10min",
          'description':
              "This quinoa salad is my ideal lunch! It's fresh & filling, topped with blanched broccoli, lemony pesto, crispy chickpeas, crunchy veggies & avocado.",
          'type': "Popularity",
          'isFav': false,
          'thumbnail':
              "https://cdn.loveandlemons.com/wp-content/uploads/2019/04/quinoa-salad.jpg",
          'images': [
            "https://cdn.loveandlemons.com/wp-content/uploads/2019/04/quinoa-salad2.jpg",
            "https://cdn.loveandlemons.com/wp-content/uploads/2019/04/quinoa-salad3.jpg",
            "https://cdn.loveandlemons.com/wp-content/uploads/2019/04/quinoa-salad1.jpg"
          ],
          'ingradients': [
            "🍅",
            "🍓",
            "🥝",
            "🍈",
            "🥬",
            "🍐",
            "🍏",
            "🥭",
            "🍍",
            "🍋",
            "🍊",
            "🍎",
            "🍌",
            "🍉",
            "🍈",
            "🍇"
          ]
        },
        {
          'id': 3,
          'title': "Healthy Taco Salad",
          'price': 250,
          'delivery': 3.0,
          'cartCount': 0,
          'cartPrice': 0,
          'rating': 4.5,
          'timing': "25min",
          'cookingTime': "15min",
          'type': "Popularity",
          'isFav': false,
          'description':
              "Nothing beats this healthy taco salad recipe in the summertime. Crisp veggies, creamy dressing & crunchy tortilla strips make it fresh & fun to eat.",
          'thumbnail':
              "https://cdn.loveandlemons.com/wp-content/uploads/2019/05/IMG_18225-taco-salad2.jpg",
          'images': [
            "https://cdn.loveandlemons.com/wp-content/uploads/2019/05/IMG_18151.jpg",
            "https://cdn.loveandlemons.com/wp-content/uploads/2019/05/IMG_18137.jpg",
            "https://cdn.loveandlemons.com/wp-content/uploads/2019/05/IMG_18225-taco-salad-close.jpg"
          ],
          'ingradients': [
            "🥕",
            "🫘",
            "🥜",
            "🥑",
            "🍄",
            "🫒",
            "🫑",
            "🌽",
            "🍏",
            "🥭",
            "🍍",
            "🍋",
            "🍊",
            "🍎",
            "🍌",
            "🍉",
            "🍈",
            "🍇"
          ]
        },
      ]
    },
    {
      'typeName': 'Hot Sale',
      'type': [
        {
          'id': 4,
          'title': "Citrus Cabbage Salad",
          'price': 250,
          'delivery': 3.0,
          'cartCount': 0,
          'cartPrice': 0,
          'rating': 4.5,
          'timing': "25min",
          'cookingTime': "15min",
          'type': "Hot Sale",
          'isFav': false,
          'description':
              "This napa cabbage salad is a stunning showcase for colorful winter produce. Sweet & tangy with lots of veggie crunch, it's an entertaining showstopper.",
          'thumbnail':
              "https://cdn.loveandlemons.com/wp-content/uploads/2016/12/IMG_2016_12_11_09130-cropped.jpg",
          'images': [
            "https://cdn.loveandlemons.com/wp-content/uploads/2016/12/IMG_2016_12_11_09108.jpg",
            "https://cdn.loveandlemons.com/wp-content/uploads/2016/12/DSC03944-cropped.jpg",
            "https://cdn.loveandlemons.com/wp-content/uploads/2016/12/IMG_2016_12_11_09110.jpg",
            "https://cdn.loveandlemons.com/wp-content/uploads/2016/12/IMG_2016_12_11_09122.jpg",
            "https://cdn.loveandlemons.com/wp-content/uploads/2016/12/IMG_2016_12_11_09130-2.jpg"
          ],
          'ingradients': [
            "🥕",
            "🍏",
            "🥭",
            "🍍",
            "🍋",
            "🍊",
            "🍎",
            "🍌",
            "🍉",
            "🍈",
            "🍇"
          ]
        },
        {
          'id': 5,
          'title': "Green Salad Recipes",
          'price': 250,
          'delivery': 3.0,
          'cartCount': 0,
          'cartPrice': 0,
          'rating': 4.5,
          'timing': "25min",
          'cookingTime': "15min",
          'type': "Hot Sale",
          'isFav': false,
          'description':
              "This green salad recipe is simple, but it's still packed with delicious textures and flavors. It's a perfect side dish - you can serve it with almost anything!",
          'thumbnail':
              "https://cdn.loveandlemons.com/wp-content/uploads/2021/04/green-salad-1.jpg",
          'images': [
            "https://cdn.loveandlemons.com/wp-content/uploads/2021/03/best-green-salad.jpg"
                "https://cdn.loveandlemons.com/wp-content/uploads/2021/04/mixed-green-salad.jpg",
            "https://cdn.loveandlemons.com/wp-content/uploads/2021/03/best-green-salad-recipes.jpg",
            "https://cdn.loveandlemons.com/wp-content/uploads/2021/04/green-salad-ideas.jpg"
          ],
          'ingradients': [
            "🥑",
            "🍄",
            "🫒",
            "🫑",
            "🌽",
            "🍏",
            "🥭",
            "🍍",
            "🍋",
          ]
        },
        {
          'id': 8,
          'title': "Fennel and Peach Salad",
          'price': 570,
          'delivery': 3.0,
          'cartCount': 0,
          'cartPrice': 0,
          'rating': 4.7,
          'timing': "25min",
          'cookingTime': "15min",
          'type': "Hot Sale",
          'isFav': false,
          'description':
              "This summer salad has all my favorite ingredients: fresh herbs, crisp fennel & juicy peaches. Pistachios, pesto & feta give it tangy, rich pops of flavor.",
          'thumbnail':
              "https://cdn.loveandlemons.com/wp-content/uploads/2018/08/IMG_13273-cropped3.jpg",
          'images': [
            "https://cdn.loveandlemons.com/wp-content/uploads/2018/08/IMG_13269.jpg",
            "https://cdn.loveandlemons.com/wp-content/uploads/2018/08/IMG_13273-2.jpg",
          ],
          'ingradients': ["🍍", "🍋", "🍊", "🍎", "🍌", "🍉", "🍈", "🍇"]
        },
        {
          'id': 9,
          'title': "Mediterranean Quinoa Bowl",
          'price': 570,
          'delivery': 3.0,
          'cartCount': 0,
          'cartPrice': 0,
          'rating': 4.7,
          'timing': "25min",
          'cookingTime': "15min",
          'type': "Hot Sale",
          'isFav': false,
          'description':
              "This Mediterranean quinoa bowl is a delicious weeknight dinner or healthy lunch! Great for meal prep, it's packed with veggies, chickpeas, and more.",
          'thumbnail':
              "https://cdn.loveandlemons.com/wp-content/uploads/2023/05/quinoa-bowl-recipe.jpg",
          'images': [
            "https://cdn.loveandlemons.com/wp-content/uploads/2023/05/quinoa-bowls.jpg",
            "https://cdn.loveandlemons.com/wp-content/uploads/2023/05/quinoa-bowl-recipes.jpg",
            "https://cdn.loveandlemons.com/wp-content/uploads/2023/05/mediterranean-quinoa-bowl.jpg",
            "https://cdn.loveandlemons.com/wp-content/uploads/2023/05/quinoa-bowl.jpg"
          ],
          'ingradients': [
            "🥑",
            "🍄",
            "🫒",
            "🫑",
            "🌽",
            "🥭",
            "🍍",
            "🍋",
            "🍊",
            "🍎",
            "🍈",
            "🍇"
          ]
        },
      ]
    },
    {
      'typeName': 'Salad',
      'type': [
        {
          'id': 6,
          'title': "Watermelon Salad with Feta",
          'price': 250,
          'delivery': 3.0,
          'cartCount': 0,
          'cartPrice': 0,
          'rating': 4.5,
          'timing': "25min",
          'cookingTime': "15min",
          'type': "Salad",
          'isFav': false,
          'description':
              "This delicious, refreshing watermelon salad recipe is meant for hot summer days. With feta, avocado, mint & lime, it's the perfect mix of savory & sweet",
          'thumbnail':
              "https://cdn.loveandlemons.com/wp-content/uploads/2013/08/watermelon-salad.jpg",
          'images': [
            "https://cdn.loveandlemons.com/wp-content/uploads/2013/08/IMG_19051.jpg",
            "https://cdn.loveandlemons.com/wp-content/uploads/2013/08/IMG_19049.jpg",
            "https://cdn.loveandlemons.com/wp-content/uploads/2013/08/IMG_19077.jpg"
          ],
          'ingradients': [
            "🥕",
            "🫘",
            "🥜",
            "🥑",
            "🥭",
            "🍍",
            "🍋",
            "🍊",
            "🍎",
            "🍌",
            "🍉",
            "🍈",
            "🍇"
          ]
        },
        {
          'id': 7,
          'title': "Citrus Salad with Fennel & Avocado",
          'price': 250,
          'delivery': 3.0,
          'cartCount': 0,
          'cartPrice': 0,
          'rating': 4.7,
          'timing': "25min",
          'cookingTime': "15min",
          'type': "Salad",
          'isFav': false,
          'description':
              "This citrus salad will brighten up any winter day! It's refreshing, light, and filled with flavor from fennel, fresh mint, avocado, and more.",
          'thumbnail':
              "https://cdn.loveandlemons.com/wp-content/uploads/2020/03/citrus-salad-recipe.jpg",
          'images': [
            "https://cdn.loveandlemons.com/wp-content/uploads/2020/03/citrus-salad-recipe.jpg",
            "https://cdn.loveandlemons.com/wp-content/uploads/2020/03/citrus-avocado-salad.jpg",
            "https://cdn.loveandlemons.com/wp-content/uploads/2020/03/fennel-citrus-salad.jpg"
          ],
          'ingradients': [
            "🥕",
            "🫘",
            "🥜",
            "🥑",
            "🍄",
            "🫒",
            "🫑",
            "🌽",
            "🍏",
            "🥭",
            "🍍",
            "🍋",
            "🍊",
            "🍎",
            "🍌",
            "🍉",
            "🍈",
            "🍇"
          ]
        },
        {
          'id': 10,
          'title': "Peanut Noodles",
          'price': 570,
          'delivery': 3.0,
          'cartCount': 0,
          'cartPrice': 0,
          'rating': 4.7,
          'timing': "25min",
          'cookingTime': "15min",
          'type': "Salad",
          'isFav': false,
          'description':
              "This peanut noodles recipe is a quick, delicious meal! You can stir together the spicy, creamy peanut sauce while the noodles cook. So easy!",
          'thumbnail':
              "https://cdn.loveandlemons.com/wp-content/uploads/2023/04/peanut-noodles-recipe.jpg",
          'images': [
            "https://cdn.loveandlemons.com/wp-content/uploads/2023/04/peanut-butter-noodles.jpg",
            "https://cdn.loveandlemons.com/wp-content/uploads/2023/04/peanut-sauce-noodles.jpg",
            "https://cdn.loveandlemons.com/wp-content/uploads/2023/04/thai-peanut-noodles.jpg",
            "https://cdn.loveandlemons.com/wp-content/uploads/2023/04/peanut-noodles.jpg"
          ],
          'ingradients': [
            "🥕",
            "🫘",
            "🥜",
            "🥑",
            "🍄",
            "🫒",
            "🫑",
            "🌽",
            "🍏",
            "🥭",
            "🍍",
            "🍋",
            "🍊",
            "🍎",
            "🍈",
            "🍇"
          ]
        },
      ]
    }
  ];

  static void covertUniqueData() {
    cartProductData = cartData.toList();
    favProductData = favData.toList();
  }

  static num totalPrice() {
    num sum = 0;
    for (var element in cartProductData) {
      if (element['cartCount'] > 0) {
        for (int i = 0; i < element['cartCount']; i++) {
          sum += element['price'];
        }
      } else {
        sum += element['price'];
      }
    }
    return sum;
  }

  static num totalDelivery() {
    num sum = 0;
    for (var element in cartProductData) {
      sum += element['delivery'];
    }
    return sum;
  }

  static num totalGST() {
    num sum = totalPrice() * 18 / 100;
    return sum;
  }

  static num finalTotalPrice() {
    num sum = totalPrice() + totalDelivery() + totalGST();
    return sum;
  }

  static num total(e) {
    num sum = 0;
  for(int i=0;i<e['cartCount'];i++){
    sum+=e['price'];
  }
    return sum;
  }
}
