import 'package:dasar_harus_diketahui/presentation/item_detail/item_detail_page.dart';
import 'package:flutter/material.dart';

// class MenuList extends StatefulWidget {
//   const MenuList({super.key});

//   @override
//   State<MenuList> createState() => _MenuListState();
// }

// class _MenuListState extends State<MenuList> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Container(
//           color: Colors.blueAccent,
//           child: ListView(
//             children: [
//               Container(
//                 height: 200,
//                 width: 40,
//                 decoration: BoxDecoration(
//                   border: Border.all(),
//                 ),
//                 child: const Image(
//                     fit: BoxFit.cover,
//                     image: AssetImage(
//                         "assets/images/chicken-wings-barbecue-sweetly-sour-sauce-picnic-summer-menu-tasty-food-top-view-flat-lay_2829-6471.jpg")),
//               ),
//               Container(
//                 height: 200,
//                 width: 40,
//                 decoration: BoxDecoration(
//                   border: Border.all(),
//                 ),
//                 child: const Image(
//                     fit: BoxFit.cover,
//                     image: AssetImage(
//                         "assets/images/chicken-wings-barbecue-sweetly-sour-sauce-picnic-summer-menu-tasty-food-top-view-flat-lay_2829-6471.jpg")),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class MenuList extends StatefulWidget {
//   const MenuList({super.key});

//   @override
//   State<MenuList> createState() => _MenuListState();
// }

// class _MenuListState extends State<MenuList> {
//   List<String> foodImageList = [
//     "assets/images/food.jpg",
//     "assets/images/food1.jpg",
//     "assets/images/food2.jpg",
//     "assets/images/food3.jpg",
//     "assets/images/food4.jpg",
//     "assets/images/food5.jpg",
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Container(
//           child: ListView.builder(
//               itemCount: foodImageList.length,
//               itemBuilder: (context, index) => Container(
//                     height: 100,
//                     margin: const EdgeInsets.only(top: 10),
//                     child: Image.asset(
//                       foodImageList[index],
//                       fit: BoxFit.cover,
//                     ),
//                   )),
//         ),
//       ),
//     );
//   }
// }

class MenuList extends StatefulWidget {
  const MenuList({super.key});

  @override
  State<MenuList> createState() => _MenuListState();
}

class _MenuListState extends State<MenuList> {
  List<String> foodImageList = [
    "assets/images/food.jpg",
    "assets/images/food1.jpg",
    "assets/images/food2.jpg",
    "assets/images/food3.jpg",
    "assets/images/food4.jpg",
    "assets/images/food5.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: GridView.builder(
              itemCount: foodImageList.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2 / 1,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (context, index) => InkWell(
                    onTap: () => {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ItemDetailPage(
                          textTitle: foodImageList[index],
                        ),
                      ))
                    },
                    child: ImageItems(
                      imageFood: foodImageList[index],
                    ),
                  )),
        ),
      ),
    );
  }
}

class ImageItems extends StatelessWidget {
  const ImageItems({
    super.key,
    required this.imageFood,
  });
  final String imageFood;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Image.asset(
        imageFood,
        fit: BoxFit.cover,
      ),
    );
  }
}
