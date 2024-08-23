import 'package:flutter/material.dart';
import 'package:valorant/utils/agents_list.dart';
import 'package:valorant/utils/app_colors.dart';

class CharcterDesc extends StatelessWidget {
  String name;
  int index;
  List<String> charctersDesc = AgentNames.agentsDesc.split('\$');
  static String routName = 'CharcterDesc';
  CharcterDesc({super.key,required this.name,required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(
        title: Text(name,style: TextStyle(
            fontFamily: 'VALORANT',
            fontWeight: FontWeight.w400,
            fontSize: 30,
            color: AppColors.white),),
        centerTitle: true,
        backgroundColor: AppColors.primary,
        elevation: 0,
        actions: [
          Image.asset('assets/Classes-1.png',
            width: MediaQuery.of(context).size.width * 0.08,
        height: MediaQuery.of(context).size.height * 0.08,
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .5,
            child: Center(
              child: Stack(
                children: [
                  Center(
                    child: Image.asset('assets/BG_Images/$name.png',
                      fit: BoxFit.fill,
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * .5,
                    ),
                  ),
                  Center(
                    child: Image.asset('assets/Artwork/$name.png',
                      fit: BoxFit.fill,
                      width: MediaQuery.of(context).size.width * .5,
                      height: MediaQuery.of(context).size.height * .45,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Container(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Dscription',style: TextStyle(
                          fontFamily: 'VALORANT',
                          fontWeight: FontWeight.w400,
                          fontSize: 22,
                          color: AppColors.white),),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(charctersDesc[index],style: TextStyle(
                          fontFamily: 'VALORANT',
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: AppColors.white),),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Text('Abilities',style: TextStyle(
                            fontFamily: 'VALORANT',
                            fontWeight: FontWeight.w400,
                            fontSize: 22,
                            color: AppColors.white),),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            width: MediaQuery.of(context).size.width * .2,
                            height: MediaQuery.of(context).size.height * .1,
                            child: Image.asset('assets/abiliti1.png',fit: BoxFit.fill,)),
                        Container(
                            width: MediaQuery.of(context).size.width * .2,
                            height: MediaQuery.of(context).size.height * .1,
                            child: Image.asset('assets/abiliti2.png',fit: BoxFit.fill,)),
                        Container(
                            width: MediaQuery.of(context).size.width * .2,
                            height: MediaQuery.of(context).size.height * .1,
                            child: Image.asset('assets/abiliti3.png',fit: BoxFit.fill,)),
                        Container(
                            width: MediaQuery.of(context).size.width * .2,
                            height: MediaQuery.of(context).size.height * .1,
                            child: Image.asset('assets/abiliti4.png',fit: BoxFit.fill,)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
