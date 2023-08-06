import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.deepPurple, borderRadius: BorderRadius.circular(18)),
        child: Row(
          children: [
            const SizedBox(
              width: 12,
            ),
            const SizedBox(height: 135, width: 80, child: Text('hello')
                //  Image.network(
                //     'https://avatars.githubusercontent.com/u/2511009?v=4')
                //imageUrl: bookModel.volumeInfo.imageLinks!.thumbnail)
                ),
            const SizedBox(
              width: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .6,
                    child: const Text('title'),
                    // CustomText(text: bookModel.volumeInfo.title!)
                  ),
                  const SizedBox(
                    width: 200,
                    child: Text(
                      'author',
                      //    bookModel.volumeInfo.authors![0],
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          'Free',
                          style: TextStyle(
                              fontSize: 22,
                              fontFamily: 'Oswald',
                              color: Colors.white),
                        ),
                        SizedBox(
                          width: 50,
                          height: 50,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
