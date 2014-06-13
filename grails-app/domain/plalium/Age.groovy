package plalium

public enum Age {
	   INFANT("Infant"),
	   TODDLER("toddler"),
	   SCHOOL_KID("3-6"),
	   YOUNG_ADULT("6-12"),
	   TEEN("12-18"),
	   ADULT(">18")

	   final String value

	   Age(String value) { 
		   this.value = value 
	   }
	   

	   String toString() { value } 
	   String getKey() { name() }

}
