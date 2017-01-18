package center.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MemListAction implements SuperAction {
	public String executeAction(HttpServletRequest request, HttpServletResponse response) {
		
		return "/memManage/memList.jsp";
	}
}
