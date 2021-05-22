import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HealthCare_Provider_Form extends StatefulWidget {

  @override
  HealthCare_Provider_FormState createState() => HealthCare_Provider_FormState();

}

class HealthCare_Provider_FormState  extends State<HealthCare_Provider_Form>{

  //identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
      return Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
            <Widget>[
              TextFormField(
                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },

              ),
              TextFormField(
                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              TextFormField(
                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              Padding(
                  padding: const EdgeInsets.symmetric( vertical: 16.0),
                  child: ElevatedButton(
                    child: Text("submit"),
                  ),
              )

          ],
        ),
      );
  }
}


