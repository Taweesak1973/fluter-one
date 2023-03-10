import 'dart:math';

import 'package:flutter/material.dart';

import '../control/select_question_word.dart';
import '../model/list_result.dart';
import '../model/name_text5.dart';
import '../model/question_box.dart';
import '../model/name_head.dart';
import '../model/name_text1.dart';
import '../model/name_text2.dart';
import '../model/name_text3.dart';
import '../model/name_text4.dart';
import '../model/answer_box.dart';
import '../model/show_button.dart';
import '../ulitity/sub_text_style.dart';
import '../model/head_box.dart';

class FutureScreenPage extends StatefulWidget {
  const FutureScreenPage({super.key});

  @override
  State<FutureScreenPage> createState() => _FutureScreenPageState();
}

class _FutureScreenPageState extends State<FutureScreenPage> {
  Widget equal = const Text('=', style: subTextStyle);
  Widget plus1 = const Text('+', style: subTextStyle);
  Widget plus2 = const Text('+', style: subTextStyle);
  Widget plus3 = const Text('+', style: subTextStyle);
  Widget plus4 = const Text('+', style: subTextStyle);
  List listHeadName = [
    'Simple Tense',
    'Continuous Tense',
    'Perfect Tense',
    'Perfect Continuous Tense'
  ];
  Map<String, dynamic> mainQuestion = {
    'Simple Tense': ['S', 'will,shall', 'V.1 ing'],
    'Continuous Tense': ['S', 'will,shall', 'be', 'V.1 ing'],
    'Perfect Tense': ['S', 'will,shall', 'have', 'V.3'],
    'Perfect Continuous Tense': ['S', 'will,shall', 'have', 'been', 'V.1 ing'],
  };

  @override
  void initState() {
    fun();
    super.initState();
  }

  String nameHead = '';
  String namesub1 = '';
  String namesub2 = '';
  String namesub3 = '';
  String namesub4 = '';
  String namesub5 = '';
  double specialWidth1 = 120;
  double specialWidth3 = 0;
  double specialWidth4 = 0;
  double specialWidth5 = 0;
  String questionWord = '';
  String questMark = '__';
  String newAnswer = '';
  List<String> listNewAnswer = ['', '', '', ''];
  List<bool> listCheck = [];
  double maxWidth = 0;
  @override
  Widget build(BuildContext context) {
    maxWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueGrey.shade700,
        body: Center(
          child: Column(
            children: [
              const Expanded(
                child: HeadBox(
                  name: 'Future Tense',
                ),
              ),
              Expanded(
                  flex: 4,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(),
                        color: Colors.blueGrey.shade900,
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30))),
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
                                width: specialWidth1,
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
                                width: specialWidth3,
                                name: NameSubText3(nameSubText3: namesub3),
                              ),
                              plus3,
                              MyQuestion(
                                mar: 1,
                                height: 40,
                                width: specialWidth4,
                                name: NameSubText4(nameSubText4: namesub4),
                              ),
                              plus4,
                              MyQuestion(
                                mar: 1,
                                height: 40,
                                width: specialWidth5,
                                name: NameSubText5(nameSubText5: namesub5),
                              ),
                            ],
                          ),
                        ),
                        const Divider(
                          thickness: 2,
                          color: Colors.black,
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

              Expanded(flex: 2, child: ButtonSheet()),
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
        String quest = fSelectQuestionWord('Simple');
        questionWord = quest;

        namesub1 = questionWord == 'S' ? questMark : mainQuestion[nameHead][0];
        namesub2 = questionWord == 'will,shall'
            ? questMark
            : mainQuestion[nameHead][1];
        namesub3 =
            questionWord == 'V.1' ? questMark : mainQuestion[nameHead][2];
        namesub4 = '';
        namesub5 = '';
        plus2 = const Text('+', style: subTextStyle);
        plus3 = const Text('');
        plus4 = const Text('');
        specialWidth3 = 80;
        specialWidth4 = 0;
        specialWidth5 = 0;
      } else if (nameHead == 'Continuous Tense') {
        //-------------------
        String quest = fSelectQuestionWord('Continuous');
        questionWord = quest;
        namesub1 = questionWord == 'S' ? questMark : mainQuestion[nameHead][0];
        namesub2 = questionWord == 'will,shall'
            ? questMark
            : mainQuestion[nameHead][1];
        namesub3 = questionWord == 'be' ? questMark : mainQuestion[nameHead][2];
        namesub4 =
            questionWord == 'V1. ing' ? questMark : mainQuestion[nameHead][3];
        namesub5 = '';
        plus2 = const Text('+', style: subTextStyle);
        plus3 = const Text(
          '+',
          style: subTextStyle,
        );
        plus4 = const Text('');
        specialWidth3 = 50;
        specialWidth4 = 70;
        specialWidth5 = 0;
      } else if (nameHead == 'Perfect Tense') {
        String quest = fSelectQuestionWord('Perfect');
        questionWord = quest;
        namesub1 = questionWord == 'S' ? questMark : mainQuestion[nameHead][0];
        namesub2 = questionWord == 'will,shall'
            ? questMark
            : mainQuestion[nameHead][1];
        namesub3 =
            questionWord == 'have' ? questMark : mainQuestion[nameHead][2];
        namesub4 =
            questionWord == 'V.3' ? questMark : mainQuestion[nameHead][3];
        namesub5 = '';
        plus2 = const Text('+', style: subTextStyle);
        plus3 = const Text('+', style: subTextStyle);
        plus4 = const Text('');
        specialWidth3 = 60;
        specialWidth4 = 60;
        specialWidth5 = 0;
      } else if (nameHead == 'Perfect Continuous Tense') {
        String quest = fSelectQuestionWord('Perfect Continuous');
        questionWord = quest;
        namesub1 = questionWord == 'S' ? '_' : mainQuestion[nameHead][0];
        namesub2 =
            questionWord == 'will,shall' ? '_' : mainQuestion[nameHead][1];
        namesub3 = questionWord == 'have' ? '_' : mainQuestion[nameHead][2];
        namesub4 = questionWord == 'been' ? '_' : mainQuestion[nameHead][3];
        namesub5 = questionWord == 'V.1 ing' ? '_' : mainQuestion[nameHead][4];
        plus2 = const Text('', style: subTextStyle);
        plus3 = const Text('', style: subTextStyle);
        specialWidth1 = maxWidth*.22;
        specialWidth3 = maxWidth*.13;
        specialWidth4 = maxWidth*.14;
        specialWidth5 = maxWidth*.16;
      }
      List<String> listAnswer = functionListAnswer(questionWord);
      newAnswer = questionWord;
      listNewAnswer = listAnswer;
    });
  }
}
