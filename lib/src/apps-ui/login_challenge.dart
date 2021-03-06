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
          child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Title(),
                  const ButtonWithLogo(
                      svgLogo: 'assets/icons/google-logo.svg',
                      textButton: 'Use Google Account'),
                  SizedBox(
                    height: 20.0,
                  ),
                  const ButtonWithLogo(
                      svgLogo: 'assets/icons/facebook_logo.svg',
                      textButton: 'Use Facebook Account'),
                  const TextDivider(),
                  const CustomInput(
                    labelText: 'Username',
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  const CustomInput(labelText: 'Password', isPassword: true),
                  const SectionForgotPassword(),
                  const GradientButton(),
                  const LinkSignUp(),
                  SizedBox(
                    height: MediaQuery.of(context).viewInsets.bottom,
                  ),
                ],
              )),
        ),
      ),
    );
  }
}

class LinkSignUp extends StatelessWidget {
  const LinkSignUp({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Don\'t have an account?'),
          SizedBox(width: 4.0),
          TextButton(
            onPressed: () {},
            child: Text('Sign Up'),
            style: TextButton.styleFrom(primary: Color(0xFF5b69f9)),
          ),
        ],
      ),
    );
  }
}

class GradientButton extends StatelessWidget {
  const GradientButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(vertical: 20.0),
        padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
        child: Center(
          child: Text(
            'Login',
            style: Theme.of(context).textTheme.bodyText1.copyWith(
                color: Colors.white,
                fontSize: 18.0,
                letterSpacing: 1.5,
                fontWeight: FontWeight.bold),
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
          gradient: LinearGradient(colors: [
            const Color(0xFFF76153),
            const Color(0xFFDE3377),
          ]),
        ));
  }
}

class SectionForgotPassword extends StatelessWidget {
  const SectionForgotPassword({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Transform.scale(
                scale: 1.2,
                child: Switch(
                  onChanged: (bool newValue) {
                    print(newValue);
                  },
                  value: true,
                  activeColor: Colors.white,
                  activeTrackColor: Color(0xFF5b69f9),
                ),
              ),
              SizedBox(
                width: 8.0,
              ),
              Text(
                'Remember me',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(color: Colors.black, fontWeight: FontWeight.w600),
              )
            ],
          ),
          TextButton(
            onPressed: () {},
            child: Text('Forgot Password?'),
            style: TextButton.styleFrom(
              primary: Color(0xFF5b69f9),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomInput extends StatelessWidget {
  final String labelText;
  final bool isPassword;

  const CustomInput({
    Key key,
    @required this.labelText,
    this.isPassword = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(this.labelText,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(color: Colors.blueGrey.shade500)),
              SizedBox(
                height: 8.0,
              ),
              TextField(
                obscureText: this.isPassword,
                style: TextStyle(fontSize: 22.0),
                cursorColor: Color(0xFF5b69f9),
                decoration: InputDecoration(
                    enabledBorder: new OutlineInputBorder(
                      borderRadius: new BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0)),
                      borderSide:
                          new BorderSide(color: Colors.blueGrey.shade100),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                    focusedBorder: new OutlineInputBorder(
                      borderRadius: new BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0)),
                      borderSide: new BorderSide(color: Color(0xFF5b69f9)),
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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0),
      child: Row(
        children: [
          Expanded(
            child: Divider(
              color: Colors.blueGrey.shade50,
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
                .copyWith(color: Colors.blueGrey.shade400),
          ),
          SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: Divider(
              color: Colors.blueGrey.shade50,
              thickness: 2.0,
            ),
          ),
        ],
      ),
    );
  }
}

class ButtonWithLogo extends StatelessWidget {
  final String svgLogo;
  final String textButton;

  const ButtonWithLogo({
    Key key,
    @required this.svgLogo,
    @required this.textButton,
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
              this.svgLogo,
              height: 25.0,
            ),
            SizedBox(
              width: 20.0,
            ),
            Text(
              this.textButton,
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
    return Container(
      padding: EdgeInsets.symmetric(vertical: 40.0),
      child: Text('Login',
          style: Theme.of(context).textTheme.headline3.copyWith(
                color: Colors.black,
              )),
    );
  }
}
