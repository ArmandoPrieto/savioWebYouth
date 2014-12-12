package savioWebPage;
import org.joda.time.DateTime;
public class Post {
	
	String title;
	String content;
	String shortContent;
	String image;
	Author author;
	DateTime published;
	
	public DateTime getPublished() {
		return published;
	}
	public void setPublished(DateTime published) {
		this.published = published;
	}
	public Author getAuthor() {
		return author;
	}
	public void setAuthor(Author author) {
		this.author = author;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getShortContent() {
		return shortContent;
	}
	public void setShortContent(String shortContent) {
		this.shortContent = shortContent;
	}
	

}
