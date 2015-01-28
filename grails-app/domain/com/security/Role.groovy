package com.security
import general.demographic.Capability

class Role {

	String authority
	
	//static hasMany = [capabilities: Capability]
	static mapping = {
		cache true
	}

	static constraints = {
		authority blank: false, unique: true
	}
	
}
