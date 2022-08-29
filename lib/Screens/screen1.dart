import 'package:flutter/material.dart'
    show
        AppBar,
        AssetImage,
        BackButton,
        Border,
        BoxDecoration,
        BuildContext,
        CircleAvatar,
        Color,
        Colors,
        Column,
        Container,
        CrossAxisAlignment,
        EdgeInsets,
        FontWeight,
        Key,
        MainAxisAlignment,
        Padding,
        Row,
        SafeArea,
        Scaffold,
        SizedBox,
        StatelessWidget,
        Text,
        TextAlign,
        TextButton,
        TextStyle,
        Widget;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../data/data.dart';

class Screen1 extends StatelessWidget {
  Screen1({Key? key}) : super(key: key);

  List<OptimalRange> data = [
    OptimalRange('JAN', 10),
    OptimalRange('FEB', 50),
    OptimalRange('MAR', 30),
    OptimalRange('APR', 40),
    OptimalRange('MAY', 100),
    OptimalRange('JUN', 60),
    OptimalRange('JUL', 70),
    OptimalRange('AUG', 80),
    OptimalRange('SEP', 120),
    OptimalRange('OCT', 150),
    OptimalRange('NOV', 100),
    OptimalRange('DEC', 170),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: const BackButton(
            color: Colors.black,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage(
                    "img/logo.png",
                  ),
                  radius: 37,
                  // child: Text("Hi"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Folate/Folic Acid",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 19,
                          fontFamily: 'IBM',
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      "Cognition",
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 13, fontFamily: 'IBM'),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Container(
                  height: 100.0,
                  width: 100.0,
                  color: Colors.transparent,
                  child: Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(
                          width: 2,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Text(
                              "Current\n Level",
                              style: TextStyle(
                                  color: Color(0xff1E9EAE), fontFamily: 'IBM'),
                            ),
                          ),
                          Text(
                            "71",
                            style: TextStyle(
                                color: Color(0xff1E9EAE),
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 5),
                            child: Text("mg/dl",
                                style: TextStyle(
                                    color: Color(0xff1E9EAE),
                                    fontFamily: 'IBM')),
                          ),
                        ],
                      )),
                ),
                // Column(
                //   children: const [
                //     Expanded(
                //         child: Text(
                //       "Folate/Folic Acid",
                //       style: TextStyle(color: Colors.black),
                //     ))
                //   ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: SfCartesianChart(
              primaryXAxis: CategoryAxis(
                visibleMinimum: 7,
                visibleMaximum: 12,
                majorGridLines: const MajorGridLines(width: 0),
                majorTickLines: const MajorTickLines(width: 0),
              ),
              primaryYAxis: NumericAxis(plotBands: <PlotBand>[
                PlotBand(
                  // verticalTextPadding: '-8px',
                  // horizontalTextPadding: '-8px',
                  verticalTextAlignment: TextAnchor.end,
                  horizontalTextAlignment: TextAnchor.end,
                  text: 'HIGH',
                  start: 0,
                  end: 15,
                  color: Colors.red.shade100,
                  textStyle: const TextStyle(
                    color: Colors.red,
                    fontSize: 13,
                  ),

                  // borderColor: Colors.red,
                  // borderWidth: 2,
                ),
                PlotBand(
                  // verticalTextPadding: '-8px',
                  // horizontalTextPadding: '-8px',
                  verticalTextAlignment: TextAnchor.end,
                  horizontalTextAlignment: TextAnchor.end,
                  text: 'BORDERLINE LOW',
                  start: 15,
                  end: 30,
                  color: Colors.amber.shade200,
                  textStyle: const TextStyle(
                    color: Color(0xffF1C21B),
                    fontSize: 13,
                  ),
                ),
                PlotBand(
                  start: 30,
                  end: 50,
                  color: Colors.blue.shade100,
                ),
                PlotBand(
                  // verticalTextPadding: '-8px',
                  // horizontalTextPadding: '-8px',
                  verticalTextAlignment: TextAnchor.end,
                  horizontalTextAlignment: TextAnchor.end,
                  text: 'BEYONDS OPTIMAL RANGE',
                  start: 50,
                  end: 100,
                  color: Colors.cyan.shade100,
                  textStyle: const TextStyle(
                    color: Color(0xff006064),
                    fontSize: 13,
                  ),
                ),
                PlotBand(
                  start: 100,
                  end: 150,
                  color: Colors.blue.shade100,
                ),
                PlotBand(
                  // verticalTextPadding: '-8px',
                  // horizontalTextPadding: '-8px',
                  verticalTextAlignment: TextAnchor.end,
                  horizontalTextAlignment: TextAnchor.end,
                  text: 'BORDERLINE HIGH',
                  start: 150,
                  end: 170,
                  color: Colors.amber.shade200,
                  textStyle: const TextStyle(
                    color: Color(0xffF1C21B),
                    fontSize: 13,
                  ),
                ),
                PlotBand(
                  // verticalTextPadding: '-8px',
                  // horizontalTextPadding: '-8px',
                  verticalTextAlignment: TextAnchor.end,
                  horizontalTextAlignment: TextAnchor.end,
                  text: 'HIGH',
                  start: 170,
                  end: 200,
                  color: Colors.red.shade100,
                  textStyle: const TextStyle(
                    color: Colors.red,
                    fontSize: 13,
                  ),

                  // borderColor: Colors.red,
                  // borderWidth: 2,
                ),
              ]),
              zoomPanBehavior: ZoomPanBehavior(
                enablePanning: true,
              ),
              tooltipBehavior: TooltipBehavior(
                enable: true,
              ),
              series: <ChartSeries<OptimalRange, String>>[
                LineSeries<OptimalRange, String>(
                    dataSource: data,
                    xValueMapper: (OptimalRange range, _) => range.month,
                    yValueMapper: (OptimalRange range, _) => range.range,
                    // pointColorMapper: (OptimalRange data, _) => data.color,
                    name: 'Folate',
                    color: Colors.grey.shade500,
                    markerSettings: const MarkerSettings(isVisible: true)
                    // dataLabelSettings: const DataLabelSettings(isVisible: true),
                    ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 190),
            child: TextButton(
              onPressed: () {},
              child: Row(
                children: const [
                  Text(
                    "Optimal ranges guide ",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'IBM',
                        fontWeight: FontWeight.w700),
                  ),
                  FaIcon(
                    FontAwesomeIcons.angleRight,
                    color: Colors.black,
                    size: 15,
                  ),
                ],
              ),
            ),
          ),
          const Text(
            "Conditions such as Alcoholism, Pregnancy,\nIntestinal surgeries or digestive disorders that\ncause malabsorption and Genetic variants may\nput you at risk of having a folic acid deficiency",
            style: TextStyle(fontSize: 17, fontFamily: 'IBM'),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Folate helps to form DNA and RNA and is\ninvolved in protein metabolism. It plays a key\nrole in breaking down homocysteine, an amino\nacid that can exert harmful effects in the body\nif it is present in high amounts",
            style: TextStyle(fontSize: 17, fontFamily: 'IBM'),
          ),
        ]),
      ),
    );
  }
}
