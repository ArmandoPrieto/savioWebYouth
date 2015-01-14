import administration.Menu
import saviowebpage.Quote

class BootStrap {

    def init = { servletContext ->
    
		environments {
				development{
				def a = new Menu(title:"Home", url:"",  active:true, subMenu: null).save(flush: true)
				def b = new Menu(title:"About", url:"",  active:false, subMenu: null).save(flush: true)
				//def c = new Menu(title:"Home1", url:"",  active:false, subMenu: null).save(flush: true)
				def d = new Menu(title:"Home2", url:"",  active:false, subMenu: [a,b]).save(flush: true)
			
				
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
					def a = new Menu(title:"Home", url:"",  active:true, subMenu: null).save(flush: true)
					def b = new Menu(title:"About", url:"",  active:false, subMenu: null).save(flush: true)
					//def c = new Menu(title:"Home1", url:"",  active:false, subMenu: null).save(flush: true)
					def d = new Menu(title:"Home2", url:"",  active:false, subMenu: [a,b]).save(flush: true)
					
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
