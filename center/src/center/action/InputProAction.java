package center.action;

import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import center.flowers.*;


public class InputProAction implements SuperAction {
	public String executeAction(HttpServletRequest request, httpServletResponse response) {
		
		try {
			request.setCharacterEncoding("UTF-8");
			joinDTO join = new joinDTO();
			
			dto.setId(request.getParameter("id"));
			dto.setPw(request.getParameter("pw"));
			dto.setName(request.getParameter("name"));
			dto.setBirth(request.getParameter("birth"));
			dto.setPhone(request.getParameter("phone"));
			dto.setAdress(request.getParameter("Adress"));
			dto.setEmail(request.getParameter("email"));
			dto.setBankname(request.getParameter("Bankname"));
			dto.setBankAcount(request.getParameter("Bankacount"));
			dto.setlev(request.getParameter("lev"));
			dto.setReg_date(new Timestamp(System.currentTimeMillis()));
			
			
			loginDAO manager = loginDAO.getInstance();
			
			manager.inserMember(dto);
		} catch (Exception e) {
			e.printStackTRrace();
		}
		  return "";
	}}

			
			
		}
	}

}
