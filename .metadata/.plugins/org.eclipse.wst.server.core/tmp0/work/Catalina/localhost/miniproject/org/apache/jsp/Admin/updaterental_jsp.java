/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.93
 * Generated at: 2023-10-28 21:47:19 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.Admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import pkrent4u.schema.Motorcycle;
import pkrent4u.dao.MotorcycleDAO;
import pkrent4u.schema.Users;
import pkrent4u.dao.UsersDAO;
import pkrent4u.schema.Rental;
import pkrent4u.dao.RentalDAO;
import pkrent4u.schema.Car;
import pkrent4u.dao.CarDAO;
import java.util.ArrayList;
import pkrent4u.*;

public final class updaterental_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(1);
    _jspx_dependants.put("/Admin/../components/Nav.jsp", Long.valueOf(1698522837160L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("pkrent4u");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("pkrent4u.dao.RentalDAO");
    _jspx_imports_classes.add("pkrent4u.dao.CarDAO");
    _jspx_imports_classes.add("pkrent4u.schema.Rental");
    _jspx_imports_classes.add("pkrent4u.schema.Motorcycle");
    _jspx_imports_classes.add("pkrent4u.dao.MotorcycleDAO");
    _jspx_imports_classes.add("pkrent4u.schema.Users");
    _jspx_imports_classes.add("pkrent4u.schema.Car");
    _jspx_imports_classes.add("pkrent4u.dao.UsersDAO");
    _jspx_imports_classes.add("java.util.ArrayList");
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=utf-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"utf-8\">\r\n");
      out.write("<title>Update Rental Page</title>\r\n");
      out.write("<link rel=\"icon\" type=\"image/x-icon\" href=\"https://cdn.discordapp.com/attachments/965375341071847434/1160730098618601482/image.png?ex=6535b924&is=65234424&hm=02edc80e5cc1c9b7937bdbc00efe262fb24180a3850827d298d32e71ee6a8d8b&\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"../css/Animetion.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"../css/global.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"../css/Bootstrap.css\">\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("	");
      out.write("\r\n");
      out.write("<nav class=\"navbar navbar-expand-lg navbar-light bg-light\">\r\n");
      out.write("	<div class=\"container\">\r\n");
      out.write("		<button class=\"navbar-toggler\" type=\"button\"\r\n");
      out.write("			data-mdb-toggle=\"collapse\" data-mdb-target=\"#navbarSupportedContent\"\r\n");
      out.write("			aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\"\r\n");
      out.write("			aria-label=\"Toggle navigation\">\r\n");
      out.write("			<i class=\"fas fa-bars\"></i>\r\n");
      out.write("		</button>\r\n");
      out.write("		<div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\r\n");
      out.write("			<a class=\"navbar-brand mt-2 mt-lg-0\" href=\"/\"> <img\r\n");
      out.write("				src=\"https://cdn.discordapp.com/attachments/965375341071847434/1160730098618601482/image.png\"\r\n");
      out.write("				height=\"32\" alt=\"Rent4U\" loading=\"lazy\" />\r\n");
      out.write("			</a>\r\n");
      out.write("			<ul class=\"navbar-nav me-auto mb-2 mb-lg-0\">\r\n");
      out.write("				<li class=\"nav-item\"><a class=\"nav-link\" href=\"/miniproject/\">Home</a></li>\r\n");
      out.write("				<li class=\"nav-item\"><a class=\"nav-link\" href=\"/miniproject/cars.jsp\">Cars</a>\r\n");
      out.write("				</li>\r\n");
      out.write("				<li class=\"nav-item\"><a class=\"nav-link\" href=\"/miniproject/motors.jsp\">Motors</a>\r\n");
      out.write("				</li>\r\n");
      out.write("				<li class=\"nav-item\"><a class=\"nav-link\" href=\"/miniproject/contact.jsp\">Contact</a>\r\n");
      out.write("				</li>\r\n");
      out.write("				<li class=\"nav-item\"><a class=\"nav-link\" href=\"/miniproject/faq.jsp\">FAQ</a>\r\n");
      out.write("				</li>\r\n");
      out.write("			</ul>\r\n");
      out.write("		</div>\r\n");
      out.write("		<div class=\"dropdown\">\r\n");
      out.write("			<a class=\"dropdown-toggle d-flex align-items-center hidden-arrow\"\r\n");
      out.write("				href=\"#\" id=\"navbarDropdownMenuAvatar\" role=\"button\"\r\n");
      out.write("				data-mdb-toggle=\"dropdown\" aria-expanded=\"false\"> <img\r\n");
      out.write("				src=\"https://cdn-icons-png.flaticon.com/512/9703/9703596.png\"\r\n");
      out.write("				class=\"rounded-circle\" height=\"25\"\r\n");
      out.write("				alt=\"Black and White Portrait of a Man\" loading=\"lazy\" />\r\n");
      out.write("			</a>\r\n");
      out.write("			<ul class=\"dropdown-menu dropdown-menu-end\"\r\n");
      out.write("				aria-labelledby=\"navbarDropdownMenuAvatar\">\r\n");
      out.write("				");

				HttpSession ses = request.getSession();
				String username = (String) ses.getAttribute("username");
				
      out.write("\r\n");
      out.write("				");

				if (username != null) {
				
      out.write("\r\n");
      out.write("				<li><a class=\"dropdown-item\" href=\"/miniproject/Admin/dashboard.jsp\">Rental Dashboard</a></li>\r\n");
      out.write("				<li><a class=\"dropdown-item\" href=\"/miniproject/Admin/users.jsp\">Add users</a></li>\r\n");
      out.write("				<li><a class=\"dropdown-item\" href=\"/miniproject/Backend/Logout.jsp\">Logout</a></li>\r\n");
      out.write("				");

				} else {
				
      out.write("\r\n");
      out.write("				<li><a class=\"dropdown-item\" href=\"/miniproject/loginpage.jsp\">Login</a></li>\r\n");
      out.write("				");

				}
				
      out.write("\r\n");
      out.write("			</ul>\r\n");
      out.write("		</div>\r\n");
      out.write("	</div>\r\n");
      out.write("	</div>\r\n");
      out.write("</nav>");
      out.write('\r');
      out.write('\n');
      out.write('	');

	if(username == null){ response.sendRedirect("../"); }
	String rentalID = request.getParameter("RentalID");
	RentalDAO r_dao = new RentalDAO();
	Rental current_rental = r_dao.getRental(rentalID);
	
      out.write("\r\n");
      out.write("	<div class=\"container dashboard-fade\">\r\n");
      out.write("		<div class=\"ps-5 pt-3\">\r\n");
      out.write("			<h2>แก้ไขRental</h2>\r\n");
      out.write("		</div>\r\n");
      out.write("		<form action=\"../Backend/updaterental.jsp\" method=\"POST\" class=\"ps-5 \">\r\n");
      out.write("			<div class=\"form-group\">\r\n");
      out.write("					<label for=\"Customer\">RentalID</label>\r\n");
      out.write("					<input type=\"text\" id=\"rentalID\" name=\"rentalID\" value=\"");
      out.print(rentalID);
      out.write("\" class=\"form-control\" readonly>\r\n");
      out.write("				</div>\r\n");
      out.write("			<div class=\"form-group\">\r\n");
      out.write("				<label for=\"Customer\">ลูกค้า</label> <select id=\"customer\"\r\n");
      out.write("					name=\"customer\" class=\"form-control\">\r\n");
      out.write("					");

					UsersDAO u_dao = new UsersDAO();
					ArrayList<Users> allusers = u_dao.getAllUsers();
					
      out.write("\r\n");
      out.write("					");

					for (Users user : allusers) {
					
      out.write("\r\n");
      out.write("					<option value=\"");
      out.print(user.getUsername());
      out.write('"');
      out.write('>');
      out.print(user.getUsername());
      out.write("</option>\r\n");
      out.write("					");

					}
					
      out.write("\r\n");
      out.write("				</select>\r\n");
      out.write("			</div>\r\n");
      out.write("			<div class=\"form-group\">\r\n");
      out.write("				<label for=\"Car\">ข้อมูลรถยนต์</label> <select id=\"car\" name=\"car\"\r\n");
      out.write("					class=\"form-control\">\r\n");
      out.write("					<option value=\"null\">ไม่เลือก</option>\r\n");
      out.write("					<option value=\"0\" disabled>====== รถยนต์ ======</option>\r\n");
      out.write("					");

					CarDAO c_dao = new CarDAO();
					ArrayList<Car> cars = c_dao.getAllCars();
					
      out.write("\r\n");
      out.write("					");

					for (Car car : cars) {
					
      out.write("\r\n");
      out.write("					");

					if (car.isAvailable() == 1) {
					
      out.write("\r\n");
      out.write("					<option value=\"");
      out.print(car.getCarID());
      out.write('"');
      out.write('>');
      out.print(car.getCarID());
      out.write(" -\r\n");
      out.write("						");
      out.print(car.getBrand());
      out.write("\r\n");
      out.write("						");
      out.print(car.getModel());
      out.write("</option>\r\n");
      out.write("					");

					} else {
					
      out.write("\r\n");
      out.write("					<option style=\"color: red;\" value=\"");
      out.print(car.getCarID());
      out.write("\" disabled>");
      out.print(car.getCarID());
      out.write("\r\n");
      out.write("						-\r\n");
      out.write("						");
      out.print(car.getBrand());
      out.write("\r\n");
      out.write("						");
      out.print(car.getModel());
      out.write(" (ไม่ว่าง)\r\n");
      out.write("					</option>\r\n");
      out.write("					");

					}
					
      out.write("\r\n");
      out.write("					");

					}
					
      out.write("\r\n");
      out.write("				</select>\r\n");
      out.write("			</div>\r\n");
      out.write("			<div class=\"form-group\">\r\n");
      out.write("				<label for=\"Motorcycle\">ข้อมูลจักรยานยนต์</label> <select id=\"motorcycle\"\r\n");
      out.write("					name=\"motorcycle\" class=\"form-control\">\r\n");
      out.write("					<option value=\"null\">ไม่เลือก</option>\r\n");
      out.write("					<option value=\"0\" disabled>====== จักรยานยนต์ ======</option>\r\n");
      out.write("					");

					MotorcycleDAO m_dao = new MotorcycleDAO();
					ArrayList<Motorcycle> motors = m_dao.getAllMotorcycles();
					
      out.write("\r\n");
      out.write("					");

					for (Motorcycle motor : motors) {
					
      out.write("\r\n");
      out.write("					");

					if (motor.isAvailable() == 1) {
					
      out.write("\r\n");
      out.write("					<option value=\"");
      out.print(motor.getMotorcycleID());
      out.write('"');
      out.write('>');
      out.print(motor.getMotorcycleID());
      out.write("\r\n");
      out.write("						-\r\n");
      out.write("						");
      out.print(motor.getBrand());
      out.write("\r\n");
      out.write("						");
      out.print(motor.getModel());
      out.write("</option>\r\n");
      out.write("					");

					} else {
					
      out.write("\r\n");
      out.write("					<option style=\"color: red;\" value=\"");
      out.print(motor.getMotorcycleID());
      out.write("\"\r\n");
      out.write("						disabled>");
      out.print(motor.getMotorcycleID());
      out.write(" -\r\n");
      out.write("						");
      out.print(motor.getBrand());
      out.write("\r\n");
      out.write("						");
      out.print(motor.getModel());
      out.write(" (ไม่ว่าง)\r\n");
      out.write("					</option>\r\n");
      out.write("					");

					}
					
      out.write("\r\n");
      out.write("					");

					}
					
      out.write("\r\n");
      out.write("				</select>\r\n");
      out.write("			</div>\r\n");
      out.write("			<div class=\"form-group\">\r\n");
      out.write("				<label for=\"Employee\">พนักงาน</label> <select id=\"employee\"\r\n");
      out.write("					name=\"employee\" class=\"form-control\">\r\n");
      out.write("					");

					for (Users user : allusers) {
					
      out.write("\r\n");
      out.write("					<option value=\"");
      out.print(user.getUsername());
      out.write('"');
      out.write('>');
      out.print(user.getUsername());
      out.write("</option>\r\n");
      out.write("					");

					}
					
      out.write("\r\n");
      out.write("				</select>\r\n");
      out.write("			</div>\r\n");
      out.write("			<div class=\"d-flex justify-content-center\">\r\n");
      out.write("				<div class=\"form-group w-100 pe-1\">\r\n");
      out.write("					<label for=\"RentalStartDate\">วันที่เช่า</label> <input\r\n");
      out.write("						type=\"datetime-local\" class=\"form-control\" id=\"rentalstartdate\"\r\n");
      out.write("						name=\"rentalstartdate\">\r\n");
      out.write("				</div>\r\n");
      out.write("				<div class=\"form-group w-100 ps-1\">\r\n");
      out.write("					<label for=\"RentalEndDate\">วันที่คืน</label> <input\r\n");
      out.write("						type=\"datetime-local\" class=\"form-control\" id=\"rentalenddate\"\r\n");
      out.write("						name=\"rentalenddate\">\r\n");
      out.write("				</div>\r\n");
      out.write("			</div>\r\n");
      out.write("			<div class=\"pt-2\">\r\n");
      out.write("				<button type=\"submit\" class=\"btn btn-primary\">Submit</button>\r\n");
      out.write("			</div>\r\n");
      out.write("		</form>\r\n");
      out.write("	</div>\r\n");
      out.write("</body>\r\n");
      out.write("<script type=\"text/javascript\" src=\"https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.2/mdb.min.js\"></script>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
