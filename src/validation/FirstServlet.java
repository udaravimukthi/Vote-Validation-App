package validation;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/FirstServlet")
public class FirstServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FirstServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	// Set response content type
    	response.setContentType("text/html");
    	
    	String fname = request.getParameter("fname");
    	String lname = request.getParameter("lname");
    	int age = Integer.parseInt(request.getParameter("age"));
    	String citizen = request.getParameter("citizen");
    	String multi = request.getParameter("multi");
    	
    	checkValidate s = new checkValidate();
    	
    	int result = s.valid(age, citizen, multi);
    	
    	if(result == 1) {
    		String vote = fname + " " + lname+ " is valid user for vote in SriLanka";
    		request.setAttribute("vote", vote );
    		request.getRequestDispatcher("Result.jsp").forward(request, response);
    		
    	}else {
    		String vote = fname + " " + lname+ " is Not valid user for vote in SriLanka";
    		request.setAttribute("vote", vote );
    		request.getRequestDispatcher("Result.jsp").forward(request, response);
    	}
    	
    	
    		
    		
    	
    	
    	
    	
    	
    }
    


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
