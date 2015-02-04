package saviowebpage

class Quote {

	String text
	String author
	
    static constraints = {
    }
	
	
	public static List<Quote> getRandomList(int maxElements){
		
		
		return Quote.executeQuery('from Quote order by rand()', [max: 3])
	}
}
