import 'dart:math';

import 'package:flutter/material.dart';
import 'package:test/model/head_box.dart';

import '../control/select_question_word.dart';
import '../model/list_result.dart';
import '../model/question_box.dart';
import '../model/name_head.dart';
import '../model/name_text1.dart';
import '../model/name_text2.dart';
import '../model/name_text3.dart';
import '../model/name_text4.dart';
import '../model/answer_box.dart';
import '../model/show_button.dart';
import '../ulitity/sub_text_style.dart';

class PastScreenPage extends StatefulWidget {
  const PastScreenPage({super.key});

  @override
  State<PastScreenPage> createState() => _PastScreenPageState();
}

class _PastScreenPageState extends State<PastScreenPage> {
  Widget equal = const Text('=', style: subTextStyle);
  Widget plus1 = const Text('+', style: subTextStyle);
  Widget plus2 = const Text('+', style: subTextStyle);
  Widget plus3 = const Text('+', style: subTextStyle);
  List listHeadName = [
    'Simple Tense',
    'Continuous Tense',
    'Perfect Tense',
    'Perfect Continuous Tense'
  ];
  Map<String, dynamic> mainQuestion = {
    'Simple Tense': ['S', 'V.2'],
    'Continuous Tense': ['S', 'was,were', 'V.1 ing'],
    'Perfect Tense': ['S', 'had', 'V.3'],
    'Perfect Continuous Tense': ['S', 'had', 'been', 'V.1 ing'],
  };

  @override
  void initState() {
    fun();
    super.initState();
  }

  // 'Simple Tense': ['S', 'V.2'],
  // 'Continuous Tense': ['S', 'was,were', 'V.1 ing'],
  // 'Perfect Tense': ['S', 'had', 'V.3'],
  // 'Perfect Continuous Tense': ['S', 'had', 'been', 'V.1 ing'],
  String nameHead = '';
  String namesub1 = '';
  String namesub2 = '';
  String namesub3 = '';
  String namesub4 = '';
  double specialWidth1 = 0;
  double specialWidth2 = 0;
  String questionWord = '';
  String questMark = '____';
  String newAnswer = '';
  List<String> listNewAnswer = ['', '', '', ''];
  List<bool> listCheck = [];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueGrey.shade700,
        body: Center(
          child: Column(
            children: [
              const Expanded(child: HeadBox(name: 'Past Tense')),
              Expanded(
                  flex: 4,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(),
                        color: Colors.blueGrey.shade900,
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(5),
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          color: Colors.blueGrey.shade900,
                          width: double.infinity,
                          height: 100,
                          child: ListResult(listResult: listCheck),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10, bottom: 10),
                          child: Row(
                            children: [
                              MyQuestion(
                                mar: 5,
                                width: 120,
                                height: 80,
                                name: NameHeadText(nameHeadText: nameHead),
                              ),
                              equal,
                              MyQuestion(
                                mar: 1,
                                height: 40,
                                name: NameSubText1(nameSubText1: namesub1),
                              ),
                              plus1,
                              MyQuestion(
                                mar: 1,
                                height: 40,
                                name: NameSubText2(nameSubText2: namesub2),
                              ),
                              plus2,
                              MyQuestion(
                                mar: 1,
                                height: 40,
                                width: specialWidth1,
                                name: NameSubText3(nameSubText3: namesub3),
                              ),
                              plus3,
                              MyQuestion(
                                mar: 1,
                                height: 40,
                                width: specialWidth2,
                                name: NameSubText4(nameSubText4: namesub4),
                              ),
                            ],
                          ),
                        ),
                        const Divider(
                          thickness: 2,
                          color: Colors.grey,
                        ),
                        Container(
                            width: double.infinity,
                            height: 100,
                            margin: const EdgeInsets.all(20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    NewWidget(
                                        onPress: () {
                                          if (listNewAnswer[0] == newAnswer) {
                                            listCheck.add(true);
                                          } else {
                                            (listCheck.add(false));
                                          }
                                          fun();
                                        },
                                        questionWord: listNewAnswer[0]),
                                    const SizedBox(
                                      width: 30,
                                    ),
                                    NewWidget(
                                        onPress: () {
                                          if (listNewAnswer[1] == newAnswer) {
                                            listCheck.add(true);
                                          } else {
                                            (listCheck.add(false));
                                          }
                                          fun();
                                        },
                                        questionWord: listNewAnswer[1]),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    NewWidget(
                                        onPress: () {
                                          if (listNewAnswer[2] == newAnswer) {
                                            listCheck.add(true);
                                          } else {
                                            (listCheck.add(false));
                                          }
                                          fun();
                                        },
                                        questionWord: listNewAnswer[2]),
                                    const SizedBox(
                                      width: 30,
                                    ),
                                    NewWidget(
                                        onPress: () {
                                          if (listNewAnswer[3] == newAnswer) {
                                            listCheck.add(true);
                                          } else {
                                            (listCheck.add(false));
                                          }
                                          fun();
                                        },
                                        questionWord: listNewAnswer[3]),
                                  ],
                                ),
                              ],
                            )),
                      ],
                    ),
                  )),

              Expanded(flex: 2, child: Container(child: ButtonSheet())),
              //question
            ],
          ),
        ),
      ),
    );
  }

  void fun() {
    setState(() {
      int ran = Random().nextInt(4);
      nameHead = listHeadName[ran];
      if (nameHead == 'Simple Tense') {
        String quest = pSelectQuestionWord('Simple');
        questionWord = quest;

        namesub1 = questionWord == 'S' ? questMark : mainQuestion[nameHead][0];
        namesub2 =
            questionWord == 'V.2' ? questMark : mainQuestion[nameHead][1];
        namesub3 = '';
        namesub4 = '';
        plus2 = const Text('');
        plus3 = const Text('');
        specialWidth1 = 0;
        specialWidth2 = 0;
      } else if (nameHead == 'Continuous Tense') {
        String quest = pSelectQuestionWord('Continuous');
        questionWord = quest;
        namesub1 = questionWord == 'S' ? questMark : mainQuestion[nameHead][0];
        namesub2 =
            questionWord == 'was,were' ? questMark : mainQuestion[nameHead][1];
        namesub3 =
            questionWord == 'V.1 ing' ? questMark : mainQuestion[nameHead][2];
        namesub4 = '';
        plus2 = const Text('+', style: subTextStyle);
        plus3 = Text('');
        specialWidth1 = 80;
        specialWidth2 = 0;
      } else if (nameHead == 'Perfect Tense') {
        String quest = pSelectQuestionWord('Perfect');
        questionWord = quest;
        namesub1 = questionWord == 'S' ? questMark : mainQuestion[nameHead][0];
        namesub2 =
            questionWord == 'had' ? questMark : mainQuestion[nameHead][1];
        namesub3 =
            questionWord == 'V.3' ? questMark : mainQuestion[nameHead][2];
        namesub4 = '';
        plus2 = const Text('+', style: subTextStyle);
        plus3 = Text('');
        specialWidth1 = 70;
        specialWidth2 = 0;
      } else if (nameHead == 'Perfect Continuous Tense') {
        String quest = pSelectQuestionWord('Perfect Continuous');
        questionWord = quest;

        namesub1 = questionWord == 'S' ? '_' : mainQuestion[nameHead][0];
        namesub2 =
            questionWord == 'had' ? questMark : mainQuestion[nameHead][1];
        namesub3 =
            questionWord == 'been' ? questMark : mainQuestion[nameHead][2];
        namesub4 =
            questionWord == 'V.1 ing' ? '___' : mainQuestion[nameHead][3];
        plus2 = const Text('+', style: subTextStyle);
        plus3 = const Text('+', style: subTextStyle);
        specialWidth1 = 70;
        specialWidth2 = 70;
      }
      List<String> listAnswer = functionListAnswer(questionWord);
      newAnswer = questionWord;
      listNewAnswer = listAnswer;
    });
  }
}
