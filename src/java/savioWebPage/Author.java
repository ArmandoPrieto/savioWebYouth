package savioWebPage;

public class Author {
	
	String authorId; 	//The identifier of the post creator. 	
	String displayName; 	//The post creator's display name. 	
	String url; 			//The URL of the post creator's Profile page. 	
	String imageUrl; 	//The post creator's avatar.
	
	public String getAuthorId() {
		return authorId;
	}
	public void setAuthorId(String authorId) {
		this.authorId = authorId;
	}
	public String getDisplayName() {
		return displayName;
	}
	public void setDisplayName(String displayName) {
		this.displayName = displayName;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getImageUrl() {
		return imageUrl;
	}
	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

}
