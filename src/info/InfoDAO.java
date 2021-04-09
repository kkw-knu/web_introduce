package info;

import java.sql.*;
import java.util.ArrayList;

public class InfoDAO {
	
	private Connection con;
	private ResultSet res;
	
	//데이터베이스 연결부분
	public InfoDAO() {
		try {
			String driver = "oracle.jdbc.driver.OracleDriver";
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String id = "scott";
			String pw = "1234";
			Class.forName(driver);
			con = DriverManager.getConnection(url, id, pw);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	//preparedStatment를 안에설정한이유는 여러개의 함수를 쓰기때문에 겹쳐서 오류가 생길까봐 이다.
	public String getDate() {//서버의 현재시간을 받아오는 것
		String sql = "select sysdate from dual";
		try {
			PreparedStatement pstmt = con.prepareStatement(sql); 
			res = pstmt.executeQuery();
			if(res.next()) {
				return res.getString(1); // 날짜를 받음
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return ""; //데이터베이스 오류시 반환
	}
	
	public int getNext() {//게시글 번호
		String sql = "SELECT infoID from info order by infoID desc"; //가장 마지막의 번호 를 출력하기 위함
		try {
			PreparedStatement pstmt = con.prepareStatement(sql); 
			res = pstmt.executeQuery();
			if(res.next()) {
				return res.getInt(1) + 1; // 날짜를 받음
			}
			return 1; //첫번째 게시물일 경우
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -1; //데이터베이스 오류시 반환
	}
	
	public int write(String infoTitle, String infoContent, String userID, String userPW){
		String sql = "insert into info values(?, ?, ?, ?, ?, ?, ?)"; //꼭 데이터베이스의 순서대로 넣어줘야함
		try {
			PreparedStatement pstmt = con.prepareStatement(sql); 
			pstmt.setInt(1, getNext()); //게시물번호
			pstmt.setString(2, infoTitle); //게시물제목
			pstmt.setString(3, getDate()); //게시시간
			pstmt.setString(4, infoContent); //게시물내용
			pstmt.setInt(5, 1); //삭제여부
			pstmt.setString(6, userID); //유저아이디
			pstmt.setString(7, userPW); //유저비밀번호
			return pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -1; //데이터베이스 오류시 반환
		
	}
	
	public ArrayList<Info> getList(){//게시글을 10개 불러올수 있도록 하는 과정
		String sql = "SELECT * from info where infoavailable=1 order by infoid desc";
		//위의 sql문은 모든 데이터를 infoID가 ?보다 작은 값들을 불러오고 삭제되지 않은 게시물이여야 한다. 그것을 내림차순으로 정리하고 10개로 제한을 한다.
		ArrayList<Info> list = new ArrayList<Info>(); //Info에서 나오는 값을 저장할 인스턴스 생성
		try {
			PreparedStatement pstmt = con.prepareStatement(sql); 
			res = pstmt.executeQuery();
			while(res.next()) {
				Info info = new Info(); //info라는 객체를 생성
				info.setInfoID(res.getInt(1));
				info.setInfoTitle(res.getString(2));
				info.setInfoDate(res.getString(3));
				info.setInfoContent(res.getString(4));
				info.setInfoAvailable(res.getInt(5));
				info.setUserID(res.getString(6));
				info.setUserPW(res.getString(7));
				list.add(info);//값을은 ArrayList에 저장
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list; //list를 받음
	}
	//oracle에는 limit이 없다.
//	public boolean nextPage(int pageNumber) {//페이징 처리를 위한 함수
//		String sql = "SELECT * from info where infoid < ? AND infoAvailable = 1";
//		try {
//			PreparedStatement pstmt = con.prepareStatement(sql); 
//			pstmt.setInt(1, getNext() - (pageNumber -1) *10);
//			res = pstmt.executeQuery();
//			if(res.next()) {
//				return true;
//			}
//		}catch(Exception e) {
//			e.printStackTrace();
//		}
//		return false; //list를 받음
//	}
	
	public Info getInfo(int infoID) {
		String sql = "SELECT * from info where infoid=?";
		try {
			PreparedStatement pstmt = con.prepareStatement(sql); 
			pstmt.setInt(1, infoID);
			res = pstmt.executeQuery();
			if(res.next()) {
				Info info = new Info(); //info라는 객체를 생성
				info.setInfoID(res.getInt(1));
				info.setInfoTitle(res.getString(2));
				info.setInfoDate(res.getString(3));
				info.setInfoContent(res.getString(4));
				info.setInfoAvailable(res.getInt(5));
				info.setUserID(res.getString(6));
				info.setUserPW(res.getString(7));
				return info;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return null; //list를 받음
	}
}
