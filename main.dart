import 'dart:io';
void main() {
   Result();

}



void Result ( ) {
  print('Enter Student Name:');
 String Name=(stdin.readLineSync()!);

  print('Enter Class :');
  int Class=int.parse(stdin.readLineSync()!);

  print('Enter Roll Number:');
  int Roll_Number=int.parse(stdin.readLineSync()!);

  print('Enter Section:');
 String Section=(stdin.readLineSync()!);


Map<String,dynamic>student = {
  "student_name" :Name,
  "Roll_Number" :Roll_Number,
  "Class" :Class,
  "Section" :Section
};
print(student);

  double English_T_M,
      English_O_M,
      Urdu_T_M,
      Urdu_O_M,
      Maths_T_M,
      Maths_O_M,
      Computer_T_M,
      Computer_O_M,
      Physics_T_M,
      Physics_O_M,
      Chemistry_T_M,
  Chemistry_O_M= 0;

  print("Enter total marks of English:");
  English_T_M = double.parse(stdin.readLineSync()!);
  print("Enter Obtained marks of English:");
  English_O_M= double.parse(stdin.readLineSync()!);

double p0=percentage( English_O_M,English_T_M);
  grading( p0);

  print("Enter total marks of Urdu:");
  Urdu_T_M = double.parse(stdin.readLineSync()!);
  print("Enter Obtained marks of Urdu:");
 Urdu_O_M= double.parse(stdin.readLineSync()!);
  double p1=percentage( Urdu_O_M,Urdu_T_M);
  grading( p1 );

  print("Enter total marks of Maths:");
  Maths_T_M = double.parse(stdin.readLineSync()!);
  print("Enter Obtained marks of Maths:");
  Maths_O_M= double.parse(stdin.readLineSync()!);
  double p2=percentage( Maths_O_M,Maths_T_M);
  grading( p2);

  print("Enter total marks of Computer:");
  Computer_T_M = double.parse(stdin.readLineSync()!);
  print("Enter Obtained marks of Computer:");
  Computer_O_M= double.parse(stdin.readLineSync()!);
  double p3= percentage( Computer_O_M,Computer_T_M);
  grading( p3);

  print("Enter total marks of Physics:");
  Physics_T_M = double.parse(stdin.readLineSync()!);
  print("Enter Obtained marks of Physics:");
  Physics_O_M= double.parse(stdin.readLineSync()!);
  double p4= percentage( Physics_O_M,Physics_T_M);
  grading( p4);

  print("Enter total marks of Chemistry:");
  Chemistry_T_M = double.parse(stdin.readLineSync()!);
  print("Enter Obtained marks of Chemistry:");
  Chemistry_O_M= double.parse(stdin.readLineSync()!);
  double p5=percentage( Chemistry_O_M,Chemistry_T_M);
  grading( p5);

  print('Enter Additional Marks :\n(if not then enter zero) ');
  int Add_marks = int.parse(stdin.readLineSync()!);

  double sum = Chemistry_O_M + Physics_O_M + Computer_O_M + Maths_O_M + Urdu_O_M + English_O_M+Add_marks;
  print('Total_Obtained_Marks= $sum');

  double total = Chemistry_T_M+ Physics_T_M+ Computer_T_M + Maths_T_M + Urdu_T_M + English_T_M;
  print('Total_Marks= $total');



  double Percentage= percentage(sum,total);
 print('Percentage');

}
double percentage(double om,tm) {
  double percent;
  percent= om/tm * 100;
  print('Percentage:$percent');
  return percent;
}
void grading(double marks)
{
  if (marks>=80 && marks <=100 ){
    print ("Grade :A");
  }
  else if (marks<80 && marks>=70)
  { print ("Grade: B");
  }
  else if (marks<70 && marks>=60)
  { print ("Grade :C");}
  else if (marks<60 && marks>=50)
  { print ("Grade :D");}

  else {
    print("Fail:TRY AGAIN");
  }

}