package saviowebpage
import administration.Menu
import grails.util.Holders
class MainController {

	def googleCalendarReaderService
	def GoogleBloggerReaderService
	def grailsApplication
    def main_page() {
		
		def postList = googleBloggerReaderService.getPosts()
		
		
		def eventList = googleCalendarReaderService.getEvents()
		
		
		def quoteList = Quote.getRandomList(grailsApplication.config.quotesNumber)
		def c = Ministry.createCriteria()
		def ministries = c.list {
			eq("isPublished", true)
			maxResults(6)
		}
		
		render(view: "index", model:[menus: Menu.list(),
			 events: eventList, 
			 posts: postList,
			 ministries: ministries,
			 newsletterInstance: new Newsletter(),
			 quotes: quoteList,
			 fragment: params.fragment.toString()])
		
		
	}
	
}
