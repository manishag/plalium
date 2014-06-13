package plalium

class User {

 static constraints = {
    login(unique:true)
    password(password:true)
    name()
	age()
  }
    
  String login
  String password
  String name
  Age age
  
  String toString(){
    name
  }
}
