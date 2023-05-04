import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uber/providers/walkthrough_provider.dart';
import 'package:uber/screens/walkthrough_template.dart';
import 'package:uber/widgets/WalkthroughStepper.dart';

class WalkThrough extends StatefulWidget {
  @override
  _WalkThroughState createState() => _WalkThroughState();
}

class _WalkThroughState extends State<WalkThrough> {
  late PageController _pageViewController;

  @override
  void initState() {
    _pageViewController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final WalkthroughProvider _walkthroughProvider =
        Provider.of<WalkthroughProvider>(context, listen: false);
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(25.0),
          child: Column(
            children: <Widget>[
              Expanded(
                child: PageView(
                  controller: _pageViewController,
                  onPageChanged: (int index) {
                    _walkthroughProvider.onPageChange(index);
                  },
                  children: <Widget>[
                    WalkThroughTemplate(
                      title: "Request Ride",
                      subtitle:
                          "Request a ride get picked up by a nearby community driver.",
                      image: Image.asset("assets/images/Page1.png"),
                    ),
                    WalkThroughTemplate(
                      title: "Confirm Your Driver",
                      subtitle:
                          "Huge drivers network helps you find comforable, safe and cheap ride.",
                      image: Image.asset("assets/images/Page2.png"),
                    ),
                    WalkThroughTemplate(
                      title: "Track your ride",
                      subtitle:
                          "Know your driver in advance and be able to view current location in real time on the map.",
                      image: Image.asset("assets/images/Page3.png"),
                      isLastPage: true,
                    )
                  ],
                ),
              ),
              Row(children: <Widget>[
             // Hide on the last page
                  Expanded(
                    child: WalkthroughStepper(
                      controller: _pageViewController,
                      color: Theme.of(context).primaryColor,
                      padding: EdgeInsets.all(90.0),
                    ),
                  ),
                
              ])
            ],
          ),
        ),
      ),
    );
  }
}
