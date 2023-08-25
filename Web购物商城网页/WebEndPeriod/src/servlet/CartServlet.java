package servlet;

import java.io.IOException;


import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sun.corba.se.spi.orbutil.fsm.Action;

import db.GoodDao;
import model.Cart;
import model.Goods;

/**
 * Servlet implementation class CartServlet
 */
@WebServlet("/CartServlet")
public class CartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       private String action;//表示购物车的动作
       private GoodDao goodDao=new GoodDao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		if(request.getParameter("action")!=null) {
			this.action=request.getParameter("action");
			if(action.equals("add")) {//添加商品进购物车
				try {
				  if(addToCart(request,response)) {
					request.getRequestDispatcher("/success.jsp").forward(request, response);
				  }else {
				 	request.getRequestDispatcher("/false.jsp").forward(request, response);
				 }
				}catch (Exception e) {
					e.printStackTrace();
				}

			 }
			if("show".equals(action)) {//显示购物车
				try {
					request.getRequestDispatcher("/cart.jsp").forward(request, response);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}

		  }
			if("delete".equals(action)) {//删除购物车商品
				if(deleteFromCart(request,response)){
					request.getRequestDispatcher("/cart.jsp").forward(request, response);
				}
			}
			if("clear".equals(action)) {//清空购物车商品
				HttpSession session = request.getSession();
				//清除session域中的cart对象
				session.removeAttribute("cart");
                request.getRequestDispatcher("/cart.jsp").forward(request, response);
			}
	   }
   
    //添加商品进购物车
    private boolean addToCart(HttpServletRequest request, HttpServletResponse response) {
    	String id=request.getParameter("id");
    	String number=request.getParameter("num");
    	Goods goods=goodDao.findById(Integer.parseInt(id));
    	//是否是第一次给购物车添加商品
    	if(request.getSession().getAttribute("cart")==null) {
    		Cart cart=new Cart();
    		request.getSession().setAttribute("cart", cart);
    	}
    	Cart cart=(Cart)request.getSession().getAttribute("cart");
    	if(cart.addGoodCart(goods, Integer.parseInt(number))) {
    		return true;
    	}else {
    		return false;
    	}
    }
    //删除购物车中商品
    private boolean deleteFromCart(HttpServletRequest request, HttpServletResponse response) {
    	String id=request.getParameter("id");
    	Cart cart=(Cart)request.getSession().getAttribute("cart");
    	Goods goods=goodDao.findById(Integer.parseInt(id));
    	if(cart.removeGoodCart(goods)) {
    		return true;
    	}else {
    		return false;
    	}
    }
}



