package saviowebpage

import common.PostListResponse
import grails.converters.JSON
import grails.plugins.rest.client.RestBuilder
import grails.transaction.Transactional

import java.text.SimpleDateFormat
import org.jsoup.nodes.Document



import savioWebPage.Author
import savioWebPage.Coment
import savioWebPage.Post


import org.jsoup.Jsoup;
import org.jsoup.helper.Validate;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.jsoup.safety.Whitelist
import org.joda.time.DateTime


@Transactional
class GoogleBloggerReaderService {
	
	def grailsApplication

    def serviceMethod() {

    }
	public StringBuffer cortarCadenaPorPuntos(String cadena, int maxSize) {
		 String [] arreglo =  cadena.split("\\.");
		
		 StringBuffer bufferAux = new StringBuffer("")
		 
		 for(int i = 0; i < arreglo.length; i++){
			
		 	if(bufferAux.length() + arreglo[i].length() < maxSize){
				 
			 bufferAux.append(arreglo[i])
			 bufferAux.append(".")
			 }else{
			 	break
			 }
		}
		return bufferAux
		
		}
	int getBlogTotalItems(){
		int totalBlogItems = 0
		RestBuilder rest = new RestBuilder()
		try{
			String blogService = "https://www.googleapis.com/blogger/v3/blogs/{blogId}?key={key}"
			def urlVariable = [blogId: grailsApplication.config.blogId,key: grailsApplication.config.appId]
			def respBlog = rest.get(blogService,urlVariable)
			totalBlogItems = respBlog.json.posts.totalItems
		}catch(Exception e){
		e.printStackTrace()
		}
		return totalBlogItems
		
	}
	
	PostListResponse getPosts(int maxResults, String pageToken = null){
		
		def postList = [];
		DateTime published = null
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		Date parseDate = null
		RestBuilder rest = new RestBuilder()
		try{
		
		
		String service
		def urlVariables
		if(pageToken!= null){
			service = "https://www.googleapis.com/blogger/v3/blogs/{blogId}/posts?key={key}&fetchImages={fetchImages}&maxResults={maxResults}&pageToken={pageToken}"
		    urlVariables = [blogId: grailsApplication.config.blogId,
			key: grailsApplication.config.appId,
			fetchImages:'true',
			maxResults:maxResults,
			pageToken:pageToken]
			
		}else{
		service = "https://www.googleapis.com/blogger/v3/blogs/{blogId}/posts?key={key}&fetchImages={fetchImages}&maxResults={maxResults}"
		
			urlVariables = [blogId: grailsApplication.config.blogId,
			key: grailsApplication.config.appId,
			fetchImages:'true',
			maxResults:maxResults]
		}
		    
		def resp = rest.get(service,urlVariables)
		
		Post post = null
		Author author = null
		resp.json.items.each{
			post = new Post();
			author = new Author();
			post.setPostId(Long.valueOf(it.id).longValue());
			post.setTitle(it.title.toString())
			
			
			String html = it.content.toString();
			Document doc = Jsoup.parse(html);
			doc.select("img").remove();
			// if not removed, the cleaner will drop the <div> but leave the inner text
			String clean = Jsoup.clean(doc.body().text(), Whitelist.basic());
			
			
			post.setContent(clean)
			post.setShortContent(cortarCadenaPorPuntos(clean, 300).toString())
		//	println(post.content)
		//	println(post.shortContent)
			
			it.images.each{ a ->
				a.url
				post.setImage(a.url)
			}
			
			author.setAuthorId(it.author.id)
			author.setDisplayName(it.author.displayName)
			author.setUrl(it.author.url)
			author.setImageUrl(it.author.image.url)
			post.setAuthor(author)
			
			parseDate = df.parse(it.published.toString());
			published = new DateTime(parseDate.getTime());
			post.setPublished(published)
			
			postList.add(post)
		}
		
		def json = resp.json as JSON
		json.prettyPrint = true
		
		//println(json)
		PostListResponse postListResponse = new PostListResponse()
		postListResponse.setPostList(postList)
		postListResponse.setNextPageToken(resp.json.nextPageToken)
		return postListResponse
		
		}catch(Exception e ){
		e.printStackTrace()
		return null
		}
		
		
		
	}
	
	Post getPost(String postId){
		
		String service = "https://www.googleapis.com/blogger/v3/blogs/{blogId}/posts/{postId}?key={key}"
		def urlVariables = [blogId: grailsApplication.config.blogId,postId: postId,key: grailsApplication.config.appId]
		RestBuilder rest = new RestBuilder()
		def resp = rest.get(service,urlVariables)
		DateTime published = null
		Post post = new Post()
		Author author = new Author()
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		Date parseDate = null
		
			post.setPostId(postId.toLong())
			post.setContent(resp.json.content)
			post.setTitle(resp.json.title)
			
			
			author.setAuthorId(resp.json.author.id)
			author.setDisplayName(resp.json.author.displayName)
			author.setUrl(resp.json.author.url)
			author.setImageUrl(resp.json.author.image.url)
			post.setAuthor(author)
			
			parseDate = df.parse(resp.json.published.toString());
			published = new DateTime(parseDate.getTime());
			post.setPublished(published)
			def labelList = []
			resp.json.labels.each{
				
				labelList.add(it.toString())
			}
			post.setLabels(labelList)
			
		return post
	}
	
	def getComentList(String postId){
		
		String service = "https://www.googleapis.com/blogger/v3/blogs/{blogId}/posts/{postId}/comments?key={key}"
		def urlVariables = [blogId: grailsApplication.config.blogId,postId: postId,key: grailsApplication.config.appId]
		RestBuilder rest = new RestBuilder()
		def resp = rest.get(service,urlVariables)
		DateTime published = null
		
		Author author = null
		
		//SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd'T'hh:mm:ss-Z");
		Date parseDate = null
		def comentList = []
		Coment coment = null
		resp.json.items.each{
			
			coment= new Coment()
			author = new Author()
			coment.setComentId(it.id)
			
			//parseDate = df.parse(it.published.toString());
			published = new DateTime(it.published.toString());
			coment.setPublished(published)
			coment.setContent(it.content)
			
			author.setAuthorId(it.author.id)
			author.setDisplayName(it.author.displayName) 	
			author.setUrl(it.author.url) 		 	
			author.setImageUrl(it.author.image.url)
			 
			coment.setAuthor(author)
			
			if(it.inReplyTo){
				comentList.each{ commentFather ->
					if(commentFather.getComentId() == it.inReplyTo.id){
						def replyList = commentFather.getReply()
						replyList.add(coment)
					}
				}
			}else{
				coment.setReply(new ArrayList<Coment>())
				comentList.add(coment)
			}
		}
		
		return comentList
	}
	public String takeOutImage(String imageUrl){
		
		
		
	}
}
