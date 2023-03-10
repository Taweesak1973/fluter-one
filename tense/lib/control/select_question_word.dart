import 'dart:math';

//  present
String selectQuestionWord(String name) {
  String select = '';
  if (name == 'Simple') {
    select = simpleWord[Random().nextInt(2)];
    select = select.trim();
  }
  if (name == 'Continuous') {
    select = continuousWord[Random().nextInt(3)];
    select = select.trim();
  }
  if (name == 'Perfect') {
    select = perfectWord[Random().nextInt(3)];
    select = select.trim();
  }
  if (name == 'Perfect Continuous') {
    select = perfectContinuousWord[Random().nextInt(4)];
    select = select.trim();
  }

  return select;
}

//  past
String pSelectQuestionWord(String name) {
  String select = '';
  if (name == 'Simple') {
    select = pSimpleWord[Random().nextInt(2)];
    select = select.trim();
  }
  if (name == 'Continuous') {
    select = pContinuousWord[Random().nextInt(3)];
    select = select.trim();
  }
  if (name == 'Perfect') {
    select = pPerfectWord[Random().nextInt(3)];
    select = select.trim();
  }
  if (name == 'Perfect Continuous') {
    select = pPerfectContinuousWord[Random().nextInt(4)];
    select = select.trim();
  }

  return select;
}

// future
String fSelectQuestionWord(String name) {
  String select = '';
  if (name == 'Simple') {
    select = fSimpleWord[Random().nextInt(3)];
    select = select.trim();
  }
  if (name == 'Continuous') {
    select = fContinuousWord[Random().nextInt(4)];
    select = select.trim();
  }
  if (name == 'Perfect') {
    select = fPerfectWord[Random().nextInt(4)];
    select = select.trim();
  }
  if (name == 'Perfect Continuous') {
    select = fPerfectContinuousWord[Random().nextInt(5)];
    select = select.trim();
  }

  return select;
}

//---------  preset
List<String> simpleWord = ['S', 'V.1(s,es)'];
List<String> continuousWord = ['S', 'is,am,are', 'V.1 ing'];
List<String> perfectWord = ['S', 'has,have', 'V.3'];
List<String> perfectContinuousWord = ['S', 'has,have', 'been', 'V.1 ing'];
//------------past
List<String> pSimpleWord = ['S', 'V.2'];
List<String> pContinuousWord = ['S', 'was,were', 'V.1 ing'];
List<String> pPerfectWord = ['S', 'had', 'V.3'];
List<String> pPerfectContinuousWord = ['S', 'had', 'been', 'V.1 ing'];
//------------future
List<String> fSimpleWord = ['S', 'will,shall', 'V.1'];
List<String> fContinuousWord = ['S', 'will,shall', 'be', 'V.1 ing'];
List<String> fPerfectWord = ['S', 'will,shall', 'have', 'V.3'];
List<String> fPerfectContinuousWord = [
  'S',
  'will,shall',
  'have',
  'been',
  'V.1 ing'
];
// List<String> functionListAnswer(String reservWord) {
//   List<String> newList = [];
//   Set<String> set = {};
//   newList.add(reservWord);

//   while (true) {
//     String selectWord = listWord[Random().nextInt(listWord.length)];

//     if (reservWord != selectWord) {
//       for (int i = 0; i < newList.length; i++) {
//         if (newList[i] != selectWord) {
//           if (i + 1 == newList.length) {
//             set.add(selectWord);
//           }
//         } else {
//           break;
//         }
//       }
//     }
//     if (set.length >= 4) {
//       break;
//     }
//   }
//   if (set.length == 4) {
//     newList = set.toList();
//   } else {
//    newList= functionListAnswer(reservWord);
//   }
//   return newList;
// }

//-------------
List<String> functionListAnswer(String reservWord) {
  List<String> newList = [];

  newList.add(reservWord);

  while (true) {
    String selectWord = listWord[Random().nextInt(listWord.length)];

    if (reservWord != selectWord) {
      for (int i = 0; i < newList.length; i++) {
        if (newList[i] != selectWord) {
          if (i + 1 == newList.length) {
            newList.add(selectWord);
          }
        } else {
          break;
        }
      }
    }
    if (newList.length >= 4) {
      break;
    }
  }

   newList.shuffle();
 
  return newList;
}

List<String> listWord = [
  'S',
  'V.1(s,es)',
  'is,am,are',
  'V.1 ing',
  'has,have',
  'V.3',
  'been',
  'will',
  'shall',
  'V.2',
  'had',
  'will,shall',
  'has',
  'have',
  'was',
  'were',
  'was,were',
  'be'
];
