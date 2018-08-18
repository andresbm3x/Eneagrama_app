import 'package:eneagram_app/models/question.dart';
import 'package:eneagram_app/wIdgets/question_widget.dart';
import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final List<Widget> _listQuestions = Question.questionsList().map<Widget>((Question q) {
      return QuestionWidget(q);
    }).toList();

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        icon: Icon(Icons.check),
        label: Text("Finalizar"),
        
        //notchMargin: 50.0,
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50.0,
        ),
      ),
      body: ListView(
        children: _listQuestions,
      ),
    );
  }
}

