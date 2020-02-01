package home;

public class Printer {
	public void print(String id, String pw, String name, String tel) {
		System.out.println("입력한 id : " + id);
		System.out.println("입력한 pw : " + pw);
		System.out.println("입력한 name : " + name);
		System.out.println("입력한 tel : " + tel);
	}
	
	public void fax() {
		System.out.println("팩스를 보내다");
	}
	
	public void copy() {
		System.out.println("복사하다");
	}
}
