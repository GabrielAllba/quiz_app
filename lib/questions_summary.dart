import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.orange,
                      shape: BoxShape.circle,
                    ),
                    padding: const EdgeInsets.all(12),
                    child: Text(
                      ((data['question_index'] as int) + 1).toString(),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(12, 0, 0, 12),
                      decoration: const BoxDecoration(
                          // color: Colors.red,
                          ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data['question'] as String,
                            style: const TextStyle(color: Colors.white),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(children: [
                            Container(
                              padding: const EdgeInsets.fromLTRB(0, 6, 6, 0),
                              child: const Icon(
                                Icons.question_answer,
                                color: Colors.green,
                                size: 20.0,
                              ),
                            ),
                            Text(
                              data['user_answer'] as String,
                              style: const TextStyle(color: Colors.white),
                            ),
                          ]),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.fromLTRB(0, 6, 6, 0),
                                child: const Icon(
                                  Icons.done,
                                  color: Colors.green,
                                  size: 20.0,
                                ),
                              ),
                              Text(
                                data['correct_answer'] as String,
                                style: const TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
