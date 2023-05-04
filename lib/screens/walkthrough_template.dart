import 'package:flutter/material.dart';
import 'package:uber/screens/phone_registration.dart';

class WalkThroughTemplate extends StatelessWidget {
  final String title;
  final String subtitle;
  final Image image;
  final bool isLastPage;

  WalkThroughTemplate({
    required this.title,
    required this.subtitle,
    required this.image,
    this.isLastPage = false,
  }) : assert(title != null, subtitle != null);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Center(
            child: image,
          ),
        ),
        Container(
          height: 200.0,
          child: Column(
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      subtitle,
                      style: Theme.of(context).textTheme.bodyMedium?.merge(
                            TextStyle(
                              color: Colors.grey[600],
                              height: 1.3,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                    ),
                  ],
                ),
              ),
              if (isLastPage)
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    child: Text('Get Started!'),
                    style: ElevatedButton.styleFrom(
                      primary: Theme.of(context)
                          .primaryColor, // set the color to blue
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PhoneRegistration()),
                      );
                    },
                  ),
                ),
            ],
          ),
        )
      ],
    );
  }
}
