import 'dart:convert';

import 'package:flutter/foundation.dart';

class Question {
  String? id;
  String? question;
  String? image;
  List<String>? answers;
  String? correctAnswer;
  String? explanation;
  bool isAnswered;
  int? difficulty;
  Question(
      {this.id,
      this.question,
      this.image,
      this.answers,
      this.correctAnswer,
      this.explanation,
      this.isAnswered = false,
      this.difficulty});

  Question copyWith({
    String? id,
    String? question,
    String? image,
    List<String>? answers,
    String? correctAnswer,
    String? explanation,
    bool? isAnswered,
    int? difficulty,
  }) {
    return Question(
      id: id ?? this.id,
      question: question ?? this.question,
      image: image ?? this.image,
      answers: answers ?? this.answers,
      correctAnswer: correctAnswer ?? this.correctAnswer,
      explanation: explanation ?? this.explanation,
      isAnswered: isAnswered ?? this.isAnswered,
      difficulty: difficulty ?? this.difficulty,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'question': question,
      'image': image,
      'answers': answers,
      'correctAnswer': correctAnswer,
      'explanation': explanation,
      'isAnswered': isAnswered,
      'difficulty': difficulty,
    };
  }

  factory Question.fromMap(Map<String, dynamic> map) {
    return Question(
      id: map['id'] as String,
      question: map['question'] as String,
      image: map['image'] as String,
      answers: map['answers'] as List<String>,
      correctAnswer: map['correctAnswer'] as String,
      explanation: map['explanation'] as String,
      isAnswered: map['isAnswered'] as bool,
      difficulty: map['difficulty'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Question.fromJson(String source) =>
      Question.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Question(id: $id, question: $question, image: $image, answers: $answers, correctAnswer: $correctAnswer, explanation: $explanation, isAnswered: $isAnswered, difficulty: $difficulty)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Question &&
        other.id == id &&
        other.question == question &&
        other.image == image &&
        listEquals(other.answers, answers) &&
        other.correctAnswer == correctAnswer &&
        other.explanation == explanation &&
        other.isAnswered == isAnswered &&
        other.difficulty == difficulty;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        question.hashCode ^
        image.hashCode ^
        answers.hashCode ^
        correctAnswer.hashCode ^
        explanation.hashCode ^
        isAnswered.hashCode ^
        difficulty.hashCode;
  }

  /// a list of fake questions

  static List<Question> questionList = [
    Question(
      id: '1',
      question: 'What is the capital of India?',
      image: 'images/images.jpeg',
      answers: ['New Delhi', 'Mumbai', 'Chennai', 'Kolkata'],
      correctAnswer: 'New Delhi',
      explanation: 'New Delhi is the capital of India',
      difficulty: 1,
    ),
    Question(
      id: '2',
      question: 'What is the capital of France?',
      image: 'images/images.jpeg',
      answers: ['New York', 'Rio', 'Berlin', 'Paris'],
      correctAnswer: 'Paris ',
      explanation: ' Paris is the capital of India',
      difficulty: 1,
    ),
    Question(
      id: '3',
      question: 'What is the capital of Germany?',
      image: 'images/images.jpeg',
      answers: ['Berlin', 'Munich', 'Hamburg', 'Frankfurt'],
      correctAnswer: 'Berlin',
      explanation: 'Berlin is the capital of Germany',
      difficulty: 1,
    ),
    Question(
      id: '4',
      question: 'What is the capital of Italy?',
      image: 'images/images.jpeg',
      answers: ['Rome', 'Milan', 'Venice', 'Naples'],
      correctAnswer: 'Rome',
      explanation: 'Rome is the capital of Italy',
      difficulty: 1,
    ),
    Question(
      id: '5',
      question: 'What is the capital of Spain?',
      image: 'images/images.jpeg',
      answers: ['Madrid', 'Barcelona', 'Valencia', 'Seville'],
      correctAnswer: 'Madrid',
      explanation: 'Madrid is the capital of Spain',
      difficulty: 1,
    ),
    Question(
      id: '6',
      question: 'What is the capital of Japan?',
      image: 'images/images.jpeg',
      answers: ['Tokyo', 'Kyoto', 'Osaka', 'Nagoya'],
      correctAnswer: 'Tokyo',
      explanation: 'Tokyo is the capital of Japan',
      difficulty: 1,
    ),
    Question(
      id: '7',
      question: 'What is the capital of China?',
      image: 'images/images.jpeg',
      answers: ['Beijing', 'Shanghai', 'Tianjin', 'Guangzhou'],
      correctAnswer: 'Beijing',
      explanation: 'Beijing is the capital of China',
      difficulty: 1,
    ),
    Question(
      id: '8',
      question: 'What is the capital of Australia?',
      image: 'images/images.jpeg',
      answers: ['Sydney', 'Melbourne', 'Brisbane', 'Perth'],
      correctAnswer: 'Sydney',
      explanation: 'Sydney is the capital of Australia',
      difficulty: 1,
    ),
    Question(
      id: '9',
      question: 'What is the capital of Canada?',
      image: 'images/images.jpeg',
      answers: ['Ottawa', 'Toronto', 'Vancouver', 'Montreal'],
      correctAnswer: 'Ottawa',
      explanation: 'Ottawa is the capital of Canada',
      difficulty: 2,
    ),
    Question(
      id: '10',
      question: 'What is the capital of Germany?',
      image: 'images/images.jpeg',
      answers: ['Berlin', 'Munich', 'Hamburg', 'Frankfurt'],
      correctAnswer: 'Berlin',
      explanation: 'Berlin is the capital of Germany',
      difficulty: 2,
    ),
  ];
}
