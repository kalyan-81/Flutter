import 'package:flutter/material.dart';

class EligibilityScreenProvider extends ChangeNotifier {
  String _eligibilityMessage = '';
  late bool _isEligible;

  String get eligibilityMessage => _eligibilityMessage;
  bool get isEligible => _isEligible;

  void checkEligibility(int age) {
    if (age >= 18)
      eligibleForLicense();
    else
      notEligibleForLicense();
  }

  void notEligibleForLicense() {
    _eligibilityMessage = "you are not elgible to apply for driving license";
    _isEligible = false;
    //call this whenever there is some change in any field of change notifier.
    notifyListeners();
  }

  void eligibleForLicense() {
    _eligibilityMessage = "you are  elgible to apply for driving license";
    _isEligible = true;
    notifyListeners();
  }
}
