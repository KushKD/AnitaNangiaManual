package Helpers;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

public class HelperClass {
	
	
	

   
   public static String GetDateToday(){
	   String date = java.text.DateFormat.getDateTimeInstance().format(Calendar.getInstance().getTime());
	   System.out.println("Todays Date====>" + date);
	   return date;
   }
   
   public static String GetMonthToday(){
	   
	   int month;
       GregorianCalendar date = new GregorianCalendar();      
       month = date.get(Calendar.MONTH);
       month = month+1;
       System.out.println("Current month is  " + month);
       
       if(month == 1)  return "January";
       else if(month == 2)  return "February";
       else if(month == 3)  return "March";
       else if(month == 4)  return "April";
       else if(month == 5)  return "May";
       else if(month == 6)  return "June";
       else if(month == 7)  return "July";
       else if(month == 8)  return "August";
       else if(month == 9)  return "September";
       else if(month == 10)  return "October";
       else if(month == 11)  return "November";
       else if(month == 12)  return "December";
       else return "NO MONTH";
	   
	  
   }
   
   public static String GetYearToday(){
	   Calendar now = Calendar.getInstance();
	   int year = now.get(Calendar.YEAR);
	   String yearInString = String.valueOf(year);
	   System.out.println("Year is ======>"+ yearInString);
	   return yearInString;
   }

}
