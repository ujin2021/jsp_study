package shop;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class BbsDAO {
	Connection con;
	
	public BbsDAO() { //������, new�� ��ü ���鶧 �ڵ����� ȣ��, 1,2�� ����Ǵ� �۾��̹Ƿ� �����ڷ� ����� ���´�.
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
	
	public void insert(BbsDTO dto) { //db.jsp copy
		try {
			//3. sql�� �ۼ�
			String sql = "insert into bbs(title, content, writer) values (?,?,?)";
			//�ش��ϴ� class�� ������� ������ ���α׷����� sql������ �𸥴�.
			//sql���� �ش��ϴ� class : PrepareStatement -> getConnection�Ҷ� Connection(java.sql) ������ �������ش�
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, dto.getTitle());
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
	
	public void delete(BbsDTO dto) {
		try {
			//3. sql�� �ۼ�
			String sql = "delete from bbs where id = ?";
			//�ش��ϴ� class�� ������� ������ ���α׷����� sql������ �𸥴�.
			//sql���� �ش��ϴ� class : PrepareStatement -> getConnection�Ҷ� Connection(java.sql) ������ �������ش�
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, dto.getId());
			System.out.println("3. sql�� ����� ok<br>");
			
			//4. sql�� db�� �����Ѵ�.
			ps.executeUpdate();
			System.out.println("4. sql�� db�� ���� ok");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void update(BbsDTO dto) {
		try {
			//3. sql�� �ۼ�
			String sql = "update bbs set title = ?, content = ? where id = ?";
			//�ش��ϴ� class�� ������� ������ ���α׷����� sql������ �𸥴�.
			//sql���� �ش��ϴ� class : PrepareStatement -> getConnection�Ҷ� Connection(java.sql) ������ �������ش�
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, dto.getTitle());
			ps.setString(2, dto.getContent());
			ps.setString(3, dto.getId());
			System.out.println("3. sql�� ����� ok<br>");
			
			//4. sql�� db�� �����Ѵ�.
			ps.executeUpdate();
			System.out.println("4. sql�� db�� ���� ok");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//db5.jsp�� �˻������ �Ѱ�����ϱ⶧���� return���� void�� �ȵȴ�.
	public BbsDTO select(BbsDTO dto) {
		BbsDTO dto2 = null;
		//������ġ�� ������ ����� �� �ִ� ������.
		//select �޼ҵ� ���� �������� �� �� �ִ� ���� = ��������(local variable)
		//local variable �� �׻� �ʱ�ȭ������Ѵ�.(�����Ⱚ���⶧����)
		
		try {
			String sql = "select * from bbs where id = ?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, dto.getId());
			
			ResultSet rs = ps.executeQuery();
			
			if(rs.next()){
				dto2 = new BbsDTO(); //������� �������� dto�� ����ָ�ǹǷ� if�� �ȿ� �������ִ°� ����.
				String id = rs.getString(1);
				String title = rs.getString(2);
				String content = rs.getString(3);
				String writer = rs.getString(4);
				dto2.setId(id);
				dto2.setTitle(title);
				dto2.setContent(content);
				dto2.setWriter(writer);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return dto2;
	}
	
	public ArrayList<BbsDTO> list() {
		ArrayList<BbsDTO> list = new ArrayList<BbsDTO>();
		//list�� ��� ���� �������.
		//�迭�� ���� �ʴ� ���� : �迭�� ����� �̸� ���س����Ѵ�.
		
		BbsDTO dto2 = null;
		//������ġ�� ������ ����� �� �ִ� ������.
		//select �޼ҵ� ���� �������� �� �� �ִ� ���� = ��������(local variable)
		//local variable �� �׻� �ʱ�ȭ������Ѵ�.(�����Ⱚ���⶧����)
		
		try {
			String sql = "select * from bbs order by id desc";//�ֱٱ��� �������־�� �ϹǷ� ���ǳ־��ش�
			PreparedStatement ps = con.prepareStatement(sql);			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()){
				dto2 = new BbsDTO(); //������� �������� dto�� ����ָ�ǹǷ� if�� �ȿ� �������ִ°� ����.
				String id = rs.getString(1);
				String title = rs.getString(2);
				String content = rs.getString(3);
				String writer = rs.getString(4);
				dto2.setId(id);
				dto2.setTitle(title);
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
