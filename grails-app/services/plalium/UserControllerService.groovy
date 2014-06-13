package plalium

import grails.transaction.Transactional

@Transactional
class UserControllerService {

    def serviceMethod() {

    }
	
	def getUserPage(User user, ItemType itemType, Age age) {
		def login = user.login
		def query = Item.where {
			
				itemType == itemType &&
				age == age
			
		}
		def list = query.findAll()
		[list:list]
	}
}
