package home;

import javax.swing.JOptionPane;

public class Test2 {
	public static void main(String[] args) {
		//�Է��� �޾Ƽ�, �ٸ������� ����Ʈ
		String id = JOptionPane.showInputDialog("id �Է� ");
		String pw = JOptionPane.showInputDialog("pw �Է� ");
		String name = JOptionPane.showInputDialog("name �Է� ");
		String tel = JOptionPane.showInputDialog("tel �Է� ");
		
		Bag bag = new Bag();
		bag.setId(id);
		bag.setPw(pw);
		bag.setName(name);
		bag.setTel(tel);
		
		Printer2 p = new Printer2();
		p.print(bag);
	}
}
