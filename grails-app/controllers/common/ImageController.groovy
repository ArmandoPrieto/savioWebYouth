package common

import org.springframework.http.HttpStatus

import grails.converters.JSON
import org.springframework.web.multipart.MultipartHttpServletRequest
import org.springframework.web.multipart.MultipartFile
import java.awt.image.BufferedImage

import org.codehaus.groovy.grails.io.support.ResourceLoader
import org.imgscalr.Scalr
import javax.imageio.ImageIO
import org.imgscalr.Scalr.Method
import org.apache.commons.io.FileUtils
import grails.util.Environment

class ImageController {
	
	String storageDirectory
	String storageDirectoryTmp 
	
	def beforeInterceptor = {
		
		if (Environment.current == Environment.DEVELOPMENT) {
			// insert Development environment specific code here
			storageDirectory =servletContext.getRealPath(grailsApplication.config.file.upload.directory)
			storageDirectoryTmp = servletContext.getRealPath(grailsApplication.config.fileTmp.upload.directory.tmp)
		} else
		if (Environment.current == Environment.TEST) {
			// insert Test environment specific code here
		} else
		if (Environment.current == Environment.PRODUCTION) {
			// insert Production environment specific code here
			storageDirectory = System.getenv('OPENSHIFT_DATA_DIR') + '/uploads'
			storageDirectoryTmp = System.getenv('OPENSHIFT_DATA_DIR') + '/uploads/tmp'
		
		}
	
	
	
	}
	def crop(){
			if (request instanceof MultipartHttpServletRequest){
			
			for(filename in request.getFileNames()){
				MultipartFile file = request.getFile(filename)
				
				
			}
			
		
			}
		
		/*
	imgUrl 		// your image path (the one we recieved after successfull upload)
				
	imgInitW  	// your image original width (the one we recieved after upload)
	imgInitH 	// your image original height (the one we recieved after upload)

	imgW 		// your new scaled image width
	imgH 		// your new scaled image height

	imgX1 		// top left corner of the cropped image in relation to scaled image
	imgY1 		// top left corner of the cropped image in relation to scaled image

	cropW 		// cropped image width
	cropH 		// cropped image height
	
	*/
		float coversionRateW = 0.0
		float coversionRateH = 0.0
		float frameW = Float.parseFloat(params.frameWidth)
		float frameH = Float.parseFloat(params.frameHeight)
		print("**********")
		print("frameW" +frameW)
		print("frameH" +frameH)
		float imgInitW = Float.parseFloat(params.imgInitW) //=640
		float imgInitH = Float.parseFloat(params.imgInitH) //=480
		print("imgInitW" +imgInitW)
		print("imgInitH" +imgInitH)
		
		
		
		def imgUrl = params.imgUrl //=http://localhost:8080/savioWebPage/images/uploads/5a8d5c55-cf75-485b-93e5-cf7fc0957f40.JPG
		
		float imgH = Float.parseFloat(params.imgH) //=330
		float imgW = Float.parseFloat(params.imgW) //=440
		print("imgW" +imgW)
		print("imgH" +imgH)
		
		float imgY1 = Float.parseFloat(params.imgY1) //=40 
		float imgX1 = Float.parseFloat(params.imgX1) //=20 
		
		float cropH = Float.parseFloat(params.cropH) //=250
		float cropW = Float.parseFloat(params.cropW) //=400
		print("cropH" +imgW)
		print("cropW" +imgH)
		
		coversionRateW = imgInitW/ imgW
		coversionRateH = imgInitH/imgH
		
		if(cropH > imgH || cropW > imgW){
		
			render(["status":"error",
				"message": "The image is smaller than the frame"] as grails.converters.JSON)
		}else{
		
		def token = params.imgUrl.split("imageName=");
		String imageId =token[token.size()-1]
		
		def nameAndExtension = imageId.split("\\.")
		String extension = nameAndExtension[nameAndExtension.size()-1]
		File newFile = new File("$storageDirectoryTmp/$imageId")
		
		BufferedImage img = ImageIO.read(newFile);
		
		BufferedImage scaledImg = Scalr.resize(img, Method.QUALITY, imgInitW.round(), imgInitH.round());
		scaledImg = Scalr.crop(img, (imgX1*coversionRateW).round().toInteger(), 
									(imgY1*coversionRateH).round().toInteger(), 
									(cropW*coversionRateW).round().toInteger(), 
									(cropH*coversionRateH).round().toInteger(), null)
		

	
		File cropFile = new File("$storageDirectory/crop-$imageId")
		ImageIO.write(scaledImg, extension, cropFile)
		
		
		//Thumbail
		BufferedImage scaledImgThumbail = Scalr.resize(scaledImg, Method.QUALITY, 370, 120);
		File cropFileThumbail = new File("$storageDirectory/thumbails/thumbail-$imageId")
		ImageIO.write(scaledImgThumbail, extension, cropFileThumbail)
	
		//delete(imageId)
		Image imgg = new Image()
		imgg.setImageId(imageId)
		imgg.setOriginalFilename("crop-$imageId")
		imgg.setThumbnailFilename("thumbail-$imageId")
		imgg.setNewFilename("crop-$imageId")
		imgg.setFileSize(1)
			if(imgg.save(flush: true, failOnError: true)){
			
			deleteTmp()
			
			render(["status":"success",
				//"url": g.resource(dir: grailsApplication.config.file.upload.directory, file: "crop-$imageId", absolute: true)*/
				
				"url": g.createLink(controller: 'image', action:'picture', id: imgg.getId()),
				"imageId": imgg.getId()] as grails.converters.JSON)
				
			}
		
		}
		return null
		}
	
	protected void deleteTmp(){
	def mainDir = new File(storageDirectoryTmp)
	FileUtils.cleanDirectory(mainDir); 
	
	
	}
	
		def upload() {
				
		switch(request.method){
			case "GET":
			
				def results = []
				Image.findAll().each { Image picture ->
					results << [
							name: picture.originalFilename,
							size: picture.fileSize,
							url: createLink(controller:'image', action:'picture', id: picture.id),
							thumbnail_url: createLink(controller:'image', action:'thumbnail', id: picture.id),
							delete_url: createLink(controller:'image', action:'delete', id: picture.id),
							delete_type: "DELETE"
					]
				}
				render results as JSON
				break;
			case "POST":
			
				def results = []
				if (request instanceof MultipartHttpServletRequest){
					
					for(filename in request.getFileNames()){
						MultipartFile file = request.getFile(filename)

						String newFilenameBase = UUID.randomUUID().toString()
						String originalFileExtension = file.originalFilename.substring(file.originalFilename.lastIndexOf("."))
						String newFilename = newFilenameBase + originalFileExtension
						
						
						File newFile = new File("$storageDirectoryTmp/$newFilename")
						file.transferTo(newFile)
						BufferedImage original = ImageIO.read(newFile);
						
						int width          = original.getWidth();
						int height         = original.getHeight();
						
						//BufferedImage thumbnail = Scalr.resize(ImageIO.read(newFile), 290);
						//String thumbnhttp://mrhaki.blogspot.com/2013/09/grails-goodness-render-binary-output.htmlailFilename = newFilenameBase + '-thumbnail.png'
						//File thumbnailFile = new File("$storageDirectory/$thumbnailFilename")
						//ImageIO.write(thumbnail, 'png', thumbnailFile)

					/*	Image picture = new Image(
								originalFilename: file.originalFilename,
								thumbnailFilename: thumbnailFilename,
								newFilename: newFilename,
								fileSize: file.size
						).save()
				*/
				
				render([status:"success",
					url: g.createLink(cotroller:'image', action:'pictureTmp', params:['imageName': newFilename], absolute: true),
					width:width,
					height:height] as grails.converters.JSON)
				
			/*	{
					"status":"error",
					"message":"your error message text"
				}*/
					/*	results << [
								name: picture.originalFilename,
								size: picture.fileSize,
								url: createLink(controller:'image', action:'picture', id: picture.id),
								thumbnail_url: createLink(controller:'image', action:'thumbnail', id: picture.id),
								delete_url: createLink(controller:'image', action:'delete', id: picture.id),
								delete_type: "DELETE"
						]*/
					}
				}

				render results as JSON
				break;
			default: render status: HttpStatus.METHOD_NOT_ALLOWED.value()
		}
		return null
	}
		def pictureTmp(){
			def pic = params.imageName
			
			File picFile = new File("$storageDirectoryTmp/${pic}")
			
			response.contentType = 'image/jpeg'
			response.outputStream << new FileInputStream(picFile)
			response.outputStream.flush()
		}
	def picture(){
		def pic = Image.get(params.id)
		
		File picFile = new File("$storageDirectory/crop-${pic.imageId}")
		
		response.contentType = 'image/jpeg'
		response.outputStream << new FileInputStream(picFile)
		response.outputStream.flush()
	}

	def thumbnail(){
		def pic = Image.get(params.id)
		File picFile = new File("$storageDirectory/thumbails/thumbail-${pic.imageId}")
		response.contentType = 'image/png'
		response.outputStream << new FileInputStream(picFile)
		response.outputStream.flush()
	}

	def delete(){
		def pic = Image.get(params.id)
		File picFile = new File("$storageDirectory/${pic.imageId}")
		picFile.delete()
		File thumbnailFile = new File("$storageDirectory/${pic.imageId}")
		thumbnailFile.delete()
		pic.delete()

		def result = [success: true]
		render result as JSON
	}
}