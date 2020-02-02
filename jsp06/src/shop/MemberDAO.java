package shop;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MemberDAO {
	Connection con;
	
	public MemberDAO() { //생성자, new로 객체 만들때 자동으로 호출, 1,2는 공통되는 작업이므로 생성자로 만들어 놓는다.
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
	
	public void insert(MemberDTO dto) { //db.jsp copy
		try {
			//3. sql문 작성
			String sql = "insert into member values (?,?,?,?)";
			//해당하는 class를 사용하지 않으면 프로그램언어는 sql문인지 모른다.
			//sql문에 해당하는 class : PrepareStatement -> getConnection할때 Connection(java.sql) 변수로 저장해준다
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, dto.getId());
			ps.setString(2, dto.getPw());
			ps.setString(3, dto.getName());
			ps.setString(4, dto.getTel());
			System.out.println("3. sql문 만들기 ok<br>");
			
			//4. sql을 db로 전송한다.
			ps.executeUpdate();
			System.out.println("4. sql문 db로 전송 ok");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void delete(MemberDTO dto) {
		try {
			//3. sql문 작성
			String sql = "delete from member where id = ?";
			//해당하는 class를 사용하지 않으면 프로그램언어는 sql문인지 모른다.
			//sql문에 해당하는 class : PrepareStatement -> getConnection할때 Connection(java.sql) 변수로 저장해준다
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, dto.getId());
			System.out.println("3. sql문 만들기 ok<br>");
			
			//4. sql을 db로 전송한다.
			ps.executeUpdate();
			System.out.println("4. sql문 db로 전송 ok");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void update(MemberDTO dto) {
		try {
			//3. sql문 작성
			String sql = "update member set tel = ? where id = ?";
			//해당하는 class를 사용하지 않으면 프로그램언어는 sql문인지 모른다.
			//sql문에 해당하는 class : PrepareStatement -> getConnection할때 Connection(java.sql) 변수로 저장해준다
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, dto.getTel());
			ps.setString(2, dto.getId());
			System.out.println("3. sql문 만들기 ok<br>");
			
			//4. sql을 db로 전송한다.
			ps.executeUpdate();
			System.out.println("4. sql문 db로 전송 ok");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//db5.jsp에 검색결과를 넘겨줘야하기때문에 return값이 void면 안된다.
	public MemberDTO select(MemberDTO dto) {
		MemberDTO dto2 = null;
		//선언위치가 변수를 사용할 수 있는 범위다.
		//select 메소드 지역 내에서만 쓸 수 있는 변수 = 지역변수(local variable)
		//local variable 은 항상 초기화해줘야한다.(쓰레기값들어가기때문에)
		
		try {
			String sql = "select * from member where id = ?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, dto.getId());
			
			ResultSet rs = ps.executeQuery();
			
			if(rs.next()){
				dto2 = new MemberDTO(); //결과값이 있을때만 dto에 담아주면되므로 if문 안에 선언해주는게 낫다.
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
		//list에 몇개가 들어갈지 상관없음.
		//배열을 쓰지 않는 이유 : 배열은 사이즈를 미리 정해놔야한다.
		
		MemberDTO dto2 = null;
		//선언위치가 변수를 사용할 수 있는 범위다.
		//select 메소드 지역 내에서만 쓸 수 있는 변수 = 지역변수(local variable)
		//local variable 은 항상 초기화해줘야한다.(쓰레기값들어가기때문에)
		
		try {
			String sql = "select * from member";
			PreparedStatement ps = con.prepareStatement(sql);			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()){
				dto2 = new MemberDTO(); //결과값이 있을때만 dto에 담아주면되므로 if문 안에 선언해주는게 낫다.
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
