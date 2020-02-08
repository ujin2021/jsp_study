package shop;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ProductDAO {
	Connection con;
	
	public ProductDAO() { //������, new�� ��ü ���鶧 �ڵ����� ȣ��, 1,2�� ����Ǵ� �۾��̹Ƿ� �����ڷ� ����� ���´�.
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
	
	//�˻������ �Ѱ�����ϱ⶧���� return���� void�� �ȵȴ�.
	public ProductDTO select(ProductDTO dto) {
		ProductDTO dto2 = null;
		//������ġ�� ������ ����� �� �ִ� ������.
		//select �޼ҵ� ���� �������� �� �� �ִ� ���� = ��������(local variable)
		//local variable �� �׻� �ʱ�ȭ������Ѵ�.(�����Ⱚ���⶧����)
		
		try {
			String sql = "select * from product where id = ?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, dto.getId());
			
			ResultSet rs = ps.executeQuery();
			
			if(rs.next()){
				dto2 = new ProductDTO(); //������� �������� dto�� ����ָ�ǹǷ� if�� �ȿ� �������ִ°� ����.
				String id = rs.getString(1);
				String name = rs.getString(2);
				String content = rs.getString(3);
				String price = rs.getString(4);
				String company = rs.getString(5);
				String img = rs.getString(6);
				
				dto2.setId(id);
				dto2.setName(name);
				dto2.setContent(content);
				dto2.setPrice(price);
				dto2.setCompany(company);
				dto2.setImg(img);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return dto2;
	}
	
	public ArrayList<ProductDTO> list() {
		ArrayList<ProductDTO> list = new ArrayList<ProductDTO>();
		//list�� ��� ���� �������.
		//�迭�� ���� �ʴ� ���� : �迭�� ����� �̸� ���س����Ѵ�.
		
		ProductDTO dto2 = null;
		//������ġ�� ������ ����� �� �ִ� ������.
		//select �޼ҵ� ���� �������� �� �� �ִ� ���� = ��������(local variable)
		//local variable �� �׻� �ʱ�ȭ������Ѵ�.(�����Ⱚ���⶧����)
		
		try {
			String sql = "select * from product";
			PreparedStatement ps = con.prepareStatement(sql);			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()){
				dto2 = new ProductDTO(); //������� �������� dto�� ����ָ�ǹǷ� if�� �ȿ� �������ִ°� ����.
				String id = rs.getString(1);
				String name = rs.getString(2);
				String content = rs.getString(3);
				String price = rs.getString(4);
				String company = rs.getString(5);
				String img = rs.getString(6);
				
				dto2.setId(id);
				dto2.setName(name);
				dto2.setContent(content);
				dto2.setPrice(price);
				dto2.setCompany(company);
				dto2.setImg(img);
				list.add(dto2);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
}
