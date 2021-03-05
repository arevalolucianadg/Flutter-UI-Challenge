import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginChallenge extends StatelessWidget {
  const LoginChallenge({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          reverse: true,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Container(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50.0,
                ),
                Title(),
                SizedBox(
                  height: 40.0,
                ),
                ButtonGoogle(),
                SizedBox(
                  height: 20.0,
                ),
                ButtonFacebook(),
                SizedBox(
                  height: 40.0,
                ),
                TextDivider(),
                SizedBox(
                  height: 40.0,
                ),
                InputUsername(),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Password',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  .copyWith(color: Colors.blueGrey.shade700)),
                          SizedBox(
                            height: 8.0,
                          ),
                          TextField(
                            style: TextStyle(fontSize: 22.0),
                            obscureText: true,
                            decoration: InputDecoration(
                              border: new OutlineInputBorder(
                                  borderRadius: new BorderRadius.only(
                                      topLeft: Radius.circular(10.0),
                                      topRight: Radius.circular(10.0),
                                      bottomLeft: Radius.circular(10.0),
                                      bottomRight: Radius.circular(10.0)),
                                  borderSide: new BorderSide(
                                      color: Colors.blueGrey.shade400)),
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 20.0, vertical: 15.0),
                              focusedBorder: new OutlineInputBorder(
                                  borderSide: new BorderSide(
                                      color: Colors.blueGrey.shade900)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).viewInsets.bottom,
                ),
              ],
            )),
          ),
        ),
      ),
    );
  }
}

class InputUsername extends StatelessWidget {
  const InputUsername({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Username',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(color: Colors.blueGrey.shade700)),
              SizedBox(
                height: 8.0,
              ),
              TextField(
                style: TextStyle(fontSize: 22.0),
                decoration: InputDecoration(
                    border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0)),
                        borderSide:
                            new BorderSide(color: Colors.blueGrey.shade400)),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                    focusedBorder: new OutlineInputBorder(
                      borderSide:
                          new BorderSide(color: Colors.blueGrey.shade900),
                    )),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class TextDivider extends StatelessWidget {
  const TextDivider({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            thickness: 2.0,
          ),
        ),
        SizedBox(
          width: 10.0,
        ),
        Text(
          'Or',
          style: Theme.of(context)
              .textTheme
              .subtitle1
              .copyWith(color: Colors.blueGrey.shade800),
        ),
        SizedBox(
          width: 10.0,
        ),
        Expanded(
          child: Divider(
            thickness: 2.0,
          ),
        ),
      ],
    );
  }
}

class ButtonFacebook extends StatelessWidget {
  const ButtonFacebook({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  spreadRadius: 5.0,
                  blurRadius: 10.0)
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/icons/facebook_logo.svg',
              height: 25.0,
            ),
            SizedBox(
              width: 20.0,
            ),
            Text(
              'Use Facebook Account',
              style: Theme.of(context).textTheme.subtitle1.copyWith(
                  fontWeight: FontWeight.bold, color: Colors.blueGrey.shade300),
            )
          ],
        ),
      ),
    );
  }
}

class ButtonGoogle extends StatelessWidget {
  const ButtonGoogle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  spreadRadius: 5.0,
                  blurRadius: 10.0)
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/icons/google-logo.svg',
              height: 25.0,
            ),
            SizedBox(
              width: 20.0,
            ),
            Text(
              'Use Google Account',
              style: Theme.of(context).textTheme.subtitle1.copyWith(
                  fontWeight: FontWeight.bold, color: Colors.blueGrey.shade300),
            )
          ],
        ),
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Login',
          style: Theme.of(context).textTheme.headline3.copyWith(
                color: Colors.black,
              )),
    );
  }
}
