import 'package:flutter/material.dart';
import 'package:responsive_design_sample_app/flow/screens/flow_home_page.dart';
import 'package:responsive_design_sample_app/layouts/aspect_ratio_layout.dart';
import 'package:responsive_design_sample_app/layouts/expanded_flexible_layout.dart';
import 'package:responsive_design_sample_app/layouts/fractionally_sized_box_layout.dart';
import 'package:responsive_design_sample_app/layouts/layout_builder_layout.dart';
import 'package:responsive_design_sample_app/layouts/media_query_layout.dart';
import 'package:responsive_design_sample_app/layouts/orientation_builder_layout.dart';
import 'package:responsive_design_sample_app/layouts/res/my_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              LabelWidget('Flow', const FlowHomePage()),
              LabelWidget('MediaQueryLayout', const MediaQueryLayout()),
              LabelWidget('LayoutBuilderLayout', const LayoutBuilderLayout()),
              LabelWidget('OrientationBuilderLayout', const OrientationBuilderLayout()),
              LabelWidget('ExpandedFlexibleLayout', const ExpandedFlexibleLayout()),
              LabelWidget('FractionallySizedBoxLayout', const FractionallySizedBoxLayout()),
              LabelWidget('AspectRatioLayout', const AspectRatioLayout()),
            ],
          ),
        ),
      ),
    );
  }
}

class LabelWidget extends StatelessWidget {
  final String label;
  final Widget widget;

  LabelWidget(this.label, this.widget);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            // color: MyColors.darkGreen,
            // shape: RoundedRectangleBorder(
            //   borderRadius: BorderRadius.circular(20.0),
            // ),
            style: ElevatedButton.styleFrom(
              backgroundColor: MyColors.darkGreen,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => widget,
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                label,
                style: const TextStyle(
                  color: MyColors.greenAccent,
                  fontSize: 20,
                  fontFamily: 'GoogleSans',
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
