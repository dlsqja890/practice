package sist.com;
public class gugu {

	public void gugu3(){
		
		int i =1 ;
		int sum=0 ;
		while(i<=10){
			sum+=i ;
			i++;
			for (int j = 1; j <= 9; j++) {
				if(i>=10){
					break;
				}
				System.out.print(i+" x "+j+" = "+i*j+"\t");
			}
			System.out.println();
		}
		System.out.println(sum);
		
	}
	
	public static void main(String[] args) {
		
		gugu c1 = new gugu();
		c1.gugu3();	
	}
}
