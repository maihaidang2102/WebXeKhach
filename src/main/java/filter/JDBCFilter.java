package filter;

import java.io.IOException;
import java.sql.Connection;
import java.util.Collection;
import java.util.Map;

import connect_db.MySQLConnUtils;
import connect_db.SQLServerConnUtils_SQLJDBC;
import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRegistration;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import utils.MyUtils;

@WebFilter(
        urlPatterns = "/*",
        filterName = "jdbcFilter"     
)
public class JDBCFilter implements Filter{

	public JDBCFilter() {
		// TODO Auto-generated constructor stub
	}
	
	@Override
	public void init(FilterConfig fConfig) throws ServletException {

	}

	@Override
	public void destroy() {

	}
	
	// Kiểm tra mục tiêu của request hiện tại là 1 Servlet?
		private boolean needJDBC (HttpServletRequest request) {
			// Servlet Url-pattern: /spath/*
			// 
			// => /spath
			String servletPath = request.getServletPath();
			// => /abc/mnp
			String pathInfo = request.getPathInfo();

			String urlPattern = servletPath;

			if (pathInfo != null) {
				// => /spath/*
				urlPattern = servletPath + "/*";
			}

			// Key: servletName.
			// Value: ServletRegistration
			Map<String, ? extends ServletRegistration> servletRegistrations = request.getServletContext()
					.getServletRegistrations();

			// Tập hợp tất cả các Servlet trong WebApp của bạn.
			Collection<? extends ServletRegistration> values = servletRegistrations.values();
			for (ServletRegistration sr : values) {
				Collection<String> mappings = sr.getMappings();
				if (mappings.contains(urlPattern)) {
					return true;
				}
			}
			return false;
		}

		@Override
		public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
				throws IOException, ServletException {

			HttpServletRequest req = (HttpServletRequest) request;

			// Chỉ mở connection (kết nối) đối với các request có đường dẫn đặc biệt.
			// (Chẳng hạn đường dẫn tới các servlet, jsp, ..)
			// 
			// Tránh tình trạng mở Connection với các yêu cầu thông thường.
			// (Chẳng hạn image, css, javascript,... )
			// 
			
			if (this.needJDBC(req)) {

				System.out.println("Open Connection for: " + req.getServletPath());

				Connection conn = null;
				try {
					// Tạo đối tượng Connection kết nối database.
					conn = MySQLConnUtils.getMySQLConnection();;
					// Sét tự động commit false, để chủ động điều khiển.
					conn.setAutoCommit(false);

					// Lưu trữ đối tượng Connection vào attribute của request.
					MyUtils.storeConnection(request, conn);

					// Cho phép request đi tiếp.
					// (Đi tới Filter tiếp theo hoặc đi tới mục tiêu).
					chain.doFilter(request, response);

					// Gọi phương thức commit() để hoàn thành giao dịch với DB.
					conn.commit();
				} catch (Exception e) {
					e.printStackTrace();
					SQLServerConnUtils_SQLJDBC.rollbackQuietly(conn);
					throw new ServletException();
				} finally {
					SQLServerConnUtils_SQLJDBC.closeQuietly(conn);
				}
			}
			// Với các request thông thường (image,css,html,..)
			// không cần mở connection.
			else {
				// Cho phép request đi tiếp.
				// (Đi tới Filter tiếp theo hoặc đi tới mục tiêu).
				chain.doFilter(request, response);
			}

		}


}
