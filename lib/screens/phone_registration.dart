import 'package:flutter/material.dart';
import 'package:uber/widgets/custom_text_form_field.dart';

class PhoneRegistration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData _theme = Theme.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: _theme.scaffoldBackgroundColor,
        automaticallyImplyLeading: false,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(25.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20.0),
                    child: Text(
                      "What is your phone number?",
                      style: _theme.textTheme.titleMedium?.merge(
                        TextStyle(fontSize: 30.0),
                      ),
                    ),
                  ),
                  Text(
                    "Tap \"Get Started\" to get an SMS confirmation to help you use UBERR. We would like to get your phone number.",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Flexible(
                        fit: FlexFit.tight,
                        child: CustomTextFormField(
                          hintText: "+777",
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        flex: 2,
                        child: CustomTextFormField(
                          hintText: "Country Code",
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 45.0,
              child: TextButton(
      
                child: Text(
                  "GET STARTED",
                  style: _theme.textTheme.bodyMedium?.merge(
                    TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
