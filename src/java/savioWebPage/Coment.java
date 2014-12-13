package savioWebPage;

import java.util.List;

import org.joda.time.DateTime;

public class Coment {
	String comentId;
	DateTime published;
	String content;
	Author author;
	List<Coment> reply;

	public List<Coment> getReply() {
		return reply;
	}
	public void setReply(List<Coment> reply) {
		this.reply = reply;
	}
	public String getComentId() {
		return comentId;
	}
	public void setComentId(String comentId) {
		this.comentId = comentId;
	}
	public DateTime getPublished() {
		return published;
	}
	public void setPublished(DateTime published) {
		this.published = published;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Author getAuthor() {
		return author;
	}
	public void setAuthor(Author author) {
		this.author = author;
	}
	
	
}
