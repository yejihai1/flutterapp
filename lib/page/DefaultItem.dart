import 'package:flutter/material.dart';

class DefaultItem extends StatelessWidget {
  final String? name;
  final String? date;
  final String? content;
  final String? label;

  const DefaultItem(
      {super.key, this.name, this.date, this.label, this.content});

  // Color(0xFFECEEF2)
  @override
  Widget build(BuildContext context) {

    return Container(
      margin: const EdgeInsets.all(10),
      child: Material(
        child: Ink(
          decoration: const BoxDecoration(
              color: Color(0xFFECEEF2),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: InkWell(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            onTap: () {
              print("tap");
            },
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Expanded(flex: 0, child: DefaultText(name ?? "")),
                      Expanded(flex: 1, child: DefaultText("")),
                      Expanded(flex: 0, child: DefaultText(date ?? "")),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child:
                        DefaultText(content ?? "", fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [DefaultText(label ?? "")],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class DefaultText extends StatelessWidget {
  const DefaultText(this.content, {super.key, this.fontWeight});

  final String content;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = TextStyle(
        fontSize: 15,
        decoration: TextDecoration.none,
        color: Colors.black,
        fontWeight: fontWeight ?? FontWeight.normal);

    return Text(content, style: textStyle);
  }
}
