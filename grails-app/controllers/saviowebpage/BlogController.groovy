package saviowebpage

class BlogController {

    def index() { 
		render(view: "index")
		
	}
	
	def show() {
		
		render(view: "show")
	}
}
