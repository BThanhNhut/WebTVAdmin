package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.ChitietmuontraDTO;
import model.MuontraDTO;

/**
 * Servlet implementation class Chitietmuontracontroller
 */
@WebServlet("/Chitietmuontracontroller")
public class Chitietmuontracontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Chitietmuontracontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if (action.equals("show_detail")) {
			System.out.println("vao checkout");
			show_detail(request, response);
		}
		else if (action.equals("show_detail2"))
		{
			System.out.println("vao detail_book 2");
			show_detail2(request, response);
		}
		else if (action.equals("vipham"))
		{
			System.out.println("vào được vi phạm");
			handlevalidate(request, response);
		}
		else if (action.equals("vipham2"))
		{
			System.out.println("vào được vi phạm2");
			handlevalidate2(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	private void show_detail (HttpServletRequest request, HttpServletResponse response)
	{
		int id = Integer.parseInt(request.getParameter("id"));
		HttpSession session = request.getSession();
		System.out.println("id là là" + id);
		
		MuontraApiClient service = new MuontraApiClient();
		List<ChitietmuontraDTO> chitietmuontra = service.getChitietmuonsachListFromApi(id);
		session.setAttribute("lst_detail", chitietmuontra);
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/list_detail.jsp");
		try {
			rd.forward(request, response);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	private void show_detail2 (HttpServletRequest request, HttpServletResponse response)
	{
		System.err.println("zo");
		int id = Integer.parseInt(request.getParameter("id"));
		HttpSession session = request.getSession();
		System.out.println("id là " + id);
		
		MuontraApiClient service = new MuontraApiClient();
		List<ChitietmuontraDTO> chitietmuontra = service.getChitietmuonsachListFromApi(id);
		System.out.println("Số sách mượn là " + chitietmuontra.size());
		session.setAttribute("lst_detail2", chitietmuontra);
		
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/back_book.jsp");
		try {
			rd.forward(request, response);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	private void handlevalidate(HttpServletRequest request, HttpServletResponse response) {
		MuontraApiClient service = new MuontraApiClient();
		String[] checkboxValues = request.getParameterValues("checkboxValue");
		int total = 0;
        if (checkboxValues != null) {
            for (String value : checkboxValues) {
                System.out.println("Checkbox value: " + value);
                if(value.equals("khongvipham")){
                	System.out.println("kvp");
                	return;
                }
                else if (value.equals("matsach")) {
                	total += 50000;
                }
                else if(value.equals("trehang")) {
                	int songaytre = Integer.parseInt(request.getParameter("trehang"));
                	total += (songaytre * 5000);
                	System.out.println("Vào trể hạng " + songaytre);
                }
                else if(value.equals("hutrang"))
                {
                	int sotranghu = Integer.parseInt(request.getParameter("hutrang"));
                	total += 10000 * sotranghu;
                	System.out.println("Số trang hư" + sotranghu);
                }
            }
            service.updateTinhtrangtra(5, 2);
        } else {
            System.out.println("No checkbox selected");
        }
		
	}
	private void handlevalidate2(HttpServletRequest request, HttpServletResponse response) {
		MuontraApiClient service = new MuontraApiClient();
		HttpSession session = request.getSession();
		int id = Integer.parseInt(request.getParameter("id"));
		service.updateTinhtrangtra(id, 1);
		int id_muon = Integer.parseInt(request.getParameter("id_muon"));
		System.out.println("id là " + id_muon);
		//
		List<ChitietmuontraDTO> chitietmuontra = service.getChitietmuonsachListFromApi(id);
		System.out.println("Số sách mượn là " + chitietmuontra.size());
		session.setAttribute("lst_detail2", chitietmuontra);
		
		try {
	        response.sendRedirect(request.getContextPath() + "/Chitietmuontracontroller?action=show_detail2&id="+id_muon);
	    } catch (IOException e) {
	        e.printStackTrace();
	    }
	}
}
