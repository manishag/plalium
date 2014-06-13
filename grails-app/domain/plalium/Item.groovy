package plalium
import org.grails.rateable.*
import org.grails.comments.*

class Item implements Rateable,Commentable {
	
	byte[] image
	String imageType
	static constraints = {
		title()
		summary(maxSize:1000)
		image(nullable:true, maxSize:16384000 /* 16M */) 
		imageType(nullable:true)
	}

	String title
	String summary
	String url
	ItemType itemType
	Age age // Age this Item is appropriate for
	User owner //Person who uploaded this item the first time


}