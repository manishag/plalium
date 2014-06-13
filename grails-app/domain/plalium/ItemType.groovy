package plalium

public enum ItemType {
	APPS("Apps"),
	TOYS("Toys"),
	EDUCATIONAL_TOYS("EducationalToys"),
	EDUCATIONAL_BOOKS("EducationalBooks"),
	FICTIONAL_BOOKS("FictionalBooks"),
	NON_FICTIONAL_BOOKS("NonFictionalBooks")
	
	final String value

	ItemType(String value) {
		this.value = value
	}
	

	String toString() { value }
	String getKey() { name() }

}
