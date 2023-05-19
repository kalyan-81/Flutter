class StudentDetails {
  final String? firstName;
  final String? lastName;
  final String? emailId;

  StudentDetails(
      {required this.firstName, required this.lastName, required this.emailId});

  factory StudentDetails.fromJson(Map<String, dynamic> json) {
    return StudentDetails(
      firstName: json['first_name'],
      lastName: json['last_name'],
      emailId: json['email_id'],
    );
  }
}
