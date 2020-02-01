package home;

public class Printer2 {
	public void print(Bag bag) {
		System.out.println("입력한 id : " + bag.getId());
		System.out.println("입력한 pw : " + bag.getPw());
		System.out.println("입력한 name : " + bag.getName());
		System.out.println("입력한 tel : " + bag.getTel());
	}
	
	public void fax(Bag2 bag2) {
		System.out.println("입력한 사람이름 : " + bag2.getName());
		System.out.println("입력한 팩스번호 : " + bag2.getTel());
		System.out.println("입력한 팩스내용 : " + bag2.getContent());
	}
	
	public void copy() {
		System.out.println("복사하다");
	}
}
