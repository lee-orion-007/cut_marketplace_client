import 'package:cut_market_hub_client/widgets/title_text.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class AppNameTextWidget extends StatelessWidget {
  const AppNameTextWidget({super.key, this.fontSize = 30});
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      period: const Duration(seconds: 22),
      baseColor: Colors.blueAccent,
      highlightColor: Color.fromARGB(255, 58, 30, 239),
      child: TitlesTextWidget(
        label: "CUT Market Hub",
        fontSize: fontSize,
      ),
    );
  }
}
