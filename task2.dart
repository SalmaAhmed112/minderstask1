import 'dart:io';

class Worker{
  Worker(String name, int age, int phone, int salary, String section, bool ifAttended){
    this.name = name;
    this.age  = age;
    this.phone = phone;
    this.salary = salary;
    this.section = section;
    this.ifAttended = ifAttended;
  }
  String? name;
  int? age;
  int? phone;
  int? salary;
  String? section;
  bool? ifAttended;
}

class Manager extends Worker{
  Manager(String name, int age, int phone, int salary, String section, bool ifAttended, int nemployees, List <List> lemployees) : super(name, age, phone, salary, section, ifAttended){
    this.nemployees = nemployees;
    this.lemployees = lemployees;
  }

  //End of constructor  

  
  int? nemployees;
  List <List>? lemployees;
  void addtask(String task, Employee e){
    e.tasks?.add(task);
    }
  void showEmployees(List <List> lemployees){
    for (var item in lemployees) {
      print(item[0].name);
      print(item[0].age);
      print(item[0].phone);
      print(item[0].salary);
      print(item[0].section);
      print(item[0].ifAttended);

     
      print(item[0].deliver);
      print(item[0].ltasks);

    }
  }
}


class Employee extends Worker{
  Employee(String name, int age, int phone, int salary, String section, bool ifAttended, List tasks, bool deliver) : super(name, age, phone, salary, section, ifAttended){
    this.tasks = tasks;
    this.deliver = deliver;

  }
    //End of constructor  


  List? tasks;
  void showTasks(List tasks){
    print(tasks);
  }
  bool? deliver;

}

void  main() {

}