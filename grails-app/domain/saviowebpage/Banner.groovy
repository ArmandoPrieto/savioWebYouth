package saviowebpage

import common.BannerType
import common.Image


class Banner{

	String preTitle
	String title
	String text
	String url
	String buttonText
	String imageId
	BannerType type
	
	static constraints = {
		preTitle(blank: true, nullable: true)
		title(blank: false, nullable: false)
		text(blank: true, nullable: true)
		url(blank: false, nullable: false, url: true)
		buttonText(blank: false, nullable: false)
		imageId(blank: false, nullable: false)
		type(blank:false)
	}
}
