package home;

import javax.swing.JOptionPane;

public class Test2 {
	public static void main(String[] args) {
		//입력을 받아서, 다른곳에서 프린트
		String id = JOptionPane.showInputDialog("id 입력 ");
		String pw = JOptionPane.showInputDialog("pw 입력 ");
		String name = JOptionPane.showInputDialog("name 입력 ");
		String tel = JOptionPane.showInputDialog("tel 입력 ");
		
		Bag bag = new Bag();
		bag.setId(id);
		bag.setPw(pw);
		bag.setName(name);
		bag.setTel(tel);
		
		Printer2 p = new Printer2();
		p.print(bag);
	}
}
