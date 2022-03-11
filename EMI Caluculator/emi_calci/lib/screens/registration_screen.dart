import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        colorFilter: ColorFilter.mode(
            Colors.black45.withOpacity(0.3), BlendMode.dstATop),
        fit: BoxFit.cover,
        image: AssetImage("assests/images/1.jpg"),
      )),
      child: SafeArea(
        child: Material(
          color: Colors.transparent,
          child: Padding(
            padding: EdgeInsets.all(18.0),
            child: Form(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              key: _formKey,
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Registration Form",
                    style: TextStyle(fontSize: 35),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text("Join us to explore the World"),
                  const SizedBox(
                    height: 20,
                  ),
                  CircleAvatar(
                      radius: 54,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        child: Text(
                          'M',
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                        radius: 50,
                        backgroundColor: Colors.pink.shade800,
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'This is required';
                      }
                      if (value.length < 6) {
                        return 'Should be greater';
                      }
                    },
                    style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                    decoration: InputDecoration(
                        isDense: true,
                        label: const Text('Name'),
                        labelStyle: TextStyle(
                            fontSize: 20, color: Colors.pink.shade100),
                        hintText: "Enter Your name",
                        // errorText: "",
                        focusedBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: Colors.pink)),
                        enabledBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.pink, width: 2))),
                  ),
                  const SizedBox(
                    height: 7,
                  ),

                  RawMaterialButton(
                    constraints: BoxConstraints.tightFor(),
                    shape: RoundedRectangleBorder(
                      // side: BorderRadius(width:),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    // fillColor: Colors.pink.shade900,
                    fillColor: Color.fromARGB(255, 41, 69, 173),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                      }
                    },
                    child: Text(
                      'Register',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
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
