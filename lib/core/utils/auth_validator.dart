

class AuthValidator
{
  static String? userNameValidator(String?userName){
    if(userName == null || userName.isEmpty){
      return 'This field can not be empty';
    }
    return null;
  }

  static String? passWordValidator(String?value){
    if(value!.isEmpty){
      return 'Please enter password';
    }
    if(value.length<3 || value.length>6){
      return 'This field must be between 3 and 6 characters';
    }
    return null;
  }
}

