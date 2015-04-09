import java.text.SimpleDateFormat


class CountdownFilters {
	
		def filters = {
		   //applies filter to all the controllers
		   allFilter(controller: '*', action: '*') {
			   before = {
				   
				  
				   String dateStop = "04/10/2015 19:00:00";
			   //	String dateStart = "04/10/2015 19:00:00";
				   
				   //HH converts hour in 24 hours format (0-23), day calculation
				   SimpleDateFormat format = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss");
				   Date d1 = new Date();
				   Date d2 = null;
				   d2 = format.parse(dateStop);
				   
			   //d2 = format.parse(dateStart);
				   //in milliseconds
				   long diff = d2.getTime() - d1.getTime();
				   
				   if(diff > 0){
				   
				   
				   render(view: 'countdown')
				   return false
				   }else{
				   return true
				   }
			 
			   }
		   }

		}
		
}
