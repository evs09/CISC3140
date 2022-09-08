import java.util.*;
import java.time.LocalDate;
import java.time.Duration;

public class DueDateCalculator {
    public static void main(String[] args){
        
        LocalDate first = LocalDate.of(2022, 9, 28);
        LocalDate second = LocalDate.of(2022,10,26);
        LocalDate third = LocalDate.of(2022, 11, 23);
        LocalDate fourth = LocalDate.of(2022, 12, 7);
        
        LocalDate[] dueDates = new LocalDate[] {first, second, third, fourth};
        
        LocalDate today = java.time.LocalDate.now();
        
        //int daysLeft = (int)Duration.between(today.atStartOfDay(), first.atStartOfDay()).toDays();
        
        for(int i = 0; i < 4; i++){
            int daysLeft = (int)Duration.between(today.atStartOfDay(), dueDates[i].atStartOfDay()).toDays();
            
            System.out.println("Days left until lab " + i + " is due: " + daysLeft);
        }
        
    }

}
