import 'package:flutter/material.dart';

import '../../models/game.dart';
import '../../utils/utils.dart';
import '../stylized_text.dart';

class MenuCarousel extends StatelessWidget {
  final Game game;
  final double height;
  final bool isLarge;
  final VoidCallback? onPressed;

  const MenuCarousel({
    Key? key,
    this.isLarge = false,
    required this.game,
    required this.height,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      highlightColor: Colors.white.withOpacity(.1),
      focusElevation: 0,
      hoverColor: Colors.transparent,
      hoverElevation: 1,
      highlightElevation: 0,
      elevation: 0,
      padding: EdgeInsets.zero,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
      ),
      onPressed: onPressed,
      child: Container(
        height: height * .7,
        width: height * 1.2,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(game.image),
            fit: BoxFit.cover,
          ),
          color: Colors.black,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: height * .25,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.black,
                    Colors.black,
                    Colors.transparent,
                  ],
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            StylizedText(
              text: Utils.gameName(game.type, context).toUpperCase(),
              fontSize: isLarge ? 68.0 : 48.0,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
