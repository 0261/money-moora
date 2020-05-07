import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:money_moora/constant.dart';
import 'package:money_moora/screens/HomeDashBoardScreen.dart';

class LandingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 80, bottom: 100),
              child: Align(
                alignment: Alignment.center,
                child: SvgPicture.asset(
                  'assets/icons/main.svg',
                  width: size.width * 0.8,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 150),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Money',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Moora',
                          style: TextStyle(
                            color: fsubColor,
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    '사업에 대한 \n 이제까지 경험하지 못한 새로움',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeDashBoardScreen(),
                    ),
                  );
                },
                child: Container(
                  width: size.width * 0.8,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: fsubColor,
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      '지금 시작하기!',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
