package administration

import common.ResourceType;

class About {
	
	String aboutText
	String email
	String facebookPage
	String twitterPage
	String instagramPage

	static constraints = {
		aboutText(blank: false, nullable: false)
		email(blank: false, email: true)
		facebookPage(blank: true, nullable: true, url: true)
		twitterPage(blank: true, nullable: true, url: true)
		instagramPage(blank: true, nullable: true, url: true)
		
	}
}
