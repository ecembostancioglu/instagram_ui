import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:instagram_ui/constants/color_constants.dart';

import '../../model/search_contents.dart';


class SearchPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: CustomScrollView(
          slivers: [
             SliverAppBar(
               toolbarHeight: 80,
               primary: false,
             //  floating: false,
               elevation: 1,
               backgroundColor: ColorConstants.white,
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(10.0),
                child: Text(''),
              ),
              title: Container(
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
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: GridView.custom(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverQuiltedGridDelegate(
                  crossAxisCount: 3,
                  mainAxisSpacing: 4,
                  crossAxisSpacing: 4,
                  repeatPattern: QuiltedGridRepeatPattern.inverted,
                  pattern: const [
                    QuiltedGridTile(1, 1),
                    QuiltedGridTile(1, 1),
                    QuiltedGridTile(2, 1),
                    QuiltedGridTile(1, 1),
                    QuiltedGridTile(1, 1),
                    QuiltedGridTile(1, 1),
                    QuiltedGridTile(1, 1),
                    QuiltedGridTile(1, 1),
                  ],
                ),
                childrenDelegate: SliverChildBuilderDelegate(
                      (context, index) => Container(
                         child: Image.asset(content[index].image,
                         fit: BoxFit.cover),
                      // child: Text(content[index]),
                  ),
                  childCount: content.length,
                ),
              ),
            )
          ],
        ),
      )
    );
  }

}
