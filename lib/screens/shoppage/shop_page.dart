import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_ui/constants/text_constants.dart';
import 'package:instagram_ui/widgets/shop_page_button/shop_page_button.dart';
import '../../constants/color_constants.dart';
import '../../model/search_contents.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
            TextConstants.shop,
          style: TextStyle(
              color: ColorConstants.black,
              fontSize: 18)),
       backgroundColor: ColorConstants.white,
        elevation: 0,
       actions: [
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Padding(
               padding: const EdgeInsets.all(8),
               child: Icon(Icons.star,
                color: ColorConstants.black),
             ),
             Padding(
               padding: const EdgeInsets.all(8),
               child: Icon(Icons.menu,
               color: ColorConstants.black),
             )
           ],
         )
       ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
                decoration: BoxDecoration(
                    color: ColorConstants.grey_200,
                    border: Border.all(
                        color: ColorConstants.grey_200),
                    borderRadius: const BorderRadius.all(
                        Radius.circular(10))),
                child: CupertinoSearchTextField(
                  decoration: BoxDecoration(
                      color: ColorConstants.grey_200,
                      borderRadius: const BorderRadius.all(
                          Radius.circular(10))
                  ),
                )
            ),
            SizedBox(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                ShopPageButton(text: TextConstants.shops),
                ShopPageButton(text: TextConstants.videos),
                ShopPageButton(text: TextConstants.picks),
                ShopPageButton(text: TextConstants.collections),
                ShopPageButton(text: TextConstants.guides),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: GridView.builder(
                    itemCount: content.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 3,
                        mainAxisSpacing: 4,
                        childAspectRatio: 1
                    ),
                    itemBuilder: (context,index){
                      return GridTile(
                          child: Image.asset(content[index].image));
                    }),
              ),
            )],
        ),
      ),
    );
  }
}
