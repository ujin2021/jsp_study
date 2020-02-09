package shop;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ReplyDAO {
	Connection con;
	
	public ReplyDAO() { //������, new�� ��ü ���鶧 �ڵ����� ȣ��, 1,2�� ����Ǵ� �۾��̹Ƿ� �����ڷ� ����� ���´�.
		try {
			//1.�ٿ�ε� �޾Ҵ� connector����
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("1. connector ���� ok<br>");
			
			//2. �������� ����� ������ �̿��ؼ� ����
			String url = "jdbc:mysql://localhost:3306/jsp1";
			String user = "root";
			String password = "1234";
			con = DriverManager.getConnection(url, user, password);
			System.out.println("2. db ���� ok<br>");
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void insert(ReplyDTO dto) { //db.jsp copy
		try {
			//3. sql�� �ۼ�
			String sql = "insert into reply(bbsid, content, writer) values (?,?,?)";
			//�ش��ϴ� class�� ������� ������ ���α׷����� sql������ �𸥴�.
			//sql���� �ش��ϴ� class : PrepareStatement -> getConnection�Ҷ� Connection(java.sql) ������ �������ش�
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, dto.getBbsid());
			ps.setString(2, dto.getContent());
			ps.setString(3, dto.getWriter());
			System.out.println("3. sql�� ����� ok<br>");
			
			//4. sql�� db�� �����Ѵ�.
			ps.executeUpdate();
			System.out.println("4. sql�� db�� ���� ok");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}


	public ArrayList<ReplyDTO> list(BbsDTO dto) {
		ArrayList<ReplyDTO> list = new ArrayList<ReplyDTO>();
		//list�� ��� ���� �������.
		//�迭�� ���� �ʴ� ���� : �迭�� ����� �̸� ���س����Ѵ�.
		
		ReplyDTO dto2 = null;
		//������ġ�� ������ ����� �� �ִ� ������.
		//select �޼ҵ� ���� �������� �� �� �ִ� ���� = ��������(local variable)
		//local variable �� �׻� �ʱ�ȭ������Ѵ�.(�����Ⱚ���⶧����)
		
		try {
			String sql = "select * from reply where bbsid = ?";//�ֱٱ��� �������־�� �ϹǷ� ���ǳ־��ش�
			PreparedStatement ps = con.prepareStatement(sql);	
			ps.setString(1, dto.getId());
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()){
				dto2 = new ReplyDTO(); //������� �������� dto�� ����ָ�ǹǷ� if�� �ȿ� �������ִ°� ����.
				String id = rs.getString(1);
				String bbsid = rs.getString(2);
				String content = rs.getString(3);
				String writer = rs.getString(4);
				dto2.setId(id);
				dto2.setBbsid(bbsid);
				dto2.setContent(content);;
				dto2.setWriter(writer);
				list.add(dto2);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
}
