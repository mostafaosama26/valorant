import 'package:flutter/material.dart';

class MapsTab extends StatelessWidget {
  String name;
  MapsTab({super.key,required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Container(
            width: MediaQuery.of(context).size.width * .9,
            height: MediaQuery.of(context).size.height * .2,
            child: Stack(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width * .9,
                    height: MediaQuery.of(context).size.height * .2,
                    child: Image.asset('assets/Maps/$name.png',scale: 2,fit: BoxFit.cover,)),
                Container(
                  width: MediaQuery.of(context).size.width * .9,
                  height: MediaQuery.of(context).size.height * .2,
                  color: Colors.pink.withAlpha(30),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset('assets/Minimap/$name.png',scale: 3,),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(name,style: TextStyle(
                          fontFamily: 'VALORANT',
                          fontWeight: FontWeight.w400,
                          fontSize: 36,
                          color: Colors.white)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
