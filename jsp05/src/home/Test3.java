package home;

import javax.swing.JOptionPane;

public class Test3 {
	public static void main(String[] args) {
		//�Է��� �޾Ƽ�, �ٸ������� ����Ʈ
		String name = JOptionPane.showInputDialog("����̸� �Է� ");
		String tel = JOptionPane.showInputDialog("�ѽ� ��ȣ �Է� ");
		String content = JOptionPane.showInputDialog("�ѽ� ���� �Է� ");
		
		Bag2 bag2 = new Bag2();
		bag2.setName(name);
		bag2.setTel(tel);
		bag2.setContent(content);
		
		Printer2 p = new Printer2();
		p.fax(bag2);
	}
}
