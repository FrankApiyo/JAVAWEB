import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import java.io.IOException;


public class Submit extends HttpServlet{
	Data data  = new Data();
	public void doPost(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException{
		//add data to the ServletContext
		//this should be moved to a ServletContextListener later
		getServletContext().setAttribute("data", data);


		data.feed = Integer.parseInt(request.getParameter("feeds"));
		data.cowsOnHeat = Integer.parseInt(request.getParameter("heat"));
		data.mastitisCount = Integer.parseInt(request.getParameter("mastitis"));
		data.discardedMilk = Integer.parseInt(request.getParameter("dis_milk"));
		data.litresProduced = Integer.parseInt(request.getParameter("milk"));
		data.remarks = request.getParameter("remarks");

		//now forward the reques to mastitis and then on heat jsp
		RequestDispatcher view = request.getRequestDispatcher("mastitis.jsp");
		//set attribute count to be used by mastitis.jsp
		request.setAttribute("count", data.mastitisCount);
		view.forward(request, response);
	}
}
class Data{
	int feed, cowsOnHeat, mastitisCount, discardedMilk, litresProduced;
	String remarks;

}