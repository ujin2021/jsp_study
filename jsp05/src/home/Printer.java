package home;

public class Printer {
	public void print(String id, String pw, String name, String tel) {
		System.out.println("�Է��� id : " + id);
		System.out.println("�Է��� pw : " + pw);
		System.out.println("�Է��� name : " + name);
		System.out.println("�Է��� tel : " + tel);
	}
	
	public void fax() {
		System.out.println("�ѽ��� ������");
	}
	
	public void copy() {
		System.out.println("�����ϴ�");
	}
}
