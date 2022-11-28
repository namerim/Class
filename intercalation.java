package Month;

import java.util.Scanner;

public class yundal {

   public static void main(String[] args) {

      Scanner scanner = new Scanner(System.in);
      System.out.print("정수를 입력해주세요:");
      int year = scanner.nextInt();

      boolean yy = false;

      if (year % 4 == 0) {

         if (year % 100 == 0) {

            if (year % 400 == 0)
               yy = true;
            else
               yy = false;
         } else
            yy = true;
      } else
         yy = false;

      if (yy)
         System.out.println(year + "년은 윤년이 맞습니다.");
      else
         System.out.println(year + "년은 윤년이 아닙니다.");
   }

}
