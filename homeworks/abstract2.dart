//we have a db class that has different methods, (Oracle)
//And we decided to change our database to Firabase, and now we will do this with small actions

void main(List<String> args) {
  DataBase user=Oracle();    // if they ask to change database to firebase. I don't need to change my action methods
                            //if I change it to DataBase user=FireBase(); it will do all changes.
  user.user_Registration();
  user.user_Delete();
  user_Update(user);
}

 void user_Update(DataBase user) {
  user.user_Update();
 }

abstract class DataBase{
  void user_Registration();
  void user_Update();
  void user_Delete();

}

class Oracle extends DataBase {
  @override
  void user_Delete() {
   print("user is deleted");
  }

  @override
  void user_Registration() {
   print("User is registred");
  }

  @override
  void user_Update() {
    print("User is updated");
  }
 
}

class Firabase extends DataBase {
  @override
  void user_Delete() {
    print("user (Firebase) is deleted");
  }

  @override
  void user_Registration() {
    print("User (Firebase)is registred");
  }

  @override
  void user_Update() {
    print("User (Firebase)is updated");
  }

}