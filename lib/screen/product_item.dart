import 'package:flutter/material.dart';
import 'package:foot_app_ui/utils/contans.dart';
import 'package:foot_app_ui/utils/widgets.dart';

class ProductItem extends StatelessWidget {
  final Map<String, dynamic> itemData;
  final double width;
  const ProductItem({Key? key, required this.itemData, required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final height = width * 4 / 3;
    return Container(
      margin: const EdgeInsets.only(right: 20),
      width: width,
      height: height + 40,
      child: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                flex: 2,
                child: Container(),
              ),
              Expanded(
                flex: 7,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    "assets/images/${itemData['image']}",
                    width: width * 0.80,
                  ),
                ),
                Expanded(
                  child: Center(),
                ),
                Text(
                  "${itemData['name']}",
                  style: textTheme.headline6,
                ),
                addVerticalSpace(5),
                RichText(
                  text: TextSpan(
                    children: [
                      WidgetSpan(
                        child: Icon(
                          Icons.location_on,
                          color: Colors.red,
                          size: 15,
                        ),
                      ),
                      TextSpan(
                        text: "${itemData['rest']}",
                        style: textTheme.caption,
                      ),
                    ],
                  ),
                ),
                addVerticalSpace(15),
                Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: RichText(
                        overflow: TextOverflow.ellipsis,
                        text: TextSpan(
                          children: [
                            WidgetSpan(
                              child: Icon(
                                Icons.star,
                                color: COLOR_ORANGE,
                                size: 15,
                              ),
                            ),
                            TextSpan(
                              text: "${itemData['rating']}",
                              style: textTheme.subtitle2?.apply(
                                fontSizeDelta: 4,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: RichText(
                        textAlign: TextAlign.right,
                        overflow: TextOverflow.ellipsis,
                        text: TextSpan(
                          children: [
                            WidgetSpan(
                              child: Icon(
                                Icons.star,
                                color: COLOR_ORANGE,
                                size: 15,
                              ),
                            ),
                            TextSpan(
                              text: "\$",
                              style:
                                  textTheme.subtitle2?.apply(fontSizeDelta: 4),
                            ),
                            TextSpan(
                              text: "${itemData['price']}",
                              style: textTheme.headline5
                                  ?.apply(color: COLOR_ORANGE),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
