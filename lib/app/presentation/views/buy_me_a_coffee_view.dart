import 'package:covid_weapon/core/config/colors.dart';
import 'package:covid_weapon/core/utils/utils.dart';
import 'package:flutter/material.dart';

class BuyMeACoffeeView extends StatelessWidget {
  static const String ourWorldInData = 'https://ourworldindata.org/coronavirus';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('COVID WEAPON'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 1,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Protect them, protect yourself ! You have the weapons at your disposal and the ability to affect the health of others.',
              textAlign: TextAlign.center,
              style: TextStyle(color: color2, fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Expanded(
                    flex: 3,
                    child: Text(
                      'Made with Flutter and ❤️ \nby Guillaume Segado',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Roboto',
                      ),
                    )),
                Expanded(
                  flex: 2,
                  child: Container(
                    width: 150,
                    child: RaisedButton(
                      onPressed: () => Utils.launchURL(
                          'https://www.buymeacoffee.com/guyom.sega'),
                      textColor: Colors.white,
                      color: Colors.transparent,
                      splashColor: buymeacoffee,
                      elevation: 14.0,
                      padding: const EdgeInsets.all(4.0),
                      child: Image.asset('images/buymeacoffeebutton.png'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Powered by : ',
                  style: TextStyle(fontFamily: 'Roboto'),
                ),
                GestureDetector(
                  onTap: () => Utils.launchURL(ourWorldInData),
                  child: Image(
                    image: AssetImage('images/ourworldindata.jpg'),
                    width: 40,
                    height: 40,
                  ),
                ),
                GestureDetector(
                  onTap: () => Utils.launchURL(ourWorldInData),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      ourWorldInData,
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.indigo,
                        fontFamily: 'Roboto',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
