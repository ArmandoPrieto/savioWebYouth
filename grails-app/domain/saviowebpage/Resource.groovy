package saviowebpage

import common.ResourceType

class Resource {
	
	String text
	String url
	ResourceType type
  static constraints = {
		text(blank: false, nullable: false)
		url(blank: false, nullable: false, url: true)
		type(blank:false)
    }
}

