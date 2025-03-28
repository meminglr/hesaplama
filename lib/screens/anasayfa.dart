import 'package:flutter/material.dart';
import 'package:hesaplama/screens/class.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:marquee/marquee.dart';

class Anasayfa2 extends StatefulWidget {
  const Anasayfa2({super.key});

  @override
  State<Anasayfa2> createState() => _Anasayfa2State();
}

class _Anasayfa2State extends State<Anasayfa2> {
  Btn hesap = Btn();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    double sayiRowHeight = size.height / 10;
    double sonucSize = size.height / 15;
    Color? backColor = Colors.grey[100];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hesap Makinesi",
          style: TextStyle(fontSize: size.height / 30),
        ),
        backgroundColor: backColor,
        centerTitle: true,
      ),
      backgroundColor: backColor,
      body: Padding(
        padding: const EdgeInsets.only(bottom: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              flex: 8,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // Marquee(
                    //   text: 'Some sample text that takes some space.',
                    //   style: TextStyle(fontWeight: FontWeight.bold),
                    //   scrollAxis: Axis.horizontal,
                    //   crossAxisAlignment: CrossAxisAlignment.start,
                    //   blankSpace: 20.0,
                    //   velocity: 100.0,
                    //   pauseAfterRound: Duration(seconds: 1),
                    //   startPadding: 10.0,
                    //   accelerationDuration: Duration(seconds: 1),
                    //   accelerationCurve: Curves.linear,
                    //   decelerationDuration: Duration(milliseconds: 500),
                    //   decelerationCurve: Curves.easeOut,
                    // ),
                    Text(
                      // maxLines: 2,
                      hesap.birinci + hesap.ikinci,
                      style: TextStyle(
                        fontSize: sonucSize,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    Text(
                      // maxLines: 2,
                      "${hesap.sonuc % 1 == 0 ? hesap.sonuc.toInt() : hesap.sonuc}",
                      style: TextStyle(
                          fontSize: sonucSize,
                          color: hesap.sonuc == 0 ? Colors.grey : Colors.green),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 10,
              child: Column(
                children: [
                  SizedBox(
                    height: sayiRowHeight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        clearBtn(),
                        islemBtn("/"),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: sayiRowHeight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        sayiBtn("1"),
                        sayiBtn("2"),
                        sayiBtn("3"),
                        islemBtn("*")
                      ],
                    ),
                  ),
                  SizedBox(
                    height: sayiRowHeight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        sayiBtn("4"),
                        sayiBtn("5"),
                        sayiBtn("6"),
                        islemBtn("-")
                      ],
                    ),
                  ),
                  SizedBox(
                    height: sayiRowHeight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        sayiBtn("7"),
                        sayiBtn("8"),
                        sayiBtn("9"),
                        islemBtn("+")
                      ],
                    ),
                  ),
                  SizedBox(
                    height: sayiRowHeight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        sayiBtn("00"),
                        sayiBtn("0"),
                        sayiBtn("."),
                        esitBtn(),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  AspectRatio esitBtn() {
    return AspectRatio(
      aspectRatio: 1,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FilledButton(
            style: FilledButton.styleFrom(
                backgroundColor: Colors.green[100],
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)))),
            onPressed: () {
              hesap.esit();

              setState(() {});
            },
            child: const Text(
              "=",
              style: TextStyle(color: Colors.green),
            )),
      ),
    );
  }

  AspectRatio islemBtn(String islemText) {
    return AspectRatio(
      aspectRatio: 1,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FilledButton(
            style: FilledButton.styleFrom(
                backgroundColor: Colors.deepPurple[100],
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)))),
            onPressed: () {
              hesap.islem(islemText);

              setState(() {});
            },
            child: Text(
              islemText,
              style: const TextStyle(color: Colors.deepPurple),
            )),
      ),
    );
  }

  AspectRatio sayiBtn(String sayiText) {
    return AspectRatio(
      aspectRatio: 1,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FilledButton.tonal(
            style: FilledButton.styleFrom(
                backgroundColor: Colors.white,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)))),
            onPressed: () {
              hesap.sayi(sayiText);

              setState(() {});
            },
            child: Text(
              sayiText,
              style: const TextStyle(),
            )),
      ),
    );
  }

  AspectRatio clearBtn() {
    return AspectRatio(
      aspectRatio: 3 / 1,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FilledButton(
            style: FilledButton.styleFrom(backgroundColor: Colors.red[100]),
            onPressed: () {
              hesap.clear();
              setState(() {});
            },
            child: const Text(
              "C",
              style: TextStyle(color: Colors.red),
            )),
      ),
    );
  }
}
