import 'dart:io';

List add(List stu){
 print("Adding a Member...");
 print("Enter Member data: \n 1. ID \n 2. Name \n 3. Age \n 4. Faculty \n");


 List newstu = List.filled(stu[0].length, "none", growable: true);
   for(var j = 0; j< stu[0].length; j++){
     newstu[j] = stdin.readLineSync();
   }
   print(newstu);
 
  stu.add(newstu);
 print("Member Added!");
 return stu;
}




void displayUnsorted(List stu){
  for (var item in stu) {
    print(item);
    
  }
}

void displaySorted(List stu){
 
  List<String>? names = List.filled(stu.length, "none", growable: true);
  for (var i = 0; i < stu.length; i++){
    names.insert(i, stu[i][1]);
  }


    for (var i = 0; i< names.length; i++){
      names.remove("none");
    }
    for (var i = 0; i< names.length; i++){
      names[i] = names[i].toLowerCase();
     
    }

    names.sort();
   
    
    for (var i = 0; i< stu.length; i++) {
      for (var j = 0; j < stu.length; j++) {
        String? sname = stu[j][1].toLowerCase();
         if (sname == names[i]){
         print(stu[j]);
      }
      }
     
   
    }
}



List deleteById(List stu){
  print("Deleting a Member...");
  print("Enter ID of Member to be deleted: ");
  String? id = stdin.readLineSync()!;
  int flag = 0;
  for(var i = 0; i<stu.length; i++) {
    if (stu[i][0]== id) {
      stu.removeAt(i);
      print("Member deleted!");
      flag = 1;
    } 
  }
  if(flag==0){
    print("Member not found");
  }
  return stu;
}



void searchID(List stu, String id, int size){
  
  if( size<= 0 ){
    print("Member not found");
  }

  else if(stu[size-1][0]== id){
    print("Member found");
    print(stu[size-1]);
  
  }
  else {
    searchID(stu, id, size-1);
  }
  
  
}



void searchName(List stu){
  print("Searching a Member by Name...");
  print("Enter Member Name");
  String? name = stdin.readLineSync()!;
  int flag = 0;
  for(var i = 0; i<stu.length; i++) {
    String? listname = stu[i][1].toLowerCase();
    if (listname == name.toLowerCase()) {
      print(stu[i]);
      flag = 1;
    } 
  }
  if(flag==0){
    print("Member not found");
  }
}






int main() {
  List<List> members = [ ["202204","Salma", "19", "ITCS"], ["202201", "Youssef", "22", "Business"], ["202202", "Sara", "20", "Dentistry"], ["202203", "Ahmed", "18", "Law"]];
  int? choice; 
  print("Welcome to the Mobile Development committe management system"); 
do {
  
  print("1. Add a memeber");
  print("2. Delete a member");
  print("3. Search a member");
  print("4. Display all members");
  print("0. Quit");
  print("Enter your choice: ");
 
  choice = int.parse(stdin.readLineSync()!);
  
  switch (choice) {
    case 1: 
      add(members);
      break;
    case 2:
      deleteById(members);
      break;
    case 3:
      int option;
      print("Search 1. By ID or 2. By Name?");
      print("Enter 1 or 2: ");
      option = int.parse(stdin.readLineSync()!);
      if (option == 1) {
        print("Searching a Member by ID...");
        print("Enter Member ID");
        String? id = stdin.readLineSync()!;

        searchID(members, id, members.length);
      } 
      else if (option == 2){
       searchName(members);
      }
      break;
    case 4:
      int option;
      print("Display 1. Sorted or 2. Unsorted?");
      print("Enter 1 or 2: ");
      option = int.parse(stdin.readLineSync()!);
      if (option == 2) {
        displayUnsorted(members);
      } 
      else if (option == 1){
        displaySorted(members);
      }
      break; 
    
  }

} while (choice!=0);
return 0;
}
 