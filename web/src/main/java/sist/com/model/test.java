package sist.com.model;

import static org.hamcrest.CoreMatchers.instanceOf;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;

import net.sf.cglib.proxy.Factory;

public class test {

	public void solution(int[] arr, int divisor) {
		ArrayList<Integer> list=new ArrayList<Integer>();
		int j = 0;
		int jj = 0;
		for (int i = 0; i < arr.length; i++) {
			if (arr[i] % divisor == 0) {
				list.add(arr[i]);
				j++;
			} 
		}
		
		Collections.sort(list);
		for (int i = 0; i < list.size(); i++) {
			System.out.print(list.get(i)+" ");
		}
		int [] te=new int[list.size()];
		for (int i : list) {
			te[jj++]=i;
		}
		
		for (int i = 0; i < te.length; i++) {
			System.out.print(te[i]+" ");
		}
		System.out.println();
	/*	if (j==0) { 
			j=1 ;
			int[] answer = new int[1];	
			answer[j] = -1 ;
			//return answer;
		}*/
	//	int[] answer = new int[j];
		//answer[j] = -1 ;
/*		for (int i : arr) {
			if (i % divisor == 0) {
				answer[jj] = i;
				jj++;
			} else {

			}
			;
		}
		answer = sort1(answer);
		for (int i = 0; i < answer.length; i++) {
			System.out.print(answer[i]+" ");
		}*/
		
		
		
	}

	public int[] sort1(int[] answer) {
		int[] imsi = answer;
		int temp = 0;

		for (int i = 0; i < imsi.length - 1; i++) {
			for (int j = i+1; j < imsi.length; j++) {
				
				if (imsi[i] > imsi[j]) {
					temp = imsi[i];
					imsi[i] = imsi[j];
					imsi[j] = temp;
				}
			}
		}
		

		return imsi;

	}
	public void arraytest(int[] aray,int divi){
		
		ArrayList<Integer> list=new ArrayList<Integer>();
		
		for (int i : aray) {
			if(i%divi==0){ list.add(i); }
		}
		if(list.size()==0){ list.add(-1); }
		
		Collections.sort(list);
		//int [] ray=list.toArray(new int[5]);
		int []ray=new int[list.size()];  // 정렬된 Arraylist를 다시 배열에 담기
		int count=0;
		for (int i: list) {
			ray[count++]=i;
			
		}
		System.out.print("ray 배열의 값은 다음과 같다 = ");
		for (int i : ray) {
			System.out.print("["+i+"]"+" ");
		}
	}
	public static void main(String[] args) {
		test test1 = new test();
		int[] ii = { 5, 36, 75, 61,90,101 };
		int jj = 2;
		//test1.solution(ii, jj);
		test1.arraytest(ii,jj);
		/*
		 * String s="1"; if(s instanceof String){ int ss=Integer.parseInt(s);
		 * 
		 * }else { System.out.println(s+"의 타입은 int"); }
		 */
	}
}
