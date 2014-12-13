package saviowebpage

import savioWebPage.Post
import administration.Menu
class BlogController {

	def GoogleBloggerReaderService
	
    def index() { 
		render(view: "index")
		
	}
	
	def show() {
		Post post = googleBloggerReaderService.getPost(params.id)
		def comentList = googleBloggerReaderService.getComentList(params.id)
		render(view: "show",model:[menus: Menu.list(), postInstance: post,comentList: comentList])
	}
}
