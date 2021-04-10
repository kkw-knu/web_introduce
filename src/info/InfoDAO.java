package info;

import java.sql.*;
import java.util.ArrayList;

public class InfoDAO {
	
	private Connection con;
	private ResultSet res;
	
	//�����ͺ��̽� ����κ�
	public InfoDAO() {
		try {
			String driver = "oracle.jdbc.driver.OracleDriver";
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String id = "scott";
			String pw = "1234";
			con = DriverManager.getConnection(url, id, pw);
			Class.forName(driver);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	//preparedStatment�� �ȿ������������� �������� �Լ��� ���⶧���� ���ļ� ������ ������ �̴�.
	public String getDate() {//������ ����ð��� �޾ƿ��� ��
		String sql = "select sysdate from dual";
		try {
			PreparedStatement pstmt = con.prepareStatement(sql); 
			res = pstmt.executeQuery();
			if(res.next()) {
				return res.getString(1); // ��¥�� ����
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return ""; //�����ͺ��̽� ������ ��ȯ
	}
	
	public int getNext() {//�Խñ� ��ȣ
		String sql = "SELECT infoID from info order by infoID desc"; //���� �������� ��ȣ �� ����ϱ� ����
		try {
			PreparedStatement pstmt = con.prepareStatement(sql); 
			res = pstmt.executeQuery();
			if(res.next()) {
				return res.getInt(1) + 1; // ��¥�� ����
			}
			return 1; //ù��° �Խù��� ���
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -1; //�����ͺ��̽� ������ ��ȯ
	}
	
	public int write(String infoTitle, String infoContent, String userID, String userPW){
		String sql = "insert into info values(?, ?, ?, ?, ?, ?, ?)"; //�� �����ͺ��̽��� ������� �־������
		try {
			PreparedStatement pstmt = con.prepareStatement(sql); 
			pstmt.setInt(1, getNext()); //�Խù���ȣ
			pstmt.setString(2, infoTitle); //�Խù�����
			pstmt.setString(3, getDate()); //�Խýð�
			pstmt.setString(4, infoContent); //�Խù�����
			pstmt.setInt(5, 1); //��������
			pstmt.setString(6, userID); //�������̵�
			pstmt.setString(7, userPW); //������й�ȣ
			return pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -1; //�����ͺ��̽� ������ ��ȯ
		
	}
	
	public ArrayList<Info> getList(){
		String sql = "SELECT * from info where infoavailable=1 order by infoid desc";
		ArrayList<Info> list = new ArrayList<Info>(); //Info���� ������ ���� ������ �ν��Ͻ� ����
		try {
			PreparedStatement pstmt = con.prepareStatement(sql); 
			res = pstmt.executeQuery();
			while(res.next()) {
				Info info = new Info(); //info��� ��ü�� ����
				info.setInfoID(res.getInt(1));
				info.setInfoTitle(res.getString(2));
				info.setInfoDate(res.getString(3));
				info.setInfoContent(res.getString(4));
				info.setInfoAvailable(res.getInt(5));
				info.setUserID(res.getString(6));
				info.setUserPW(res.getString(7));
				list.add(info);//������ ArrayList�� ����
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list; //list�� ����
	}
	//oracle���� limit�� ����.
//	public boolean nextPage(int pageNumber) {//����¡ ó���� ���� �Լ�
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
//		return false; //list�� ����
//	}
	
	public Info getInfo(int infoID) {
		String sql = "SELECT * from info where infoid=?";
		try {
			PreparedStatement pstmt = con.prepareStatement(sql); 
			pstmt.setInt(1, infoID);
			res = pstmt.executeQuery();
			if(res.next()) {
				Info info = new Info(); //info��� ��ü�� ����
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
		return null; //list�� ����
	}
	
	public int update(int infoID, String infoTitle, String infoContent) {
		String sql = "update info set infotitle =?, infoContent = ? where infoID =?"; //�� �����ͺ��̽��� ������� �־������
		try {
			PreparedStatement pstmt = con.prepareStatement(sql); 
			pstmt.setString(1, infoTitle); //�Խù���ȣ
			pstmt.setString(2, infoContent); //�Խù�����
			pstmt.setInt(3, infoID); //�Խù���ȣ
			return pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -1; //�����ͺ��̽� ������ ��ȯ
	}
	
	public int delete(int infoID) {
		String sql = "update info set infoavailable = 0 where infoID =?"; //���� �ٲ��ִ� ������ ����ǥ��
		try {
			PreparedStatement pstmt = con.prepareStatement(sql); 
			pstmt.setInt(1, infoID); //�Խù���ȣ
			return pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -1; //�����ͺ��̽� ������ ��ȯ
	}
}
