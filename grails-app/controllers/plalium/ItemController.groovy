package plalium

class ItemController {
	def scaffold = Item
    def index() { }
	
	
//	def list() {
//		if(!params.max) params.max = 10
//		def query = {
//			  eq(ItemType.APPS, itemType)
//		}
//		
//		def itemList = User.createCriteria().list query
//		
//		[list:itemList]
//	}
	
	def save = {
		def entryInstance = new Item(params)
		entryInstance.owner = User.get(session.user.id)
		// Get the avatar file from the multi-part request
		def f = request.getFile('itemImage')
	
		// List of OK mime-types
		if (!okcontents.contains(f.getContentType())) {
			flash.message = "Image must be one of: ${okcontents}"
			render(view:'create',model:[Item:Item])
			return
		}
	
		entryInstance.image = f.bytes
		entryInstance.imageType = f.contentType
		
		if(!entryInstance.hasErrors() && entryInstance.save()) {
			flash.message = "Entry ${entryInstance.id} created"
			redirect(action:'show',id:entryInstance.id)
		}
		else {
			render(view:'create',model:[entryInstance:entryInstance])
		}
	}
	
	private static final okcontents = ['image/png', 'image/jpeg', 'image/gif']
	
	
	def get_item_image() {
		def item = Item.get(params.id)
		if (!item || !item.image || !item.imageType) {
		  response.sendError(404)
		  return
		}
		response.contentType = item.imageType
		response.contentLength = item.image.size()
		response.outputStream << item.image
		response.outputStream.flush()
		
	  }
	
	def itemDetail() {
		def item = Item.get(params.id)
		if (!item || !item.image || !item.imageType) {
		  response.sendError(404)
		  return
		}
		[item:item]
	}
	
}
