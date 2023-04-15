class Question {
  int index;
  int categoryId;
  String category;
  String text;
  String opt1;
  String opt2;
  String opt3;
  String opt4;
  String opt5;
  String ans;

  Question({
    required this.index,
    required this.categoryId,
    required this.category,
    required this.text,
    required this.opt1,
    required this.opt2,
    required this.opt3,
    required this.opt4,
    required this.opt5,
    required this.ans,
  });
}

final questionList = [
  Question(
    index: 0,
    categoryId: 2,
    category: 'GeografiX',
    text:
        'Sungai yang alirannya sejajar dengan arah antiklinal dinamakan sungai',
    opt1: 'Obsequent',
    opt2: 'Superimposed',
    opt3: 'Consequent longitudinal',
    opt4: 'Subsequent',
    opt5: 'Consequent lateral',
    ans: 'c',
  ),
  Question(
    index: 1,
    categoryId: 2,
    category: 'Geografi',
    text:
        'Bagian permukaan bumi yang airnya mengalir ke dalam suatu sungai induk apabila terjadi hujan disebut .... sungai.',
    opt1: 'Siklus',
    opt2: 'Dataran banjir',
    opt3: 'Bantaran',
    opt4: 'Daerah aliran',
    opt5: 'Alur',
    ans: 'd',
  ),
];
