void main() {
  DateTime dob= DateTime.parse("1995-05-10");
  
  Person p1 = Person(fullName:"john Doe",
                     dateOfBirth: dob,
                     weight: 72.55,
                     height: 1.75);
  
  print(p1.toString());
  //Create an object of Person with name as John Doe, Date of Birth will be 10th May, 1995; Weight: 72.55Kgs, Height: 1.75m and print in the below format

  //Name: John Doe,
  //Age: 20,
  //BMI: 41
  //
}

class Person {
  String fullName;
  DateTime dateOfBirth;
  double weight;
  double height;

  //Create a constructor to accept the object members
  //All parameters must be required and named
  Person({
    this.fullName,
    this.dateOfBirth,
    this.weight,
    this.height}); // Modify it

  //Modify this function to calculate Age based on Date of Birth
  int calculateAge() {
    var age = (DateTime.now().difference(dateOfBirth).inDays)/365;
    return age.toInt();
    // Modify here to return the current age
  }

  //Modify this function to calculate BMI (Formula: weight divided by   square of height)
  int calculateBMI() {
    var bmi= weight/(height*height);
    return bmi.toInt(); // Modify here to return the BMI
  }

  @override
  String toString(){
   return ("Name: "+fullName+"\nAge: "+calculateAge().toString()+"\nBMI: "+calculateBMI().toString());
  } 
}