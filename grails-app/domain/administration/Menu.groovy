package administration

class Menu {

	String title
	String url
	boolean active
	List subMenu
	
	static hasMany = [subMenu: Menu]
    static constraints = {
		url blank: true, nullable: true
    }
	static mapping = {
		sort 'id':'asc'
		
		}
}
