package day05;
// 질문. 자식클래스가 부모클래스의 메서드를 오버라이딩하고
// 자식클래스로 생성된 객체가 Up-casting되어서 부모클래스의 참조변수로
// 참조되고 있을 때, 오버라이딩 메서드를 호출하면 [부모/자식] 어떤 메서드가 호출되는가
// (19년도 정보처리기사 1회 기출문제)

class Super{
	public void Func() {
		System.out.println("Super");
	}
}

class Sub extends Super{
	@Override
	public void Func() {
		System.out.println("Sub");
	}
	
	public void Func2() {
		System.out.println("Func2");
	}
}

public class Ex01_Overriding {
	public static void main(String[] args) {
		Super ob1 = new Sub();	// 부모클래스로 참조하는 자식 객체
		ob1.Func();	// up-casting 되어도 오버라이딩 메서드는 자식 클래스 내용을 따라간다.
		
		Super ob2 = new Super();
		ob2.Func();
		
		Super [] arr= { ob1, ob2 };
		
		System.out.println();
		System.out.println("배열에 담아서 실행");
		for (int i = 0; i < arr.length; i++) {
			arr[i].Func();
		}
		
		System.out.printf("%s\n", "문자열");
		
		String str = String.format("%s입니다.", "문자열2");
		System.out.println(str);
		
		
		
		
		
		
		
		
		
		
		
	}
}
