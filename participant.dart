import 'dart:io';

class Participant {

  String name,stack,type,option;
  int time;

  Participant({this.name, this.stack,this.type,this.time});

  void addName(){
    print('Enter your name');
    name=stdin.readLineSync();
  }
  //felt like this was needed

  void addStacks() {
    print('Enter your interest or area of expertise');
    print('1 for Web Development \n2 for Flutter Development \n3 for UI/UX Development');
    stack=stdin.readLineSync();
  }

  void setMentorOrLearner(){

    void setAvailableTime(){
    print('Enter the amount of time you can spend (in hours)');
    try {
      time=int.parse(stdin.readLineSync());
    }
    on FormatException{
      print('Please enter only numbers');
      sleep(const Duration(seconds: 1));
      setAvailableTime();
    }
    }

    print('Are you a Mentor or a Learner (M/L) ? ');
    option=stdin.readLineSync();
    if (option=='M'){
      type='Mentor';
      setAvailableTime();
    }
    else if (option=='L'){
      type='Learner';
    }
    else{
      print('Wrong Option');
      sleep(const Duration(seconds: 1));
      setMentorOrLearner();
    }
  }

  void getMentor(String option,int timeoption){
    if ((stack==option) && (timeoption<=time)){
      print(name);
    }

  }

}

main() {
  Participant person1=Participant(name: 'Rejul',stack:'1', type:'Mentor', time:20);
  Participant person2=Participant(name: 'Gokul',stack:'1', type:'Mentor', time:10);
  Participant person3=Participant(name: 'Mehar',stack:'2', type:'Mentor', time:10);
  Participant person=Participant();
  person.addName();
  person.addStacks();
  person.setMentorOrLearner();
  print('Your details are now stored\n');
  sleep(const Duration(seconds: 1));
  print('Enter the stack for which a mentor is needed');
  print('1 for Web Development \n2 for Flutter Development \n3 for UI/UX Development');
  String option=stdin.readLineSync();
  print('Enter the amount of time a mentor is needed (in hours)');
  int timeoption=int.parse(stdin.readLineSync());
  person.getMentor(option,timeoption);
  person1.getMentor(option,timeoption);
  person2.getMentor(option,timeoption);
  person3.getMentor(option,timeoption);
}
