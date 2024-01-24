String fullName(String? firstName, String? lastName) {
  if ((firstName == null || firstName == "") &&
      (lastName == "" || lastName == null)) {
    return "No Name";
  }

  String newFirstName = firstName ?? "";
  String newLastName = lastName ?? "";

  String fullName = ("${newFirstName} $newLastName").trim();

  return fullName;
}
