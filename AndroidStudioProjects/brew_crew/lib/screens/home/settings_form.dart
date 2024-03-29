import 'package:brew_crew/models/user.dart';
import 'package:brew_crew/shared/loading.dart';
import 'package:flutter/material.dart';
import 'package:brew_crew/shared/constants.dart';
import 'package:provider/provider.dart';

import '../../services/database.dart';

class SettingsForm extends StatefulWidget {
  const SettingsForm({Key? key}) : super(key: key);

  @override
  State<SettingsForm> createState() => _SettingsFormState();
}

class _SettingsFormState extends State<SettingsForm> {

  final _formKey = GlobalKey<FormState>();
  final List<String> sugars = ['0', '1', '2', '3', '4'];

  // form values
  String? _currentName;
  String? _currentSugars;
  int? _currentStrength;

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<Gebruiker?>(context);
    return StreamBuilder<GebruikerData>(
      stream: DatabaseService(uid: user?.uid).userData,
      builder: (context, snapshot)  {
        if (snapshot.hasData) {
          GebruikerData? gebruikerData = snapshot.data;
          return Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                const Text(
                  'Update your brew settings.',
                  style: TextStyle(fontSize: 18.0),
                ),
                const SizedBox(height: 20.0),
                TextFormField(
                  initialValue: gebruikerData?.name,
                  decoration: textInputDecoration,
                  validator: (val) => val!.isEmpty ? 'Please enter a name' : null,
                  onChanged: (val) => setState(() => _currentName = val),
                ),
                const SizedBox(height: 20.0),
                // dropdown
                DropdownButtonFormField(
                  decoration: textInputDecoration,
                  value: _currentSugars ?? gebruikerData?.sugars,
                  items: sugars.map((sugar){
                    return DropdownMenuItem(
                      value: sugar,
                      child: Text('$sugar sugars'),
                    );
                  }).toList(),
                  onChanged: (val) {
                    setState(() => _currentSugars = val.toString());
                  },
                ),
                // slider
                Slider(
                  value: (_currentStrength ?? gebruikerData?.strength as int).toDouble(),
                  activeColor: Colors.brown[_currentStrength ?? gebruikerData?.strength as int],
                  inactiveColor: Colors.brown[_currentStrength ?? gebruikerData?.strength as int],
                  min: 100,
                  max: 900,
                  divisions: 8,
                  onChanged: (val) => setState(() => _currentStrength = val.round()),
                ),

                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.pink[400],
                    ),
                    child: const Text(
                      'Update',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () async {
                      if(_formKey.currentState!.validate()) {
                        await DatabaseService(uid: user?.uid).updateUserData(
                            _currentSugars ?? gebruikerData?.sugars,
                            _currentName ?? gebruikerData?.name,
                            _currentStrength ?? gebruikerData!.strength,
                        );
                        Navigator.pop(context);
                      }
                    }
                ),
              ],
            ),
          );
        } else {
          return const Loading();
        }
      }
    );
  }
}
