package plalium

class UserController {
	def scaffold = User
	UserControllerService userControllerService
	
	def login = {}
	
	def authenticate = {
	  def user = User.findByLoginAndPassword(params.login, params.password)
	  if(user){
		session.user = user
		flash.message = "Hello ${user.name}!"
		redirect(controller:"User", action:"index")
	  }else{
		flash.message = "Sorry, ${params.login}. Please try again."
		redirect(action:"login")
	  }
	}
	
	def logout = {
	  flash.message = "Goodbye ${session.user.name}"
	  session.user = null
	  redirect(controller:"entry", action:"list")
	}
	
    def index() {
		if (params.itemTypeFilter != null) {
			def itemT = params.itemTypeFilter as ItemType
			def age = params.ageFilter as Age
			return userControllerService.getUserPage(session.user, itemT, age)
		} 
		userControllerService.getUserPage(session.user, ItemType.TOYS, Age.INFANT)	
	}
}
