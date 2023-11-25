package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.MuontraDTO;

/**
 * Servlet implementation class Muontracontroller
 */
@WebServlet("/Muontracontroller")
public class Muontracontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Muontracontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if (action.equals("show")) {
			System.out.println("vao checkout");
			show(request, response);
		}
		else if (action.equals("check"))
		{
			System.out.println("Vào check");
			check(request, response);
		}
		else if (action.equals("history"))
		{
			System.out.println("Vào history");
			history(request, response);
		}
		else if(action.equals("showdetail"))
		{
			System.out.println("showdetail");
			showdetail(request, response);
		}
		else if (action.equals("Search1"))
		{
			System.out.println("Show search");
			String search = request.getParameter("Search");
			search(request, response);
		}
	}

	private void search(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		handleFunction service = new handleFunction();
		String search = request.getParameter("Search1");
		System.out.println(search);
		char a = search.charAt(2);
		System.out.println("id là"+ a);
		int id = Integer.parseInt(String.valueOf(a));
		
		MuontraDTO muontra = service.getMuontraByIdFromApi(id);
		System.out.println(muontra);
		if(muontra != null)
		{
			System.out.println("có muon tr");
			List<MuontraDTO> muontraList = new ArrayList<MuontraDTO>();
			muontraList.add(muontra);
			session.setAttribute("lst_loancard2", muontraList);
		}
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/history.jsp");
		try {
			rd.forward(request, response);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	private void show (HttpServletRequest request, HttpServletResponse response)
	{
		HttpSession session = request.getSession();
		MuontraApiClient service = new MuontraApiClient();
		List<MuontraDTO> muontraList = service.getAllMuontraFromApi();
		if(muontraList.size() >= 2)
		{
		Collections.sort(muontraList, new Comparator<MuontraDTO>() {
	           @Override
	           public int compare(MuontraDTO o1, MuontraDTO o2) {
	               return Integer.compare(o1.getId_muon(), o2.getId_muon());
	           }
	        });
		}
		session.setAttribute("lst_loancard", muontraList);
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/loan_card.jsp");
		try {
			rd.forward(request, response);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	private void check (HttpServletRequest request, HttpServletResponse response)
	{
		HttpSession session = request.getSession();
		int id = Integer.valueOf(request.getParameter("id"));
		int status = Integer.valueOf(request.getParameter("status"));
		MuontraApiClient service = new MuontraApiClient();
		System.out.println("id = " + id + "status" + status);
		service.updateTinhtrangmuon(id, status);
		
		List<MuontraDTO> muontraList = service.getAllMuontraFromApi();
		if(muontraList.size() >= 2)
		{
		Collections.sort(muontraList, new Comparator<MuontraDTO>() {
	           @Override
	           public int compare(MuontraDTO o1, MuontraDTO o2) {
	               return Integer.compare(o1.getId_muon(), o2.getId_muon());
	           }
	        });
		}
		session.setAttribute("lst_loancard", muontraList);
		
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/loan_card.jsp");
		try {
			rd.forward(request, response);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	private void history (HttpServletRequest request, HttpServletResponse response)
	{
		HttpSession session = request.getSession();
		MuontraApiClient service = new MuontraApiClient();
		
		List<MuontraDTO> muontraList = service.getAllMuontraFromApi2();
		if(muontraList.size() >= 2)
		{
		Collections.sort(muontraList, new Comparator<MuontraDTO>() {
	           @Override
	           public int compare(MuontraDTO o1, MuontraDTO o2) {
	               return Integer.compare(o1.getId_muon(), o2.getId_muon());
	           }
	        });
		}
		session.setAttribute("lst_loancard2", muontraList);
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/history.jsp");
		try {
			rd.forward(request, response);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	
	private void showdetail (HttpServletRequest request, HttpServletResponse response)
	{
		HttpSession session = request.getSession();
		MuontraApiClient service = new MuontraApiClient();
		List<MuontraDTO> muontraList = service.getAllMuontraFromApi();
		if(muontraList.size() >= 2)
		{
		Collections.sort(muontraList, new Comparator<MuontraDTO>() {
	           @Override
	           public int compare(MuontraDTO o1, MuontraDTO o2) {
	               return Integer.compare(o1.getId_muon(), o2.getId_muon());
	           }
	        });
		}
		session.setAttribute("lst_loancard", muontraList);
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/loan_card.jsp");
		try {
			rd.forward(request, response);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	
}
