import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:valorant/screens/charcter_description.dart';
import 'package:valorant/screens/tabs/agents.dart';
import 'package:valorant/screens/tabs/maps.dart';
import 'package:valorant/screens/tabs/wepons.dart';
import 'package:valorant/utils/agents_list.dart';
import 'package:valorant/utils/app_colors.dart';
import 'package:valorant/utils/app_provider.dart';
import 'package:valorant/utils/app_style.dart';
import 'package:valorant/utils/maps_lis.dart';
import 'package:valorant/utils/wepons_list.dart';

class Home extends StatelessWidget {
  static String routename = 'home';
  List<String> agentsList = AgentNames.agentNames;
  List<String> mapsList = MapNames.mapNames;
  List<String> weaponsList = WeaponNames.weaponNames;
  List<String> weaponsType = WeaponNames.weaponCategories.values.toList();
  late AppProvider appProvider;
  Home({super.key,});

  @override
  Widget build(BuildContext context) {
    appProvider = Provider.of(context);
    return  DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: buildHomePage(context),
    );
  }
  Widget buildHomePage(BuildContext context){
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(flex: 10,),
          Image.asset('assets/Logos/val_logo.png',),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/Logos/val_text_logo.png',scale: 1.5,),
          ),
          Spacer(flex: 10,),
          TabBar(
              indicator: BoxDecoration(
                color: AppColors.accent,
                borderRadius: BorderRadius.circular(16),
              ),
            indicatorColor: Colors.transparent,
            labelStyle: TextStyle(
      fontFamily: 'VALORANT',
      fontWeight: FontWeight.w400,
      fontSize: 18,
      color: AppColors.white),
              tabs: [
            Tab(
              text: 'AGENTS',
            ),
            Tab(
              text: 'MAPS',
            ),
            Tab(
              text: 'WEAPONS',
            ),
          ]),
          SizedBox(height: 10,),
          Expanded(
            flex: 80,
            child: Container(
              child: TabBarView(
                  children: [
                    buildAgentsTab(),
                    buildMapsTab(),
                    buildWeaponsTab(),
              ]),
            ),
          ),
        ],
      ),
    );
  }
  buildAgentsTab() => Row(
    children: [
      Expanded(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: agentsList.length,
            itemBuilder: (BuildContext context,int index){
            return GestureDetector(
              onTap:  (){
                appProvider.buildAgentPage(context,agentsList[index],index);
              },
              child: AgentsTab(name: agentsList[index]),
            );
            }
        ),
      ),
    ],
  );
  buildMapsTab() => Column(
    children: [
      Expanded(
        child: ListView.builder(
            itemCount: mapsList.length,
            itemBuilder: (BuildContext context,int index){
              return MapsTab(name: mapsList[index]);
            }
        ),
      ),
    ],
  );
  buildWeaponsTab() => Column(
    children: [
      Expanded(
        child: ListView.builder(
            itemCount: weaponsList.length,
            itemBuilder: (BuildContext context,int index){
              return WeaponsTab(name: weaponsList[index],type: weaponsType[index],index: index,);
            }
        ),
      ),
    ],
  );
}
