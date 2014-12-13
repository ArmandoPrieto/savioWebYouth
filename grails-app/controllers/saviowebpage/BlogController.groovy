package saviowebpage

import savioWebPage.Post
import administration.Menu
class BlogController {

	def GoogleBloggerReaderService
	
    def index() { 
		def postList = googleBloggerReaderService.getPosts()
		
		render(view: "index",model:[menus: Menu.list(), posts:postList, newsletterInstance: new Newsletter()])
		
	}
	
	def show() {
		Post post = googleBloggerReaderService.getPost(params.id)
		def comentList = googleBloggerReaderService.getComentList(params.id)
		render(view: "show",model:[menus: Menu.list(), postInstance: post,comentList: comentList, newsletterInstance: new Newsletter()])
	}
}
