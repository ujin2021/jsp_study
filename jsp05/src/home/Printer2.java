package home;

public class Printer2 {
	public void print(Bag bag) {
		System.out.println("�Է��� id : " + bag.getId());
		System.out.println("�Է��� pw : " + bag.getPw());
		System.out.println("�Է��� name : " + bag.getName());
		System.out.println("�Է��� tel : " + bag.getTel());
	}
	
	public void fax(Bag2 bag2) {
		System.out.println("�Է��� ����̸� : " + bag2.getName());
		System.out.println("�Է��� �ѽ���ȣ : " + bag2.getTel());
		System.out.println("�Է��� �ѽ����� : " + bag2.getContent());
	}
	
	public void copy() {
		System.out.println("�����ϴ�");
	}
}
