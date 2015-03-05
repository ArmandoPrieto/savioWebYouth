package common

import java.util.List;

public class PostListResponse {
	
	String nextPageToken;
	def postList = [];
	
	public java.lang.Object getPostList() {
		return postList;
	}
	public void setPostList(java.lang.Object postList) {
		this.postList = postList;
	}
	public String getNextPageToken() {
		return nextPageToken;
	}
	public void setNextPageToken(String nextPageToken) {
		this.nextPageToken = nextPageToken;
	}
	
	
	

}
