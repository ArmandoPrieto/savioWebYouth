package general.demographic
import com.security.Role
class Actor extends Party {
	
	
	static hasMany = [roles: Role]


    static constraints = {
    }
}
