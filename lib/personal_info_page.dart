import 'package:flutter/material.dart';

class PersonalInfoPage extends StatefulWidget {
  const PersonalInfoPage({super.key});

  @override
  State<PersonalInfoPage> createState() => _PersonalInfoPageState();
}

class _PersonalInfoPageState extends State<PersonalInfoPage> {
  final _formKey = GlobalKey<FormState>();
  //late TextEditingController firstNameController;
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final summaryController = TextEditingController();




  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Form(
              child: Column(
                children: [
                  TextField(
                    controller :firstNameController,
                    decoration: InputDecoration(
                        label: Text('First Name'),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(),
                            borderRadius: BorderRadius.circular(12))),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  TextFormField(
                    controller :lastNameController,
                    decoration: InputDecoration(
                        label: Text('Last Name'),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(),
                            borderRadius: BorderRadius.circular(12))),
                  ),
                  TextFormField(
                    controller :emailController,
                    decoration: InputDecoration(
                        suffixIcon: Icon(Icons.email),
                        label: Text('Email'),
                        hintText: 'This should be an email',
                        border: OutlineInputBorder(
                            borderSide: BorderSide(),
                            borderRadius: BorderRadius.circular(12))),
                  ),
                  TextFormField(
                    controller :summaryController,
                    maxLength: 340,
                    decoration: InputDecoration(
                      hintMaxLines: 6,
                      label: Text('Summary'),
                      hintText: 'This should be an email',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}