String? emailValidator(value) {
  if (value == null || value.isEmpty) {
    return "Kindly enter email";
  }
  RegExp regexEmail =
      RegExp(r'^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$');
  if (!regexEmail.hasMatch(value!)) {
    return "The email pattern is incorrect";
  } 
    return null;
  
}

String? passwordValidator(value) {
  if (value == null || value.isEmpty) {
    return "Kindly enter password";
  }
  RegExp regexEmail = RegExp(r'^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,20}$');
  if (!regexEmail.hasMatch(value!)) {
    return "The password pattern is incorrect";
  } 
    return null;

}
