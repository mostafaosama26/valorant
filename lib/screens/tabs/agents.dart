import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_style.dart';

class AgentsTab extends StatelessWidget {
  String name;
  AgentsTab ({super.key,required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 40),
      child: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * .6,
          height: MediaQuery.of(context).size.height * .5,
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(32),bottomRight: Radius.circular(32),topRight: Radius.circular(16),),
                    child: Container(
                        width: MediaQuery.of(context).size.width * .5,
                        height: MediaQuery.of(context).size.height * .4,
                        child: Image.asset('assets/BG_Colors/$name.png',fit: BoxFit.fitHeight,)),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                  width: MediaQuery.of(context).size.width * .5,
                  height: MediaQuery.of(context).size.height * .5,
                  child: Image.asset('assets/Artwork/$name.png',scale: 2,)),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(name,style: TextStyle(
                        fontFamily: 'VALORANT',
                        fontWeight: FontWeight.w400,
                        fontSize: 32,
                        color: AppColors.white),),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
