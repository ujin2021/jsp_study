package home;

import javax.swing.JOptionPane;

public class Test {
	public static void main(String[] args) {
		//�Է��� �޾Ƽ�, �ٸ������� ����Ʈ
		String id = JOptionPane.showInputDialog("id �Է� ");
		String pw = JOptionPane.showInputDialog("pw �Է� ");
		String name = JOptionPane.showInputDialog("name �Է� ");
		String tel = JOptionPane.showInputDialog("tel �Է� ");
		
		Printer p = new Printer();
		p.print(id, pw, name, tel);
	}
}
