package sist.com.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class TodayHollys {

	public void Hollys() {

		System.out.println("앞에 이쁜애랑 눈마주침ㅋㅋ" + "\n" + "오늘 느낌 좋구만");

	}

	public void SelectSort(int[] array) {
		int temp = 0;
		for (int i = 0; i < array.length-1; i++) {

			int jj=i+1;
			for (int j = jj; j < array.length; j++) {
				if(array[i]>array[j]){
					/*System.out.print(false+" ");*/
					temp=array[i];
					array[i]=array[j];					
					array[j]=temp;
				}
				/*System.out.println(i+" "+j);*/
			}
			/*						*/
			jj--;
		}
		for (int i = 0; i < array.length; i++) {
			
			System.out.println(array[i]+" ");
		}
	}

	public void mmmm(){
		
		String a="absd" ;
		String b="absd" ;   //
		String c=new String("absd");
		String d=new String("absd").intern();
		System.out.println(a==b);
		System.out.println(a==c);
		System.out.println(a==d);
		System.out.println(a.equals(b));
		System.out.println(a.equals(c));

		
	
	}
	
	
	
	@Override
	public boolean equals(Object obj) {
		// TODO Auto-generated method stub
		String a="abc" ;
		
		if(a.equals(obj)){
			return true ;
		}else{
			
			return false;
		}
		
	}
	public void arraytest(int [] ray){
		
		int ar[]=new int [ray.length];
		ar=ray;
		/*for (int i = 0; i < ar.length; i++) {
			System.out.print(ar[i]+" ");
		}*/
		
		HashMap<String,Object> map=new HashMap<String,Object >();
		map.put("array", ar);
		/*map.put("1", "프랑스");
		map.put("2", "프랑스2");
		map.put("3", "프랑스3");
		map.put("4", "프랑스4");*/
		//System.out.println(map.get("array"));
		//System.out.print(map.get("array"));
		List<HashMap<String, Object>> list= new ArrayList<HashMap<String,Object>>();
		
		list.add(map);
		int tr[]=(int [])list.get(0).get("array");
/*		for (int i : tr) {									
			
			System.out.println("tr"+"["+i+"]"+i);
		}
		for (int i = 0; i < tr.length; i++) {
			System.out.println("tr"+"["+i+"]"+tr[i]);
		}*/
		/*for (Map.Entry<String, Object> e  :map.entrySet() ) {
			System.out.println((int [])e.getValue()[0]);
		}*/
		
		
	/*	Iterator<String> it=map.keySet().iterator();
		int te[]=new int [5];
		te=(int[])map.get("array");*/
	
		
	/*	for (int i : te) {
			System.out.println(i);
		}*/
		/*while(it.hasNext()){
			String key=it.next();
			int ren[]=(int[])map.get("array");
			//System.out.println(key);
			
		System.out.println(key+" : "+ren);
			
		}*/
		
	/*	for (Map.Entry e : map.entrySet()) {
			System.out.println((String)e.getKey()+e.getValue());
			
		}*/
		
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub

		TodayHollys todayHollys = new TodayHollys();
		int ary[] = { 7, 2, 6, 32, 24 };
		//todayHollys.Hollys();
		//todayHollys.SelectSort(ary);
		//todayHollys.mmmm();
		//String a=new String("abc");
		//System.out.println(todayHollys.equals(a));
		todayHollys.arraytest(ary);
	}

}
