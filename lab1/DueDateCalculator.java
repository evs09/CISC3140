import java.util.*;
import java.time.LocalDate;
import java.time.Duration;
import java.time.format.DateTimeFormatter;

public class DueDateCalculator {
    public static void main(String[] args){
        getUserInput();
        
    }
    
    public static void getUserInput(){
        LocalDate today = java.time.LocalDate.now();
        LocalDate l1 = LocalDate.of(2022, 9, 28);
        LocalDate l2 = LocalDate.of(2022,10,26);
        LocalDate l3 = LocalDate.of(2022, 11, 23);
        LocalDate l4 = LocalDate.of(2022, 12, 7);
        
        //Making arrays to store dates and titles, to be able to iterate and print each 
        String[] dateTitles = new String[] {"Today: ", "Lab 1: ", "Lab 2: ", "Lab 3: ", "Lab 4: "};
        LocalDate[] dueDates = new LocalDate[] {today, l1, l2, l3, l4};
        
        Scanner input = new Scanner(System.in);
        System.out.println("Please select two from the following, or enter two dates (MM/DD/YYYY or MM-DD): ");
        
        for(int i = 0; i < dueDates.length; i++){
            System.out.println( "[" + i + "] " + dateTitles[i] + dueDates[i]);
        }
        
        String a = input.next();
        String b = input.next();
        
        if(a.length() <= 2){
            int d1 = Integer.parseInt(a);
            int d2 = Integer.parseInt(b);
            
            getDaysLeft(dueDates[d1], dueDates[d2]);
        }
        else{
            getDaysLeft(a, b);
        }
    }
    
    public static void getDaysLeft(LocalDate one, LocalDate two) {
        int d = (int)Duration.between(one.atStartOfDay(), two.atStartOfDay()).toDays();
        String daysLeft = Integer.toString(d);
        
        System.out.println("There are " + daysLeft + " days between those two dates."); 
    }
    
    //Overloaded Method to take strings (custom input)
    public static void getDaysLeft(String date1, String date2){
        
        if(date1.length() == 10 && date1.charAt(2) == '/' && date1.charAt(5) == '/' 
                && date2.charAt(2) == '/' && date2.charAt(5) == '/' && date2.length() == 10){
            DateTimeFormatter form = DateTimeFormatter.ofPattern("MM/dd/yyyy");

            LocalDate one = LocalDate.parse(date1, form);
            LocalDate two = LocalDate.parse(date2, form);
            
            getDaysLeft(one, two);
        
        }
        
        else if( date1.length() == 5 && date1.charAt(2) == '-'  && date2.charAt(2) == '-' && date2.length() == 5){
            
            String d1 = date1.concat("-2022");
            String d2 = date2.concat("-2022");
            
            DateTimeFormatter form = DateTimeFormatter.ofPattern("MM-dd-yyyy");

            LocalDate one = LocalDate.parse(d1, form);
            LocalDate two = LocalDate.parse(d2, form);
            
            if(one.isBefore(java.time.LocalDate.now())) one = one.withYear(2023);
            if(two.isBefore(java.time.LocalDate.now())) two = two.withYear(2023);            
            
            getDaysLeft(one, two);
        }
        
        else {
            String e = "Invalid input format";
            System.err.println(e);
            
            getUserInput();
        }
        
    }

}
