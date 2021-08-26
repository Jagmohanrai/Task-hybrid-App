import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../config.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({Key? key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double startvalue = 3000;
  double endvalue = 10000;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: 15 * responsiveCofficient(context)),
          child: Container(
            height: 300 * responsiveCofficient(context),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  offset: Offset(0, 0),
                  blurRadius: 10,
                  spreadRadius: 10,
                ),
              ],
            ),
            child: ListView(
              children: [
                SizedBox(
                  height: 20 * responsiveCofficient(context),
                ),
                Center(
                  child: Text(
                    'FILTER',
                    style: TextStyle(
                      fontSize: 20 * responsiveCofficient(context),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20 * responsiveCofficient(context),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 10 * responsiveCofficient(context)),
                  child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                    style: TextStyle(
                      fontSize: 16 * responsiveCofficient(context),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 20 * responsiveCofficient(context),
                ),
                Container(
                  height: 120 * responsiveCofficient(context),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: 25.0 * responsiveCofficient(context),
                            bottom: 10 * responsiveCofficient(context)),
                        child: Text(
                          'Pricing',
                          style: TextStyle(
                            fontSize: 16 * responsiveCofficient(context),
                            color: Colors.red,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 25 * responsiveCofficient(context)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Min Price'),
                            Text('Max Price'),
                          ],
                        ),
                      ),
                      SfRangeSlider(
                        enableTooltip: true,
                        activeColor: Colors.red,
                        max: 12000,
                        min: 1000,
                        values: SfRangeValues(startvalue, endvalue),
                        onChanged: (value) {
                          setState(() {
                            startvalue = value.start;
                            endvalue = value.end;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 1,
                  color: Colors.black26,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: 20.0 * responsiveCofficient(context)),
                  child: Text(
                    "Sort By",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 16 * responsiveCofficient(context),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
