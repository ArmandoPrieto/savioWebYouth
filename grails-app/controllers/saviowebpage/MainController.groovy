package saviowebpage
import administration.Menu
import grails.util.Holders
import common.PostListResponse
import common.ResourceType

class MainController {

	def googleCalendarReaderService
	def GoogleBloggerReaderService
	def grailsApplication
    def main_page() {
		
		PostListResponse postList = googleBloggerReaderService.getPosts(3)
		
		
		def eventList = googleCalendarReaderService.getEvents()
		
		
		def quoteList = Quote.getRandomList(grailsApplication.config.quotesNumber)
		def c = Ministry.createCriteria()
	/*	def ministries = c.list {
			eq("isPublished", true)
			sqlRestriction "from Ministry order by rand()"
			//maxResults(6)
		}*/
		def ministries = Ministry.getRandomList(true)
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
			 posts: postList.getPostList(),
			 ministries: ministries,
			 newsletterInstance: new Newsletter(),
			 quotes: quoteList,
			 links: links,
			 videos: videos,
			 banners: banners,
			 fragment: params.fragment.toString()])
		
		
	}
	
}
