import 'package:flutter/material.dart';

class QuizScreenPage extends StatefulWidget {
  const QuizScreenPage({Key? key}) : super(key: key);

  @override
  State<QuizScreenPage> createState() => _QuizScreenPageState();
}

class _QuizScreenPageState extends State<QuizScreenPage> {
  String? _question = '';
  String? _groupValue = 'A';
  @override
  Widget build(BuildContext context) {
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
        backgroundColor: const Color.fromARGB(255, 35, 100, 153),
      ),
      body: Column(
        children: [
          _buildQuestionContainer(context),
          _buildDescription("images/images.jpeg"),
          _buildOptions(option: 'This Man is disabled'),
          _buildOptions(option: 'This Man is sitting alone'),
          _buildOptions(option: 'The wheelchair has four wheels'),
          const SizedBox(height: 8),
          _buildValidateBotton(context),
        ],
      ),
    );
  }

  Container _buildQuestionContainer(BuildContext context) {
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
          "Select the correct answer to the question",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }

  Container _buildDescription(String image) {
    return Container(
      height: 200,
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
            primary: Color.fromARGB(255, 248, 111, 111),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
            fixedSize: Size(MediaQuery.of(context).size.width - 20, 50)),
        onPressed: () {},
        child: const Icon(
          Icons.check,
          size: 40,
        ),
      ),
    );
  }

  Container _buildOptions({
    String option = '',
  }) {
    return Container(
      height: 60,
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
        title: Text(option),
        value: _question,
        groupValue: 'A',
        onChanged: (String? value) {},
      ),
    );
  }
}
