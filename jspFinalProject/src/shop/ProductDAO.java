package shop;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ProductDAO {
	Connection con;
	
	public ProductDAO() { //생성자, new로 객체 만들때 자동으로 호출, 1,2는 공통되는 작업이므로 생성자로 만들어 놓는다.
		try {
			//1.다운로드 받았던 connector설정
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("1. connector 설정 ok<br>");
			
			//2. 인증받은 사용자 계정을 이용해서 연결
			String url = "jdbc:mysql://localhost:3306/jsp1";
			String user = "root";
			String password = "1234";
			con = DriverManager.getConnection(url, user, password);
			System.out.println("2. db 연결 ok<br>");
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//검색결과를 넘겨줘야하기때문에 return값이 void면 안된다.
	public ProductDTO select(ProductDTO dto) {
		ProductDTO dto2 = null;
		//선언위치가 변수를 사용할 수 있는 범위다.
		//select 메소드 지역 내에서만 쓸 수 있는 변수 = 지역변수(local variable)
		//local variable 은 항상 초기화해줘야한다.(쓰레기값들어가기때문에)
		
		try {
			String sql = "select * from product where id = ?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, dto.getId());
			
			ResultSet rs = ps.executeQuery();
			
			if(rs.next()){
				dto2 = new ProductDTO(); //결과값이 있을때만 dto에 담아주면되므로 if문 안에 선언해주는게 낫다.
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
		//list에 몇개가 들어갈지 상관없음.
		//배열을 쓰지 않는 이유 : 배열은 사이즈를 미리 정해놔야한다.
		
		ProductDTO dto2 = null;
		//선언위치가 변수를 사용할 수 있는 범위다.
		//select 메소드 지역 내에서만 쓸 수 있는 변수 = 지역변수(local variable)
		//local variable 은 항상 초기화해줘야한다.(쓰레기값들어가기때문에)
		
		try {
			String sql = "select * from product";
			PreparedStatement ps = con.prepareStatement(sql);			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()){
				dto2 = new ProductDTO(); //결과값이 있을때만 dto에 담아주면되므로 if문 안에 선언해주는게 낫다.
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
