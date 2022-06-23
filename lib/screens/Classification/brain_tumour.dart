import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intro_example/screens/Classification/result_braintumour.dart';
import '../../Nvdrawer/Nvdrawer.dart';
import 'last_rsult_braintumour.dart';
class BrainScreen extends StatefulWidget {
  const BrainScreen({Key? key}) : super(key: key);

  @override
  State<BrainScreen> createState() => _BrainScreenState();
}

class _BrainScreenState extends State<BrainScreen> {
  bool more  = false;
  bool more2 = false;
  bool more3 = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer:  Drawer(
          child: Nvdrawer(),
        ),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading:
          Builder(builder: (context) {
            return IconButton(
              onPressed: () => Scaffold.of(context).openDrawer(),
              icon:SvgPicture.asset("assets/menu.svg"),

            );
          }),
          title: Container(
            height: 45,
            width: 280,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 3.0,
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(
                right: 5,
              ),
              child: Icon(
                Icons.notifications_none,
                color: Colors.black,
                size: 35,
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      const Text(
                        'Brain Tumour',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'seguisb',
                          color: Color(0xff03045E),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Overview',
                        style: TextStyle(
                          fontSize: 22,
                          fontFamily: 'seguisb',
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        height: 9,
                      ),
                      const Text(
                        'A brain tumor is a mass or growth of abnormal cells in your brain. Many different types of brain tumors exist. Some brain tumors are noncancerous (benign), and some brain tumors are cancerous (malignant). Brain tumors can begin in your brain (primary brain tumors), or cancer can begin in other parts of your body and spread to your brain as secondary (metastatic) brain tumors.',
                        style: TextStyle(
                          fontSize: 19,
                          fontFamily: 'seguisb',
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Column(
                        children: [
                          Row(
                            children:  [
                              const Text(
                                'Symptoms',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontFamily: 'seguisb',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              buildButton(),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                right: 10
                            ),
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              color: Colors.blue,
                              child: buildText(
                                'The signs and symptoms of a brain tumor vary greatly and depend on the brain tumor size, location and rate of growth. General signs and symptoms caused by brain tumors may include: New onset or change in pattern of headaches Headaches that gradually become more frequent and more severe Unexplained nausea or vomiting Vision problems, such as blurred vision, double vision or loss of peripheral vision Gradual loss of sensation or movement in an arm or a leg Difficulty with balance Speech difficulties Feeling very tired Confusion in everyday matters Difficulty making decisions Inability to follow simple commands Personality or behavior changes Seizures, especially in someone who does not have a history of seizures Hearing problems',
                              ),
                            ),
                          ),
                          Row(
                            children:  [
                              const Text(
                                'Causes',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontFamily: 'seguisb',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              buildButton2(),
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            child: buildText2(
                                'Brain tumors that begin in the brain Primary brain tumors originate in the brain itself or in tissues close to it, such as in the brain-covering membranes (meninges), cranial nerves, pituitary gland or pineal gland. Primary brain tumors begin when normal cells develop changes (mutations) in their DNA. A cell is DNA contains the instructions that tell a cell what to do. The mutations tell the cells to grow and divide rapidly and to continue living when healthy cells would die. The result is a mass of abnormal cells, which forms a tumor. In adults, primary brain tumors are much less common than are secondary brain tumors, in which cancer begins elsewhere and spreads to the brain. Many different types of primary brain tumors exist. Each gets its name from the type of cells involved. Examples include: Gliomas. These tumors begin in the brain or spinal cord and include astrocytomas, ependymomas, glioblastomas, oligoastrocytomas and oligodendrogliomas. Meningiomas. A meningioma is a tumor that arises from the membranes that surround your brain and spinal cord (meninges). Most meningiomas are noncancerous. Acoustic neuromas (schwannomas). These are benign tumors that develop on the nerves that control balance and hearing leading from your inner ear to your brain. Pituitary adenomas. These are tumors that develop in the pituitary gland at the base of the brain. These tumors can affect the pituitary hormones with effects throughout the body. Medulloblastomas. These cancerous brain tumors are most common in children, though they can occur at any age. A medulloblastoma starts in the lower back part of the brain and tends to spread through the spinal fluid. Germ cell tumors. Germ cell tumors may develop during childhood where the testicles or ovaries will form. But sometimes germ cell tumors affect other parts of the body, such as the brain. Craniopharyngiomas. These rare tumors start near the brain pituitary gland, which secretes hormones that control many body functions. As the craniopharyngioma slowly grows, it can affect the pituitary gland and other structures near the brain. Cancer that begins elsewhere and spreads to the brain Secondary (metastatic) brain tumors are tumors that result from cancer that starts elsewhere in your body and then spreads (metastasizes) to your brain. Secondary brain tumors most often occur in people who have a history of cancer. Rarely, a metastatic brain tumor may be the first sign of cancer that began elsewhere in your body. In adults, secondary brain tumors are far more common than are primary brain tumors.',
                            ),
                          ),
                          Row(
                            children:  [
                              const Text(
                                'Risk factors',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontFamily: 'seguisb',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              buildButton3(),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                right: 10
                            ),
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              color: Colors.red,
                              child: buildText3(
                                'In most people with primary brain tumors, the cause of the tumor is not clear. But doctors have identified some factors that may increase your risk of a brain tumor. Risk factors include: Exposure to radiation. People who have been exposed to a type of radiation called ionizing radiation have an increased risk of brain tumor. Examples of ionizing radiation include radiation therapy used to treat cancer and radiation exposure caused by atomic bombs. Family history of brain tumors. A small portion of brain tumors occurs in people with a family history of brain tumors or a family history of genetic syndromes that increase the risk of brain tumors.',
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Divider(
                        endIndent: 15,
                        thickness: 2,
                        color: Color(0xff03045E),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:  [
                          const Text(
                            'Medical Corner provides Brain Tumour',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey,
                            ),
                          ),
                          const Text(
                            'detection with accuracy up to 91%.',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => ResultBrain() ,
                                        ),
                                      );

                                    },
                                    child: Container(
                                      height: 125,
                                      width: 125,
                                      color: Colors.blue,
                                      child:  const Icon(
                                        Icons.image_search_outlined,
                                        color: Colors.white,
                                        size: 80,
                                      ),
                                    ),
                                  ),
                                  const Text(
                                    'Brain Tumour',
                                    style: TextStyle(
                                        color: Color(0xff004EC4),
                                        fontSize: 20
                                    ),
                                  ),
                                  const Text(
                                    'Detection',
                                    style: TextStyle(
                                        color: Color(0xff004EC4),
                                        fontSize: 20
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: 125,
                                    width: 125,
                                    color: Colors.blue,
                                    child: IconButton(
                                      onPressed: (){
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => lastresultbrain() ,
                                          ),
                                        );
                                      },
                                      icon: const Icon(
                                        Icons.list,
                                        color: Colors.white,
                                        size: 80,
                                      ),
                                    ),
                                  ),
                                  const Text(
                                    'Last results',
                                    style: TextStyle(
                                        color: Color(0xff004EC4),
                                        fontSize: 20
                                    ),
                                  ),
                                  const Text(
                                    '      ',
                                    style: TextStyle(
                                        color: Color(0xff004EC4),
                                        fontSize: 20
                                    ),
                                  ),

                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Divider(
                        endIndent: 15,
                        thickness: 2,
                        color: Color(0xff03045E),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Preventation',
                        style: TextStyle(
                          fontSize: 22,
                          fontFamily: 'seguisb',
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        height: 9,
                      ),
                      const Text(
                        'Unfortunately, you can’t prevent a brain tumor. You can reduce your risk of developing a brain tumor by avoiding environmental hazards such as smoking and excessive radiation exposure.',
                        style: TextStyle(
                          fontSize: 19,
                          fontFamily: 'seguisb',
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget buildButton() => IconButton(
    icon:  Icon(
        more ? Icons.arrow_circle_down : Icons.arrow_circle_up
    ),
    onPressed: () => setState(() => more = !more ),
  );
  Widget buildButton2() => IconButton(
    icon:  Icon(
        more2 ? Icons.arrow_circle_down : Icons.arrow_circle_up
    ),
    onPressed: () => setState(() => more2 = !more2 ),
  );
  Widget buildButton3() => IconButton(
    icon:  Icon(
        more3 ? Icons.arrow_circle_down : Icons.arrow_circle_up
    ),
    onPressed: () => setState(() => more3 = !more3 ),
  );
  Widget buildText ( String text ) {
    final max =  more? null : 1 ;
    return Text (
      text,
      maxLines: max,
      style: const TextStyle(
        fontSize: 19,
        fontFamily: 'seguisb',
        color: Colors.white,
      ),
    );
  }
  Widget buildText2 ( String text ) {
    final max =  more2? null : 1 ;
    return Text (
      text,
      maxLines: max,
      style: const TextStyle(
        fontSize: 19,
        fontFamily: 'seguisb',
        color: Colors.grey,
      ),
    );
  }
  Widget buildText3 ( String text ) {
    final max =  more3? null : 1 ;
    return Text (
      text,
      maxLines: max,
      style: const TextStyle(
        fontSize: 19,
        fontFamily: 'seguisb',
        color: Colors.white,
      ),
    );
  }
}
