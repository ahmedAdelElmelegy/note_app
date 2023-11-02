import 'package:flutter/material.dart';
import 'package:notes_app/core/util/const.dart';
import 'package:notes_app/core/widget/CustomText.dart';

class CustomItem extends StatelessWidget {
  const CustomItem({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
                title: const Padding(
                  padding: EdgeInsets.only(bottom: 10, top: 10),
                  child: CustomText(
                    text: 'Ahmed Adel',
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontFamily: FontFamilly.itim,
                  ),
                ),
                subtitle: const CustomText(
                  text: 'hellow in my note app',
                  fontSize: 16,
                ),
                trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.delete,
                      size: 35,
                    ))),
            SizedBox(
              height: size.height * .03,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 10, bottom: 20),
              child: CustomText(
                text: "12/9/1999",
                fontSize: 18,
              ),
            )
          ],
        ),
      ),
    );
  }
}
