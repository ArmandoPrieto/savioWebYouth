package saviowebpage

import savioWebPage.Post
import common.PostListResponse
import administration.Menu
class BlogController {

	def GoogleBloggerReaderService
	
    def index() { 
	try{
		int maxResults = 5
		PostListResponse postList = googleBloggerReaderService.getPosts(params.maxResults?:maxResults, params.nextPageToken?:null)
		int blogTotalItems = googleBloggerReaderService.getBlogTotalItems()
		List postListPagination = []
		List<String> aux=[]
		int item = params.item?Integer.parseInt(params.item):-1
		
		if(item > 0){
			
			if(params?.postListPagination!=null){
				aux = params.list('postListPagination')
				
				if(aux.size()>=item){
				postListPagination.addAll(aux[0..item-2])
				}else{
				postListPagination.addAll(aux)
				}
			
				
			
			}
			if(maxResults*item<blogTotalItems){
			postListPagination.add(params?.nextPageToken)
			}
			postListPagination = postListPagination.unique()
			
		}
		
	
		
		render(view: "index",model:[menus: Menu.list(), posts:postList,postListPagination:postListPagination, newsletterInstance: new Newsletter()])
	}catch(Exception e){
	println("Error")
	redirect(view:"error")
	}
	
	}
	
	def show() {
		Post post = googleBloggerReaderService.getPost(params.id)
		def comentList = googleBloggerReaderService.getComentList(params.id)
		render(view: "show",model:[menus: Menu.list(), postInstance: post,comentList: comentList, newsletterInstance: new Newsletter()])
	}
}
