import administration.Menu
import administration.SubMenu
import com.security.Role
import com.security.User
import com.security.UserRole
import saviowebpage.Quote



class BootStrap {
transient springSecurityService

    def init = { servletContext ->
    
		environments {
				development{
					
				//ROLES
				def userRole = Role.findByAuthority('ROLE_USER') ?: new Role(authority: 'ROLE_USER').save(failOnError: true)
				def adminRole = Role.findByAuthority('ROLE_ADMIN') ?: new Role(authority: 'ROLE_ADMIN').save(failOnError: true)
				def moderatorRole = Role.findByAuthority('ROLE_MODERATOR') ?: new Role(authority: 'ROLE_MODERATOR').save(failOnError: true)
				
				def adminUser = new User(username: 'admin',
									 password: 'admin',
									 enabled: true)
				adminUser.save(failOnError: true)
				UserRole.create(adminUser,adminRole, true)	
				
				
				def topMenu = new Menu(title:"Home", url:"#top",  active:true, subMenu: null).save(flush: true)
				def eventsMenu = new Menu(title:"Program & Events", url:"#events",  active:false, subMenu: null).save(flush: true)
				def bulletinMenu = new Menu(title:"Bulletin", url:"#bulletin",  active:false, subMenu: null).save(flush: true)
				def quotesMenu = new SubMenu(title:"Quotes", url:"#quotes",  active:false, subMenu: null).save(flush: true)
				def linksMenu = new SubMenu(title:"Recommended Links", url:"#recommendedLinks",  active:false, subMenu: null).save(flush: true)
				def videosMenu = new SubMenu(title:"Recommended Videos", url:"#recommendedVideos",  active:false, subMenu: null).save(flush: true)
				def ministriesMenu = new Menu(title:"Ministries", url:"#ministries",  active:false, subMenu: null).save(flush: true)
				def resourcesMenu = new Menu(title:"Resources", url:"#",  active:false, subMenu: [linksMenu, videosMenu, quotesMenu]).save(flush: true)
				def aboutMenu = new Menu(title:"About Savio YM", url:"#about",  active:false, subMenu: null).save(flush: true)
				
				new Quote(text: "There can be no virtue without obedience", author:"Don Bosco").save(flush:true)
				new Quote(text: "All armies are useless unless assisted by God", author:"Don Bosco").save(flush:true)
				new Quote(text: "Do good while you still have time", author:"Don Bosco").save(flush:true)
				new Quote(text: "Remember, God does not pay us for results, but for effort", author:"Don Bosco").save(flush:true)
				new Quote(text: "Believe me... nobody can be truly happy in this world unless he is at peace with God", author:"Don Bosco").save(flush:true)
				new Quote(text: "Gentleness is the favorite virtue of Jesus Christ", author:"Don Bosco").save(flush:true)
				new Quote(text: "Be humble and patient, and the Lord Jesus will give you the will and the means", author:"Don Bosco").save(flush:true)
				
				
				//Locale language
				Locale.setDefault(Locale.ENGLISH);
				println("Starting")
			}
				production{
					//ROLES
				def userRole = Role.findByAuthority('ROLE_USER') ?: new Role(authority: 'ROLE_USER').save(failOnError: true)
				def adminRole = Role.findByAuthority('ROLE_ADMIN') ?: new Role(authority: 'ROLE_ADMIN').save(failOnError: true)
				def moderatorRole = Role.findByAuthority('ROLE_MODERATOR') ?: new Role(authority: 'ROLE_MODERATOR').save(failOnError: true)
				
				def adminUser = new User(username: 'admin',
									 password: 'admin',
									 enabled: true)
				adminUser.save(failOnError: true)
				UserRole.create(adminUser,adminRole, true)	
				
				def topMenu = new Menu(title:"Home", url:"#top",  active:true, subMenu: null).save(flush: true)
				def eventsMenu = new Menu(title:"Program & Events", url:"#events",  active:false, subMenu: null).save(flush: true)
				def bulletinMenu = new Menu(title:"Bulletin", url:"#bulletin",  active:false, subMenu: null).save(flush: true)
				def quotesMenu = new SubMenu(title:"Quotes", url:"#quotes",  active:false, subMenu: null).save(flush: true)
				def linksMenu = new SubMenu(title:"Recommended Links", url:"#recommendedLinks",  active:false, subMenu: null).save(flush: true)
				def videosMenu = new SubMenu(title:"Recommended Videos", url:"#recommendedVideos",  active:false, subMenu: null).save(flush: true)
				def ministriesMenu = new Menu(title:"Ministries", url:"#ministries",  active:false, subMenu: null).save(flush: true)
				def resourcesMenu = new Menu(title:"Resources", url:"#",  active:false, subMenu: [linksMenu, videosMenu, quotesMenu]).save(flush: true)
				def aboutMenu = new Menu(title:"About Savio YM", url:"#about",  active:false, subMenu: null).save(flush: true)
				
				
			
				new Quote(text: "There can be no virtue without obedience", author:"Don Bosco").save(flush:true)
				new Quote(text: "All armies are useless unless assisted by God", author:"Don Bosco").save(flush:true)
				new Quote(text: "Do good while you still have time", author:"Don Bosco").save(flush:true)
				new Quote(text: "Remember, God does not pay us for results, but for effort", author:"Don Bosco").save(flush:true)
				new Quote(text: "Believe me... nobody can be truly happy in this world unless he is at peace with God", author:"Don Bosco").save(flush:true)
				new Quote(text: "Gentleness is the favorite virtue of Jesus Christ", author:"Don Bosco").save(flush:true)
				new Quote(text: "Be humble and patient, and the Lord Jesus will give you the will and the means", author:"Don Bosco").save(flush:true)
				
				
					
					//Locale language
					Locale.setDefault(Locale.ENGLISH);
					println("Starting APP")
					
				}
		}
		
		
		}
    def destroy = {
    }
}
