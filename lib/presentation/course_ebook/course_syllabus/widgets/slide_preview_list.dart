import 'package:flutter/material.dart';

import '../../../../utils/constants.dart';
import '../../../common.dart';

class SlidePreviewList extends StatelessWidget {
  const SlidePreviewList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.separated(
        primary: false,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(8),
            child: Container(
              width: 180,
              // height: 120,
              // color: Colors.blue,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey[600]?.withOpacity(0.8) ?? Colors.grey,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) =>
            const SizedBox(width: smallItemSpacing),
        itemCount: 10,
      ),
    );
  }
}
