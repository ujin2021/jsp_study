package home;

import javax.swing.JOptionPane;

public class Test3 {
	public static void main(String[] args) {
		//입력을 받아서, 다른곳에서 프린트
		String name = JOptionPane.showInputDialog("사람이름 입력 ");
		String tel = JOptionPane.showInputDialog("팩스 번호 입력 ");
		String content = JOptionPane.showInputDialog("팩스 내용 입력 ");
		
		Bag2 bag2 = new Bag2();
		bag2.setName(name);
		bag2.setTel(tel);
		bag2.setContent(content);
		
		Printer2 p = new Printer2();
		p.fax(bag2);
	}
}
