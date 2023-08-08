import 'package:flutter/material.dart';
import 'package:task_api/models/boot_model/boot_model.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, required this.bootModel});
  final BootModel bootModel;

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
            SizedBox(height: 135, width: 80, child: Text(bootModel.name!)
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
                    child: Text(bootModel.fullName!),
                    // CustomText(text: bookModel.volumeInfo.title!)
                  ),
                  SizedBox(
                    width: 200,
                    child: Text(
                      bootModel.name!,
                      style: const TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          'any thing',
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
