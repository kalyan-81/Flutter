import 'package:flutter/material.dart';

import 'providers/eligibilityScreenProvider.dart';
import 'package:provider/provider.dart';

class EligibilityScreen extends StatelessWidget {
  EligibilityScreen({super.key});

  final ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<EligibilityScreenProvider>(
      create: (context) => EligibilityScreenProvider(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Provider Example'),
            ),
            body: Container(
              padding: EdgeInsets.all(16),
              child: Form(
                child: Consumer<EligibilityScreenProvider>(
                  builder: (context, provider, child) {
                    return Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.orangeAccent),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        TextFormField(
                          controller: ageController,
                          decoration: InputDecoration(
                              hintText: "Give you age",
                              errorText: provider.eligibilityMessage),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              //getting the text from the textFormField and converting it into integer

                              final int age =
                                  int.parse(ageController.text.trim());

                              //Calling the method from provider

                              provider.checkEligibility(age);
                            },
                            child: Text('Check'),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(provider.eligibilityMessage),
                      ],
                    );
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
