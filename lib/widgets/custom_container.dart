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
            SizedBox(
                height: 135,
                width: 80,
                child: Image.network(bootModel.owner!.avatarUrl!)),
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
                    child: Text(
                      bootModel.name!,
                      style: const TextStyle(
                          fontSize: 25,
                          fontFamily: 'Oswald',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  SizedBox(
                    width: 200,
                    child: Text(
                      bootModel.defaultBranch!,
                      style: const TextStyle(
                          fontSize: 23,
                          color: Colors.grey,
                          fontFamily: 'Oswald',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          'Num Of Stars =${bootModel.stargazersCount!}',
                          style: const TextStyle(
                              fontSize: 22,
                              fontFamily: 'Oswald',
                              color: Colors.white),
                        ),
                        const SizedBox(
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
