package center.flowers;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class JoinDAO {
	
	private static JoinDAO instance = new JoinDAO();
	public static JoinDAO getInstance(){
		return instance;
	}
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	private Connection getConnection()throws Exception{
		Context ctx= new InitialContext();
		Context env = (Context)ctx.lookup("java:comp/env");
		DataSource ds = (DataSource)env.lookup("jdbc/orcl");
		
		return ds.getConnection();
	}
	public void insertJoin(JoinDTO dto){
		try{
			conn = getConnection();
			pstmt=conn.prepareStatement("inset into join values(?,?,?,?,?,?,?,?,?,?,sysdate)");
			pstmt.setString(1,dto.getId());
			pstmt.setString(2,dto.getPw());
			pstmt.setString(3,dto.getName());
			pstmt.setInt(4,dto.getBirth());
			pstmt.setInt(5,dto.getPhone());
			pstmt.setString(6,dto.getAddress());
			pstmt.setString(7,dto.getEmail());
			pstmt.setString(8,dto.getBankName());
			pstmt.setInt(9,dto.getBankAccount());
			pstmt.setString(10,dto.getLev());
			
			pstmt.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(pstmt != null)try{pstmt.close();}catch(SQLException ex){}
			if(conn != null)try{conn.close();}catch(SQLException ex){}
		}
	}
		public ArrayList<JoinDTO> select(){
			ArrayList<JoinDTO> list = null;
			try{
				conn = getConnection();
				pstmt = conn.prepareStatement("select*from join");
				rs = pstmt.executeQuery();
				list = new ArrayList<JoinDTO>();
				while(rs.next()){
					JoinDTO dto =new JoinDTO();
					
  					dto.setId(rs.getString("id"));
  					dto.setPw(rs.getString("pw"));
  					dto.setBirth(rs.getInt("birth"));	
  					dto.setPhone(rs.getInt("phone"));
  					dto.setAddress(rs.getString("address"));  					
  					dto.setEmail(rs.getString("email"));
  					dto.setBankName(rs.getString("bankName"));
  					dto.setBankAccount(rs.getInt("bankAccount"));	
  					dto.setLev(rs.getString("lev"));
  					dto.setRegDate(rs.getTimestamp("regDate"));
  					list.add(dto);
  				}
  				
  		}catch(Exception e){
  			e.printStackTrace();
  		}finally{
  		if(rs != null)try{rs.close();}catch(SQLException ex){}
  		if(pstmt != null)try{pstmt.close();}catch(SQLException ex){}
  		if(conn != null)try{conn.close();}catch(SQLException ex){}
  		}
  			return list;
  			}
		public JoinDTO getMember(String id)
		throws Exception{
			JoinDTO dto =null;
			try{
				conn =getConnection();
				pstmt = conn.prepareStatement("select*from join where id =?");
				pstmt.setString(1, id);
				rs=pstmt.executeQuery();
				if(rs.next()){
					dto=new JoinDTO();
					
					dto.setId(rs.getString("id"));
  					dto.setPw(rs.getString("pw"));
  					dto.setBirth(rs.getInt("birth"));	
  					dto.setPhone(rs.getInt("phone"));
  					dto.setAddress(rs.getString("address"));  					
  					dto.setEmail(rs.getString("email"));
  					dto.setBankName(rs.getString("bankName"));
  					dto.setBankAccount(rs.getInt("bankAccount"));	
  					dto.setLev(rs.getString("lev"));
  					dto.setRegDate(rs.getTimestamp("regDate"));
  				}
  		}catch(Exception e){
  			e.printStackTrace();
  		}finally{
  		if(rs != null)try{rs.close();}catch(SQLException ex){}
  		if(pstmt != null)try{pstmt.close();}catch(SQLException ex){}
  		if(conn != null)try{conn.close();}catch(SQLException ex){}
  		}
  			return dto;
		}
		public void updateJoin(JoinDTO dto){
			try{
				conn=getConnection();
				pstmt=conn.prepareStatement("update join set pw=?,phone=?,address=?,email=?,bankname=?,bankaccount=? where id=?");
				
			
				pstmt.setString(1,dto.getName());
				pstmt.setInt(2,dto.getBirth());
				pstmt.setInt(3,dto.getPhone());
				pstmt.setString(4,dto.getAddress());
				pstmt.setString(5,dto.getEmail());
				pstmt.setString(6,dto.getBankName());
				pstmt.setInt(7,dto.getBankAccount());
				
				
				pstmt.setString(8,dto.getId());
				pstmt.executeUpdate();
			}catch(Exception e){
				e.printStackTrace();
			}finally{
				if(pstmt != null)try{pstmt.close();}catch(SQLException ex){}
		  		if(conn != null)try{conn.close();}catch(SQLException ex){}
			}
		}
		
		
		
		public int confirmId(String id) throws Exception {
			int x = -1;
			
			try {
				conn = getConnection();
				pstmt = conn.prepareStatement("select id from member where id = ?");
				pstmt.setString(1, id);
				rs = pstmt.executeQuery();
				
				if(rs.next()) x=1;
				else x=-1;
			} catch(Exception e) { e.printStackTrace();	}
			 finally {
				 if(rs != null) { try { rs.close(); } catch(SQLException s) { } }
				 if(pstmt != null) { try { pstmt.close(); } catch(SQLException s) { } }
				 if(conn != null) { try { conn.close(); } catch(SQLException s) { } }
			}
			return x;
		}}
