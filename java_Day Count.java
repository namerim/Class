package dys;

import java.util.Scanner;

public class ye {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Scanner scanner = new Scanner(System.in);

		System.out.println("월을 입력해주세요.");

		int month = scanner.nextInt();

		switch (month) {
		case 1:
		case 3:
		case 5:
		case 7:
		case 8:
		case 10:
		case 12:
			System.out.println(month + "월은 31일 입니다.");
			break;
		case 2:
			System.out.println(month + "월은 28일 입니다.");
			break;
		case 4:
		case 6:
		case 9:
		case 11:
			System.out.println(month + "월은 30일 입니다.");
			break;

		default:
			System.out.println("입력 월이 정확하지 않습니다.");
		}
	}

}
