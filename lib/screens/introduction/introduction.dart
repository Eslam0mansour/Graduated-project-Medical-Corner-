import 'package:flutter/material.dart';
import 'package:intro_example/auth_sheet/auth_sheet.dart';
import 'package:intro_example/screens/home.dart';
import 'components/paints/desc_paint/desc_paint.dart';
import 'components/widgets/indicators/indicators.dart';

class IntroductionPage extends StatefulWidget {
  const IntroductionPage({Key? key}) : super(key: key);

  @override
  State<IntroductionPage> createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage> {
  final images = <ImageProvider>[
    const AssetImage(
      'images/33.jpg',
    ),
    const AssetImage(
      'images/11.jpg',
    ),
    const AssetImage(
      'images/22.jpg',
    ),
  ];

  late int currentImageIndex;
  late bool expandAuthSheet;
  late bool more;

  @override
  void initState() {
    currentImageIndex = 0;
    expandAuthSheet = false;
    more = false;
    super.initState();
  }
  double postop =  0.8;

  void _topup(String pos)
{
  setState(() {
    if (pos == 'up')
      {
        postop= 0;

      }
    else if (pos == 'down')
    {
      postop= 0.8;

    }
    else if (pos == 'upmore')
    {
      postop= 0.1;
    }
  });
}
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset:false,
      backgroundColor: Colors.white,
        body: Stack(
          children: [
            Positioned(
              top: 0,
              child: Center(
                child: AnimatedContainer(
                    duration: const Duration(milliseconds: 10),
                    curve: Curves.easeIn,
                    width: deviceSize.width,
                    height: deviceSize.height * 0.6,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover, image: images[currentImageIndex]))),
              ),
            ),
            Positioned(
              bottom: deviceSize.height * 0.1,
              child: SizedBox(
                  width: deviceSize.width,
                  height: deviceSize.height * 0.53,
                  child: CustomPaint(
                    size: Size(deviceSize.width, deviceSize.height * 0.6),
                    painter: IntroductionDescriptionPaint(),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 50,
                        ),
                        child: Container(
                          width: deviceSize.width * 0.8,
                          height: deviceSize.height * 0.4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Spacer(),
                              const Text(
                                  'Welcome to Medical Corner!',
                                  maxLines: 2,
                                  style: TextStyle(
                                    color: Color(0xff03045E),
                                    fontSize: 24,
                                    fontWeight: FontWeight.w800,
                                  )

                              ),
                              const Spacer(),
                              const Text(
                                'Medical Corner is a medical application that provides detection of pneumonia and brain tumour. It also provides prediction for heart disease, and diabetes.',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18,
                                ),
                              ),
                              const Spacer(),
                              CustomPageIndicators(
                                  maxPages: 3,
                                  currentIndex: currentImageIndex,
                                  onChangeCallback: (v) {
                                    setState(() {
                                      currentImageIndex = v;
                                    });
                                  }),
                              const Spacer(),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )),
            ),
            Positioned(
              right: 12,
              top: 30,
              child: SizedBox(
                width: 35,
                height: 35,
                child: Center(
                  child: InkWell(
                    hoverColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    onTap: () {
                      Navigator.push(
                          context,
                        MaterialPageRoute(
                          builder: (context) => Homepage() ,
                        ),
                      );
                    },
                    child: const Text(
                      'Skip',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 500),
              top: deviceSize.height * postop,
              child: AuthSheet(
                  isExpanded: !expandAuthSheet,
                  expandCallback: () {
                    setState(() {
                      expandAuthSheet = !expandAuthSheet;
                      expandAuthSheet ?  _topup("up") :_topup("down") ;

                    });
                  }),
            )
          ],
        ),
    );
  }
}
