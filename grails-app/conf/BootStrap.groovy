import plalium.Age
import plalium.Item
import plalium.ItemType
import plalium.User
import grails.util.GrailsUtil

class BootStrap {

    def init = { servletContext ->
		switch(GrailsUtil.environment){
			case "development":
			  addUser()
			  addItem()
			break
	  
			case "production":
			break
		}
    }

	private addUser() {
		def jdoe = new User(login:"jdoe", password:"password", name:"John Doe", age:Age.INFANT)
		jdoe.save()

		def jsmith = new User(login:"jsmith", password:"wordpass", name:"Jane Smith", age:Age.INFANT)
		jsmith.save()
	}
	
	private addItem() {
		def item1 = new Item(title:"item1", summary:"testing item 1", url:"this is the link for Item1", itemType:ItemType.APPS, age:Age.TODDLER)
		item1.save()
		
		def item2 = new Item(title:"item2", summary:"testing item 2", url:"this is the link for item2", itemType:ItemType.TOYS, age:Age.TEEN)
		item2.save()

		def item3 = new Item(title:"item3", summary:"testing item 3", url:"this is the link for Item 3", itemType:ItemType.APPS, age:Age.INFANT)
		item3.save()

	}
    
	def destroy = {
    }
    
}
