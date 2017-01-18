package center.flowers;

import java.sql.*;
import javax.sql.*;
import javax.naming.*;
import java.util.*;

public class joinDAO {
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	private static joinDAO instance = new joinDAO();
	
	public static joinDAO getInstance() { 
		return instance;
	}
	private joinDAO() {}
	
	private Connection getConnection() throws Exception {
		Context ctx = new InitialContext();
		Context env = (Context)ctx.lookup("java:comp/env");
		DataSource ds = (DataSource)env.lookup("jdbc/orcl");
		
		return ds.getConnection();
	}
}
