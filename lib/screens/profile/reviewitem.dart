import 'package:flutter/material.dart';

class ReviewItem extends StatelessWidget {
  const ReviewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Card(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundColor: Color(0xff3f3b43),
                  child: Image(
                      image: AssetImage('images/person.png'),
                      color: Colors.white),
                ),
              ),
              Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('Faisal'),
                  ]),
            ]),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text('كانت تجربة بنت ستين كلب'),
            ),
          ],
        ),
      );

  }
}
