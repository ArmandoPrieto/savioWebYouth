package saviowebpage
import general.demographic.Person
import general.demographic.Group
import org.jsoup.Jsoup


class Ministry extends Group{
	
	
	String name
	String description
	String subTitle
	String imageId
	boolean isPublished
	
	public Ministry(){
		
		this.setType("Ministry")
		this.setLeaders(null)
		this.setParticipants(null)
		this.setRoles(null)
		this.setIdentities(null)
		this.setContacts(null)
		this.setIsPublished(false)
		
		
		
	}
	
	static hasMany = [leaders: Person, participants: Person]
	

    static constraints = {
		//imageUrl(url: true)
		subTitle size: 1..200
		
    }
	static mapping = {
		description type: "text"
		//imageUrl type: "text"
		
	 }
	public StringBuffer cortarCadenaPorPuntos(String cadena, int maxSize) {
		cadena = Jsoup.parse(cadena).text();
		
		String [] arreglo =  cadena.split("\\.");
	   
		StringBuffer bufferAux = new StringBuffer("")
		
		for(int i = 0; i < arreglo.length; i++){
		   
			if(bufferAux.length() + arreglo[i].length() < maxSize){
				
			bufferAux.append(arreglo[i])
			bufferAux.append(".")
			}else{
				break
			}
	   }
	   return bufferAux
	   
	   }
	
}
