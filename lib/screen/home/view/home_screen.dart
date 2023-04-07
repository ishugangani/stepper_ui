import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int i=0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Stepper(
          currentStep: i,
          onStepContinue: () {
            setState(() {
                if (i < 2)
                {
                  i++;
                }
              },
            );
          },
          onStepCancel: () {
            setState(() {
              if (i > 0)
              {
                i--;
              }
            });
          },
          steps: [
            Step(
              isActive: true,
              title: Text("Signup"),
              content: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black26,
                        width: 2,
                      ),
                    ),
                    child: ListTile(
                      leading: Icon(Icons.person),
                      title: Text("Full name"),
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black26,
                        width: 2,
                      ),
                    ),
                    child: ListTile(
                      leading: Icon(Icons.email),
                      title: Text("Email_id"),
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black26,
                        width: 2,
                      ),
                    ),
                    child: ListTile(
                      leading: Icon(Icons.lock),
                      title: Text("password"),
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black26,
                        width: 2,
                      ),
                    ),
                    child: ListTile(
                      leading: Icon(Icons.lock),
                      title: Text("confirm password"),
                    ),
                  ),
                ],
              ),
            ),
            Step(
              isActive: true,
              title: Text("Login"),
              content: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black26,
                        width: 2,
                      ),
                    ),
                    child: ListTile(
                      leading: Icon(Icons.person),
                      title: Text("user name*"),
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black26,
                        width: 2,
                      ),
                    ),
                    child: ListTile(
                      leading: Icon(Icons.lock),
                      title: Text("password"),
                    ),
                  ),
                ],
              ),
            ),
            Step(
              isActive: true,
              title: Text("Home"),
              content: TextField(),
            )
          ],
        ),
      ),
    );
  }
}
