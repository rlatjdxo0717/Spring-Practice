package com.mega.project;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class BoardService {

	@Autowired
	SqlSessionTemplate my;
	
	public void quickSort2(int[] a, int n) {
		quickSort(a, 0, n-1);
	}
	
	public void quickSort(int[] a, int left, int right) {
		
		// 퀵정렬 함수. ( 내림차순으로 )
		// a는 자료를 담을 배열, left 는 맨 왼쪽 인덱스(0)
		// right는 맨 오른쪽 인덱스(배열 길이-1)
		int pl = left; 
		int pr = right;
		// pl과 pr은 인덱스 값임! 요솟값이 아님을 명심!
		int p = a[(pl + pr)/2];
		//피벗(중앙요소 지정) 값
		
		while (a[pl] > p) {
			// a[pl]은 기준이 되는 피벗p 보다 작은 값이 나타날때까지 ++
		pl++; }
		while (a[pr] < p) {
			// a[pr]은 기준이 되는 피벗p 보다 큰 값이 나타날때가지 --
		pr--; }
		
		if (pl <= pr)
			// 조건의 의미, pl이 pr보다 왼쪽에 있거나 같은 위치면!
			swap(a, pl++, pr--);
			// 둘의 위치를 바꿔줘라!	
			
		while (pl <= pr) {
			while (a[pl] > p)
				pl++;
			while (a[pr] < p)
				pr--;
			if (pl <= pr)
				swap(a, pl++, pr--);
			// 계속 진행(재귀호출)
		}
		
		if (left < pr) 
			quickSort(a, left, pr);
		if (pl < right) 
			quickSort(a, pl, right);
		
	} //정렬함수
	
	public void swap(int[] a, int idx1, int idx2) {
		int t = a[idx1];
		a[idx1] = a[idx2];
		a[idx2] = t;
	} // 교환을 위한 함수
	
	public List<BoardVO> quick2(int[] qArray, List<BoardVO> list) {
		System.out.println("서비스로 접속");
		System.out.println(qArray[0]);
		System.out.println(list.get(0).getBviews());
		List<BoardVO> list2 = new ArrayList<BoardVO>();
		
		System.out.println("여기까지 못오는건가?");
		
		for (int i = 0; i < qArray.length; i++) {
			for (int j = 0; j < list.size(); j++) {
				if ( Integer.parseInt(list.get(j).getBviews()) == qArray[i] ) {
					System.out.println("중복값 확인됨");
					list2.add(list.get(j));
				}
			}
		}
			System.out.println(list2.get(0).getBviews());
			System.out.println(list2.get(0).getBid());
			System.out.println(list2.get(1).getBviews());
			System.out.println(list2.get(1).getBid());
			System.out.println(list2.get(2).getBviews());
			System.out.println(list2.get(2).getBid());
		
		return list2;
	} 
	
}
