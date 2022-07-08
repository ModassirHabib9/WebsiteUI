import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:web_portfolio/Widgets/myTextField.dart';

class ScreeningTab extends StatelessWidget {
  const ScreeningTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const Size(360, 690);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                padding: EdgeInsets.only(top: 20, left: 14),
                child: Text('Screenings',
                    style:
                        TextStyle(fontWeight: FontWeight.w900, fontSize: 30))),
            Row(
              children: [
                MyTextFormField(
                  width: 120,
                  hint: "Text Search",
                  kry: TextInputType.text,
                ),
                MyTextFormField(
                  width: 120.w,
                  hint: "Text Search",
                  kry: TextInputType.text,
                ),
                MyTextFormField(
                  width: 120,
                  hint: "Text Search",
                  kry: TextInputType.text,
                ),
                MyTextFormField(
                  // width: 120,
                  hint: "Text Search",
                  kry: TextInputType.text,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
