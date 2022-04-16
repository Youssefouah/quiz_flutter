import 'package:flutter/material.dart';
import 'package:quiz/models/questions.dart';

class QuizScreenPage extends StatefulWidget {
  const QuizScreenPage({Key? key}) : super(key: key);

  @override
  State<QuizScreenPage> createState() => _QuizScreenPageState();
}

class _QuizScreenPageState extends State<QuizScreenPage> {
  final List<Question> _questions = Question.questionList;
  Question? _question;
  String? _groupValue = 'A';
  int _index = 0;
  bool _isCorrect = false;
  int _score = 0;
  @override
  Widget build(BuildContext context) {
    _question = _questions[_index];
    return Scaffold(
      // gradient background
      backgroundColor: const Color.fromARGB(255, 35, 100, 153),

      appBar: AppBar(
        elevation: 0.0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text("Quiz Math"),
        actions: [
          Row(
            children: [
              RichText(
                text: TextSpan(
                  text: 'Score: ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ),
              RichText(
                text: TextSpan(
                  text: '$_score',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 208, 0),
                    fontSize: 26.0,
                  ),
                ),
              ),
              const SizedBox(width: 10.0),
            ],
          ),
        ],
        backgroundColor: const Color.fromARGB(255, 35, 100, 153),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildQuestionContainer(context, _question!.question),
            // const SizedBox(height: 10.0),
            _buildDescription("images/images.jpeg"),
            Container(
              height: 54,
              width: double.infinity,
              margin: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 7, 29, 46),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  width: 0.5,
                ),
              ),
              child: RadioListTile<String?>(
                title: Text(_question!.answers![0]),
                value: (_question!.answers![0]),
                groupValue: _groupValue,
                onChanged: (String? value) {
                  setState(() {
                    _groupValue = value;
                  });
                },
              ),
            ),
            Container(
              height: 54,
              width: double.infinity,
              margin: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 7, 29, 46),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  width: 0.5,
                ),
              ),
              child: RadioListTile<String?>(
                title: Text(_question!.answers![1]),
                value: (_question!.answers![1]),
                groupValue: _groupValue,
                onChanged: (String? value) {
                  setState(() {
                    _groupValue = value;
                  });
                },
              ),
            ),
            Container(
              height: 54,
              width: double.infinity,
              margin: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 7, 29, 46),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  width: 0.5,
                ),
              ),
              child: RadioListTile<String?>(
                title: Text(_question!.answers![2]),
                value: (_question!.answers![2]),
                groupValue: _groupValue,
                onChanged: (String? value) {
                  setState(() {
                    _groupValue = value;
                  });
                },
              ),
            ),
            Container(
              height: 54,
              width: double.infinity,
              margin: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 7, 29, 46),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  width: 0.5,
                ),
              ),
              child: RadioListTile<String?>(
                title: Text(_question!.answers![3]),
                value: (_question!.answers![3]),
                groupValue: _groupValue,
                onChanged: (String? value) {
                  setState(() {
                    _groupValue = value;
                  });
                },
              ),
            ),
            //const SizedBox(height: 10),
            _buildValidateBotton(context),
          ],
        ),
      ),
    );
  }

  Container _buildQuestionContainer(
      BuildContext context, String? questionTitle) {
    return Container(
      height: 90,
      width: double.infinity,
      margin: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 7, 29, 46),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: const Color.fromARGB(255, 255, 255, 255),
          width: 0.5,
        ),
      ),
      child: Center(
        // padding: const EdgeInsets.all(8.0),
        child: Text(
          "${_question!.question}??''",
          style: Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(color: Color.fromARGB(255, 248, 101, 101)),
        ),
      ),
    );
  }

  Container _buildDescription(String image) {
    return Container(
      height: 180,
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: const Color.fromARGB(255, 255, 255, 255),
          width: 0.5,
        ),
      ),
      child: Image.asset(
        image,
        fit: BoxFit.contain,
      ),
    );
  }

  Padding _buildValidateBotton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: const Color.fromARGB(255, 28, 168, 168),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            fixedSize: Size(MediaQuery.of(context).size.width - 20, 50)),
        onPressed: () => _validateAnswer(_groupValue!),
        child: Text(
          'Ok',
          style: Theme.of(context).textTheme.headline6!.copyWith(
                color: _isCorrect ? Colors.green : Colors.white,
              ),
        ),
      ),
    );
  }

  void _validateAnswer(String answer) {
    if (answer.trim() == _question!.correctAnswer!.trim()) {
      setState(() {
        _isCorrect = true;
        if (_index < _questions.length - 1) {
          _index++;
          _score++;
        } else {
          _index = 0;
        }

        _isCorrect = false;
      });
    } else {
      setState(() {
        _isCorrect = false;
        if (_index < _questions.length - 1) {
          _index++;
          //_score++;
        } else {
          alertDialog();
        }
      });
      //_result = 'Incorrect';
    }
    // _index++;
  }

  void alertDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Result'),
          content: Text('Your score is $_score'),
          actions: <Widget>[
            ElevatedButton(
              child: const Text('Sure'),
              onPressed: () {
                setState(() {
                  _index = 0;
                  _score = 0;
                });

                Navigator.of(context).pop();
              },
            )
          ],
        );
      },
    );
  }
}
