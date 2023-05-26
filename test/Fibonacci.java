/**
 *   @author josuerom
 *   @param  13/abril/2022 - 13:55 COL
**/
import java.util.Arrays;

public class Fibonacci {
	public static void main(String[] args) {
		int acc[] = new int[20];
		acc[0] = 0; acc[1] = 1;
		for (int i = 2; i <= 19; i++) {
			acc[i] = (acc[i-2] + acc[i-1]);
		}
		System.out.println(Arrays.toString(acc));
	}
}