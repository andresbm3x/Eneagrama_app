
import 'package:eneagram_app/models/question.dart';
import 'package:flutter/material.dart';

class QuestionWidget extends StatefulWidget {
  final Question _question;

  QuestionWidget(this._question);

  @override
  _QuestionWidgetState createState() => new _QuestionWidgetState();
}

class _QuestionWidgetState extends State<QuestionWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: new Border.all(
            width: 3.0,
            style: BorderStyle.solid,
            color: Theme.of(context).primaryColor),
            borderRadius: BorderRadius.circular(18.0),
            boxShadow: [
            new BoxShadow(
              offset: new Offset(0.0, 3.0),
              blurRadius: 5.0,
            )
          ],
            shape: BoxShape.rectangle,
      ),
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.all(4.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                widget._question.firstAnswer.description,
                softWrap: true,
              ),
              Checkbox(
                activeColor: Theme.of(context).primaryColor,
                value: widget._question.firstAnswer.selected,
                onChanged: (bool newVal) {
                  setState(() {
                    widget._question.firstAnswer.selected = newVal;
                    if (newVal) {
                      widget._question.secondAnswer.selected =
                          !widget._question.firstAnswer.selected;
                    }
                  });
                },
              )
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                widget._question.secondAnswer.description,
                softWrap: true,
              ),
              Checkbox(
                activeColor: Theme.of(context).primaryColor,
                value: widget._question.secondAnswer.selected,
                onChanged: (bool newVal) {
                  setState(() {
                    widget._question.secondAnswer.selected = newVal;
                    if (newVal) {
                      widget._question.firstAnswer.selected =
                          !widget._question.secondAnswer.selected;
                    }
                  });
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
