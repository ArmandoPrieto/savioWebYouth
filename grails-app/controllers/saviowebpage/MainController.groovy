package saviowebpage
import administration.Menu
import grails.util.Holders
import common.ResourceType

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
		def c1 = Resource.createCriteria()
		def links = c1.list {
			eq("type", ResourceType.LINK)
		}
		def c2 = Resource.createCriteria()
		def videos = c2.list {
			eq("type", ResourceType.VIDEO)
		}
		def banners = Banner.list(max: 6)
		
		
		render(view: "index", model:[menus: Menu.list(),
			 events: eventList, 
			 posts: postList,
			 ministries: ministries,
			 newsletterInstance: new Newsletter(),
			 quotes: quoteList,
			 links: links,
			 videos: videos,
			 banners: banners,
			 fragment: params.fragment.toString()])
		
		
	}
	
}
