import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/src/apps-ui/login_ui/login_ui.dart';
import 'package:flutter_ui_challenge/src/apps-ui/pet_profile/pet_profile.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18.0),
              child: Text(
                'Flutter UI',
                style: Theme.of(context)
                    .textTheme
                    .headline3
                    .copyWith(color: Colors.grey.shade900),
              ),
            ),
            ProjectsList(),
          ],
        ),
      )),
    );
  }
}

class ProjectsList extends StatelessWidget {
  const ProjectsList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        return Expanded(
          child: ListView(
            children: [
              Project(
                projectPage: LoginUi(),
                projectName: 'Login UI',
              ),
              Project(
                projectPage: PetProfile(),
                projectName: 'PetProfile',
              ),
            ],
          ),
        );
      },
    );
  }
}

class Project extends StatelessWidget {
  final String projectName;
  final Widget projectPage;

  const Project({
    Key key,
    @required this.projectName,
    @required this.projectPage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => this.projectPage));
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 8.0),
        child: CardProject(
          projectTitle: this.projectName,
        ),
      ),
    );
  }
}

class CardProject extends StatelessWidget {
  final String projectTitle;

  const CardProject({
    Key key,
    @required this.projectTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      shadowColor: const Color(0xfff5f5f5),
      child: Row(children: [
        Container(
          height: 120.0,
          width: 120.0,
          decoration: BoxDecoration(color: const Color(0xfff5f5f5)),
          padding: EdgeInsets.all(16.0),
        ),
        SizedBox(width: 30.0),
        Text(this.projectTitle),
      ]),
    );
  }
}
