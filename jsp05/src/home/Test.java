package home;

import javax.swing.JOptionPane;

public class Test {
	public static void main(String[] args) {
		//입력을 받아서, 다른곳에서 프린트
		String id = JOptionPane.showInputDialog("id 입력 ");
		String pw = JOptionPane.showInputDialog("pw 입력 ");
		String name = JOptionPane.showInputDialog("name 입력 ");
		String tel = JOptionPane.showInputDialog("tel 입력 ");
		
		Printer p = new Printer();
		p.print(id, pw, name, tel);
	}
}
