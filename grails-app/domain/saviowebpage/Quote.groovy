package saviowebpage

class Quote {

	String text
	String author
	
    static constraints = {
    }
	
	
	public static List<Quote> getRandomList(int maxElements){
		
		List<Quote> list = new ArrayList();
		int count = Quote.count() 
		println (count)
		Random randomizer = new Random();
		for(int i =0;i<maxElements;i++){
			int j = randomizer.nextInt(count)
			println (j +' '+count)
			Quote random = Quote.get(j+1);
			list.add(random)
		}
		
		return list
	}
}
