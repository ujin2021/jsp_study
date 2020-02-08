package shop;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MemberDAO {
	Connection con;
	
	public MemberDAO() { //������, new�� ��ü ���鶧 �ڵ����� ȣ��, 1,2�� ����Ǵ� �۾��̹Ƿ� �����ڷ� ����� ���´�.
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
	
	public void insert(MemberDTO dto) { //db.jsp copy
		try {
			//3. sql�� �ۼ�
			String sql = "insert into member values (?,?,?,?)";
			//�ش��ϴ� class�� ������� ������ ���α׷����� sql������ �𸥴�.
			//sql���� �ش��ϴ� class : PrepareStatement -> getConnection�Ҷ� Connection(java.sql) ������ �������ش�
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, dto.getId());
			ps.setString(2, dto.getPw());
			ps.setString(3, dto.getName());
			ps.setString(4, dto.getTel());
			System.out.println("3. sql�� ����� ok<br>");
			
			//4. sql�� db�� �����Ѵ�.
			ps.executeUpdate();
			System.out.println("4. sql�� db�� ���� ok");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void delete(MemberDTO dto) {
		try {
			//3. sql�� �ۼ�
			String sql = "delete from member where id = ?";
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
	
	public void update(MemberDTO dto) {
		try {
			//3. sql�� �ۼ�
			String sql = "update member set tel = ? where id = ?";
			//�ش��ϴ� class�� ������� ������ ���α׷����� sql������ �𸥴�.
			//sql���� �ش��ϴ� class : PrepareStatement -> getConnection�Ҷ� Connection(java.sql) ������ �������ش�
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, dto.getTel());
			ps.setString(2, dto.getId());
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
	public MemberDTO select(MemberDTO dto) {
		MemberDTO dto2 = null;
		//������ġ�� ������ ����� �� �ִ� ������.
		//select �޼ҵ� ���� �������� �� �� �ִ� ���� = ��������(local variable)
		//local variable �� �׻� �ʱ�ȭ������Ѵ�.(�����Ⱚ���⶧����)
		
		try {
			String sql = "select * from member where id = ?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, dto.getId());
			
			ResultSet rs = ps.executeQuery();
			
			if(rs.next()){
				dto2 = new MemberDTO(); //������� �������� dto�� ����ָ�ǹǷ� if�� �ȿ� �������ִ°� ����.
				String id = rs.getString(1);
				String pw = rs.getString(2);
				String name = rs.getString(3);
				String tel = rs.getString(4);
				dto2.setId(id);
				dto2.setPw(pw);
				dto2.setName(name);
				dto2.setTel(tel);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return dto2;
	}
	
	public boolean check(MemberDTO dto) {
		boolean result = false;
		
		try {
			String sql = "select * from member where id = ? and pw = ?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, dto.getId());
			ps.setString(2, dto.getPw());
			
			ResultSet rs = ps.executeQuery();
			
			if(rs.next()){
				result = true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	
	public ArrayList<MemberDTO> list() {
		ArrayList<MemberDTO> list = new ArrayList<MemberDTO>();
		//list�� ��� ���� �������.
		//�迭�� ���� �ʴ� ���� : �迭�� ����� �̸� ���س����Ѵ�.
		
		MemberDTO dto2 = null;
		//������ġ�� ������ ����� �� �ִ� ������.
		//select �޼ҵ� ���� �������� �� �� �ִ� ���� = ��������(local variable)
		//local variable �� �׻� �ʱ�ȭ������Ѵ�.(�����Ⱚ���⶧����)
		
		try {
			String sql = "select * from member";
			PreparedStatement ps = con.prepareStatement(sql);			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()){
				dto2 = new MemberDTO(); //������� �������� dto�� ����ָ�ǹǷ� if�� �ȿ� �������ִ°� ����.
				String id = rs.getString(1);
				String pw = rs.getString(2);
				String name = rs.getString(3);
				String tel = rs.getString(4);
				dto2.setId(id);
				dto2.setPw(pw);
				dto2.setName(name);
				dto2.setTel(tel);
				list.add(dto2);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
}
