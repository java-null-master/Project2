package center.flowers;

import java.sql.Timestamp;

public class JoinDTO{
	private String id = null;
	private String pw = null;
	private String name = null;
	private int birth = 0;
	private int phone = 0;
	private String address = null;
	private String email = null;
	private String bankName = null;
	private int bankAccount = 0;
	private String lev = null;
	private Timestamp regDate= null;
	
	public void setId(String id){this.id=id;}
	public String getId(){return id;}
	
	public void setPw(String pw){this.pw=pw;}
	public String getPw(){return pw;}
	
	public void setName(String name){this.name=name;}
	public String getName(){return name;}
	
	public void setBirth(int birth){this.birth=birth;}
	public int  getBirth(){return birth;}
	
	public void setPhone(int phone){this.phone=phone;}
	public int  getPhone(){return phone;}
	
	public void setAddress(String address){this.address=address;}
	public String getAddress(){return address;}
	
	public void setEmail(String email){this.email=email;}
	public String getEmail(){return email;}
	
	public void setBankName(String bankName){this.bankName=bankName;}
	public String getBankName(){return bankName;}
	
	public void setBankAccount(int bankAccount){this.bankAccount=bankAccount;}
	public int  getBankAccount(){return bankAccount;}
	
	public void setLev(String lev){this.lev=lev;}
	public String getLev(){return lev;}
	
	public void setRegDate(Timestamp regDate){this.regDate=regDate;}
	public Timestamp getRegDate(){return regDate;}
	}

