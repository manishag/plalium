package plalium

class PlaliumController {

    def index() {
		def user = session["user"]
		if (user){
			redirect(controller:"User", action:"index")
		}else {
			redirect(controller:"User", action:"login")
		}
	}
}
