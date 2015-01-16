package com.sinosoft.eye.controller;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import sun.misc.IOUtils;

import com.sinosoft.account.bean.Account;
import com.sinosoft.apmessage.bean.ApMessage;
import com.sinosoft.apmessage.service.ApMessageService;
import com.sinosoft.count.service.CountService;
import com.sinosoft.dataSource.DbContextHolder;
import com.sinosoft.eye.bean.ApType;
import com.sinosoft.eye.service.EyeService;
import com.sinosoft.util.WebContextArguments;

@Controller
public class EyeController {

	@Autowired
	private ApMessageService apMessageService;
	@Autowired
	private EyeService eyeService;
	/**
	 * 首页显示
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/mall!init.do", method = RequestMethod.GET)
	public ModelAndView searchmap(HttpServletRequest request) {
		DbContextHolder.clearDbType();
		// 得到用户
		Account account = (Account) request.getSession().getAttribute("user");

		ModelAndView view = new ModelAndView("source/page/eye/index.jsp");

		return view;
	}

	@RequestMapping(value = "/mall!customer_portrait.do", method = RequestMethod.GET)
	public ModelAndView customer_portrait(HttpServletRequest request) {
		DbContextHolder.clearDbType();
		String storename = "北研";
		storename = request.getParameter("name");
		String uid = request.getParameter("uid");
		if (storename != null) {
			try {
				storename = new String(storename.getBytes("ISO-8859-1"),
						"utf-8");
			} catch (UnsupportedEncodingException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		request.setAttribute("name", storename);
		request.setAttribute("uid", uid);
		ModelAndView view = new ModelAndView(
				"source/page/eye/customer_portrait.jsp");
		return view;
	}

	@RequestMapping(value = "/mall!flow_coming.do", method = RequestMethod.GET)
	public ModelAndView flow_coming(HttpServletRequest request) {
		DbContextHolder.clearDbType();
		String storename = "北研";
		storename = request.getParameter("name");
		String uid = request.getParameter("uid");
		if (storename != null) {
			try {
				storename = new String(storename.getBytes("ISO-8859-1"),
						"utf-8");
			} catch (UnsupportedEncodingException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		request.setAttribute("name", storename);
		request.setAttribute("uid", uid);
		ModelAndView view = new ModelAndView("source/page/eye/flow_coming.jsp");
		return view;
	}

	@RequestMapping(value = "/mall!flow_going.do", method = RequestMethod.GET)
	public ModelAndView flow_going(HttpServletRequest request) {
		DbContextHolder.clearDbType();
		String storename = "北研";
		storename = request.getParameter("name");
		String uid = request.getParameter("uid");
		if (storename != null) {
			try {
				storename = new String(storename.getBytes("ISO-8859-1"),
						"utf-8");
			} catch (UnsupportedEncodingException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		request.setAttribute("name", storename);
		request.setAttribute("uid", uid);
		ModelAndView view = new ModelAndView("source/page/eye/flow_going.jsp");
		return view;
	}

	@RequestMapping(value = "/mall!flow_customer.do", method = RequestMethod.GET)
	public ModelAndView flow_customer(HttpServletRequest request) {
		DbContextHolder.clearDbType();
		String storename = "北研";
		storename = request.getParameter("name");
		String uid = request.getParameter("uid");
		if (storename != null) {
			try {
				storename = new String(storename.getBytes("ISO-8859-1"),
						"utf-8");
			} catch (UnsupportedEncodingException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		request.setAttribute("name", storename);
		request.setAttribute("uid", uid);
		ModelAndView view = new ModelAndView(
				"source/page/eye/flow_customer.jsp");
		return view;
	}

	@RequestMapping(value = "/mall!compare_portrait.do", method = RequestMethod.GET)
	public ModelAndView compare_portrait(HttpServletRequest request) {
		DbContextHolder.clearDbType();
		ModelAndView view = new ModelAndView(
				"source/page/eye/compare_portrait.jsp");
		return view;
	}

	@RequestMapping(value = "/mall!compare_customer.do", method = RequestMethod.GET)
	public ModelAndView compare_customer(HttpServletRequest request) {
		DbContextHolder.clearDbType();
		ModelAndView view = new ModelAndView(
				"source/page/eye/compare_customer.jsp");
		return view;
	}

	@RequestMapping(value = "/mall!near_customer.do", method = RequestMethod.GET)
	public ModelAndView near_customer(HttpServletRequest request) {
		DbContextHolder.clearDbType();
		ModelAndView view = new ModelAndView(
				"source/page/eye/near_customer.jsp");
		return view;
	}

	@RequestMapping(value = "/mall!near_poi.do", method = RequestMethod.GET)
	public ModelAndView near_poi(HttpServletRequest request) {
		DbContextHolder.clearDbType();
		String storename = "北研";
		storename = request.getParameter("name");
		String uid = request.getParameter("uid");
		if (storename != null) {
			try {
				storename = new String(storename.getBytes("ISO-8859-1"),
						"utf-8");
			} catch (UnsupportedEncodingException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		request.setAttribute("name", storename);
		request.setAttribute("uid", uid);
		ModelAndView view = new ModelAndView("source/page/eye/near_poi.jsp");
		return view;
	}

	@RequestMapping(value = "/mall!flow_actual.do", method = RequestMethod.GET)
	public ModelAndView flow_actual(HttpServletRequest request) {
		DbContextHolder.clearDbType();
		String storename = "北研";
		storename = request.getParameter("name");
		String uid = request.getParameter("uid");
		if (storename != null) {
			try {
				storename = new String(storename.getBytes("ISO-8859-1"),
						"utf-8");
			} catch (UnsupportedEncodingException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		request.setAttribute("name", storename);
		request.setAttribute("uid", uid);
		ModelAndView view = new ModelAndView("source/page/eye/flow_actual.jsp");
		return view;
	}

	@RequestMapping(value = "/mall!flow_all.do", method = RequestMethod.GET)
	public ModelAndView flow_all(HttpServletRequest request) {
		DbContextHolder.clearDbType();
		String storename = "北研";
		storename = request.getParameter("name");
		String uid = request.getParameter("uid");
		if (storename != null) {
			try {
				storename = new String(storename.getBytes("ISO-8859-1"),
						"utf-8");
			} catch (UnsupportedEncodingException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		request.setAttribute("name", storename);
		request.setAttribute("uid", uid);
		ModelAndView view = new ModelAndView("source/page/eye/flow_all.jsp");
		return view;
	}

	@RequestMapping(value = "/mall!flow_storey.do", method = RequestMethod.GET)
	public ModelAndView flow_storey(HttpServletRequest request) {
		DbContextHolder.clearDbType();
		String storename = "北研";
		storename = request.getParameter("name");
		String uid = request.getParameter("uid");
		if (storename != null) {
			try {
				storename = new String(storename.getBytes("ISO-8859-1"),
						"utf-8");
			} catch (UnsupportedEncodingException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		request.setAttribute("name", storename);
		request.setAttribute("uid", uid);
		ModelAndView view = new ModelAndView("source/page/eye/flow_storey.jsp");
		return view;
	}

	@RequestMapping(value = "/mall!mall_spread.do", method = RequestMethod.GET)
	public ModelAndView mall_spread(HttpServletRequest request) {
		DbContextHolder.clearDbType();
		ModelAndView view = new ModelAndView("source/page/eye/mall_spread.jsp");
		return view;
	}

	@RequestMapping(value = "/mall!changecity.do", method = RequestMethod.GET)
	public ModelAndView changecity(HttpServletRequest request) {
		DbContextHolder.clearDbType();

		ModelAndView view = new ModelAndView("source/page/eye/changecity.jsp");
		return view;
	}

	public static String convertStreamToString(InputStream is) {
		StringBuilder sb1 = new StringBuilder();
		byte[] bytes = new byte[4096];
		int size = 0;

		try {
			while ((size = is.read(bytes)) > 0) {
				String str = new String(bytes, 0, size, "UTF-8");
				sb1.append(str);
			}
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				is.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return sb1.toString();
	}

	@ResponseBody
	@RequestMapping(value = "/mall!placepoi.do")
	public void placepoi(HttpServletRequest req, HttpServletResponse rep) {
		rep.setContentType("text/html;charset=utf-8");
		// 接收level和区域code
		String query = req.getParameter("query");
		try {
			query = new String(query.getBytes("ISO-8859-1"), "utf-8");
		} catch (UnsupportedEncodingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		String location = req.getParameter("location");
		String radius = req.getParameter("radius");
		String url = "http://api.map.baidu.com/place/v2/search?";
		url += "query=" + query;
		url += "&location=" + location;
		url += "&radius=" + radius;
		url += "&page_size=" + 20;
		url += "&url=" + url;
		url += "&output=json&ak=Q15HFmKZ9NEPV8UjvItUNLE2";
		String json = "";
		HttpClient httpclient = new DefaultHttpClient();
		// 创建Get方法实例
		HttpGet httpgets = new HttpGet(url);
		HttpResponse response = null;
		try {
			response = httpclient.execute(httpgets);
		} catch (ClientProtocolException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		HttpEntity entity = response.getEntity();
		if (entity != null) {
			InputStream instreams = null;
			try {
				instreams = entity.getContent();
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			json = convertStreamToString(instreams);
			httpgets.abort();
		}
		// 将json数据传回

		PrintWriter out = null;
		try {
			out = rep.getWriter();
			out.write(json);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (null != out) {
				out.close();
			}
		}
	}

	@ResponseBody
	@RequestMapping(value = "/mall!getpoibyregion.do")
	public void getpoibyregion(HttpServletRequest req, HttpServletResponse rep) {
		rep.setContentType("text/html;charset=utf-8");
		// 接收level和区域code
		String query = req.getParameter("query");
		try {
			query = new String(query.getBytes("ISO-8859-1"), "utf-8");
		} catch (UnsupportedEncodingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		String region = req.getParameter("region");
		try {
			region = new String(region.getBytes("ISO-8859-1"), "utf-8");
		} catch (UnsupportedEncodingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		String page_num = req.getParameter("page_num");
		String url = "http://api.map.baidu.com/place/v2/search?";
		url += "query=" + query;
		url += "&region=" + region;
		url += "&page_num=" + page_num;
		url += "&page_size=" + 20;
		url += "&url=" + url;
		url += "&output=json&ak=Q15HFmKZ9NEPV8UjvItUNLE2";
		String json = "";
		HttpClient httpclient = new DefaultHttpClient();
		// 创建Get方法实例
		HttpGet httpgets = new HttpGet(url);
		HttpResponse response = null;
		try {
			response = httpclient.execute(httpgets);
		} catch (ClientProtocolException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		HttpEntity entity = response.getEntity();
		if (entity != null) {
			InputStream instreams = null;
			try {
				instreams = entity.getContent();
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			json = convertStreamToString(instreams);
			httpgets.abort();
		}
		// 将json数据传回

		PrintWriter out = null;
		try {
			out = rep.getWriter();
			out.write(json);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (null != out) {
				out.close();
			}
		}
	}

	@RequestMapping(value = "/mall!awifi.do", method = RequestMethod.GET)
	public ModelAndView awifi(HttpServletRequest request) {
		// 创建HttpClient实例

		ModelAndView view = new ModelAndView("source/page/eye/awifi.jsp");
		return view;
	}

	@RequestMapping(value = "/mall!eye.do", method = RequestMethod.GET)
	public ModelAndView eye(HttpServletRequest request) {
		// 创建HttpClient实例

		ModelAndView view = new ModelAndView("source/page/eye/eye.jsp");
		String storename = "北研";
		storename = request.getParameter("name");
		String uid = request.getParameter("uid");
		try {
			storename = new String(storename.getBytes("ISO-8859-1"), "utf-8");
		} catch (UnsupportedEncodingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		request.setAttribute("name", storename);
		request.setAttribute("uid", uid);
		return view;
	}

	@RequestMapping(value = "/mall!trail.do", method = RequestMethod.GET)
	public ModelAndView usertrace(HttpServletRequest request) {
		// 创建HttpClient实例

		ModelAndView view = new ModelAndView("source/page/eye/user_trace.jsp");
		String storename = "北研";
		storename = request.getParameter("name");
		String uid = request.getParameter("uid");
		try {
			storename = new String(storename.getBytes("ISO-8859-1"), "utf-8");
		} catch (UnsupportedEncodingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		request.setAttribute("name", storename);
		request.setAttribute("uid", uid);
		return view;
	}

	@RequestMapping(value = "/mall!customerinfo.do", method = RequestMethod.GET)
	public ModelAndView customerinfo(HttpServletRequest request) {
		// 创建HttpClient实例

		ModelAndView view = new ModelAndView("source/page/eye/customerinfo.jsp");
		String storename = "北研";
		storename = request.getParameter("name");
		String uid = request.getParameter("uid");
		try {
			storename = new String(storename.getBytes("ISO-8859-1"), "utf-8");
		} catch (UnsupportedEncodingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		request.setAttribute("name", storename);
		request.setAttribute("uid", uid);

		String driver = "com.mysql.jdbc.Driver";

		// URL指向要访问的数据库名scutcs
		String url = "jdbc:mysql://42.123.76.25:3306/terminal";

		// MySQL配置时的用户名
		String user = "root";

		// MySQL配置时的密码
		String password = "admin";

		String sql = "select cf.name_cn ,TR.*    from terminal.terminalRecord as TR  ,config.appconfig as cf     where cf.app_id = TR.dev_type ";
		Connection conn = null;
		String datauser = "";
		try {
			try {
				Class.forName(driver);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			conn = DriverManager.getConnection(url, user, password);

			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rset = ps.executeQuery();
			// json = resultSetToJson(rset);
			ResultSetMetaData metaData = rset.getMetaData();
			int columnCount = metaData.getColumnCount();

			// 遍历ResultSet中的每条数据
			while (rset.next()) {

				// 遍历每一列
				datauser += "<tr>";
				datauser += "<td><span class=\"font14\">在线</span></td>";
				for (int i = 1; i <= columnCount; i++) {
					String columnName = metaData.getColumnLabel(i);
					String value = rset.getString(columnName);
					// jsonObj.put(columnName, value);
					if (columnName.equals("name_cn")) {
						datauser += "<td><span class=\"font14\">" + value
								+ "</span></td>";
					} else if (columnName.equals("mac")) {
						datauser += "<td><span class=\"font14\">" + value
								+ "</span></td>";
					} else if (columnName.equals("dev_name")) {
						datauser += "<td><span class=\"font14\">" + value
								+ "</span></td>";
					} else if (columnName.equals("login_time")) {
						long l = Long.parseLong(value);
						SimpleDateFormat sf = new SimpleDateFormat(
								"yyyy-MM-dd HH:mm:ss");
						Date date = new Date(l);
						// datauser+="<td><span class=\"font14\">"+sf.format(date)+"</span></td>";
					} else if (columnName.equals("report_time")) {
						long l = Long.parseLong(value);
						SimpleDateFormat sf = new SimpleDateFormat(
								"yyyy-MM-dd HH:mm:ss");
						Date date = new Date(l);
						// datauser+="<td><span class=\"font14\">"+sf.format(date)+"</span></td>";
					}

				}
				datauser += "</tr>";

			}
			ps.close();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		request.setAttribute("datauser", datauser);
		return view;
	}

	@RequestMapping(value = "/mall!store_ap.do", method = RequestMethod.GET)
	public ModelAndView getap(HttpServletRequest request) {
		// 创建HttpClient实例

		ModelAndView view = new ModelAndView("source/page/eye/store_ap.jsp");
		String storename = "北研";
		storename = request.getParameter("name");
		String uid = request.getParameter("uid");
		try {
			storename = new String(storename.getBytes("ISO-8859-1"), "utf-8");
		} catch (UnsupportedEncodingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		request.setAttribute("name", storename);
		request.setAttribute("uid", uid);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("uid", uid);

		String dataSourceName = DbContextHolder.getDataSourceName("10000");
		DbContextHolder.setDbType(dataSourceName);

		List<ApMessage> apMessageList = apMessageService.searchbyuid(map);
		view.addObject(apMessageList);
		DbContextHolder.clearDbType();
		return view;
	}

	// 管理员登陆省初始化(只查询默认管理省)
	@ResponseBody
	@RequestMapping(value = "/mall!GetCity")
	public List GetCity(HttpServletRequest req, HttpServletResponse rep) {
		rep.setContentType("text/html;charset=utf-8");
		String pid = req.getParameter("pid");
		String json = "";
		String url = "http://www.nuomi.com/pcindex/main/cityajax?";
		url += "pid=" + pid;

		HttpClient httpclient = new DefaultHttpClient();
		// 创建Get方法实例
		HttpGet httpgets = new HttpGet(url);
		HttpResponse response = null;
		try {
			response = httpclient.execute(httpgets);
		} catch (ClientProtocolException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		HttpEntity entity = response.getEntity();
		if (entity != null) {
			InputStream instreams = null;
			try {
				instreams = entity.getContent();
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			json = convertStreamToString(instreams);
			httpgets.abort();
		}
		PrintWriter out = null;
		try {
			out = rep.getWriter();
			out.write(json);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (null != out) {
				out.close();
			}
		}
		return null;
	}

	// 管理员登陆省初始化(只查询默认管理省)
	@ResponseBody
	@RequestMapping(value = "/mall!addnodes")
	public List addnodes(HttpServletRequest req, HttpServletResponse rep) {
		rep.setContentType("text/html;charset=utf-8");
		String pid = req.getParameter("pid");
		String json = "";
		String URL = "http://42.123.76.18/addnodes";
		URL url=null;
		try {
			url = new URL(URL);
		} catch (MalformedURLException e2) {
			// TODO Auto-generated catch block
			e2.printStackTrace();
		}
		URLConnection urlCon=null;
		try {
			urlCon = url.openConnection();
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		urlCon.setDoOutput(true);
		urlCon.setDoInput(true);
		urlCon.setUseCaches(false);
		urlCon.setRequestProperty("Content-Type", "application/json");

		String jsonnode = "{";
		jsonnode += "\"username\":\"admin\",";
		jsonnode += "\"password\":\"ctbri@2014\",";
		jsonnode += "\"AP\":[";
		jsonnode += "		    {";
		jsonnode += "\"address\":{";
		jsonnode += "\"province\": \"330000\",";
		jsonnode += "\"city\": \"330300\",";
		jsonnode += "\"district\": \"330302\",";
		jsonnode += "\"detail\": \"鹿城路34号\"";
		jsonnode += "      },";
		jsonnode += "\"contact\":{";
		jsonnode += "\"merchant\":\"土豆心愿快餐店\",";
		jsonnode += "\"name\":\"王一\",";
		jsonnode += "\"phonenum\":\"18900403344\",";
		jsonnode += "\"telephonenum\":\"43343222\",";
		jsonnode += "\"email\":\"wangyi@sina.com\",";
		jsonnode += "\"weixin\":\"tudou\"";
		jsonnode += " },";
		jsonnode += "\"data\":{";
		jsonnode += "\"name\":\"ap122test\",";
		jsonnode += "\"mac\":\"E00696C98F19\",";
		jsonnode += "\"redirect_url\":\"http://x.x.x.x/xx\",";
		jsonnode += "\"portal_url\":\"http://x.x.x.x/xx\"";
		jsonnode += "	    }";
		jsonnode += "	   }";
		jsonnode += "	]";
		jsonnode += "	}";

		DataOutputStream printout;
		InputStream instr = null;
		try {
			printout = new DataOutputStream(
					urlCon.getOutputStream());
			//printout.write(jsonnode);
			printout.flush();
			printout.close();
			instr = urlCon.getInputStream();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		String ResponseString = convertStreamToString(instr);
		if ((ResponseString == null) || ("".equals(ResponseString.trim()))) {
			System.out.println("返回空");
		}
		System.out.println("返回数据为:" + ResponseString);
		return null;
	}
	
	@ResponseBody
	@RequestMapping(value = "/eye!getApType.do")
	public void getApType(HttpServletRequest req, HttpServletResponse rep) {
		rep.setContentType("text/html;charset=utf-8");
		//接收level和区域code
		String level=req.getParameter("level");
		if(level==null){
			level="";
		}
		int le=-1;
		if(!level.trim().equals("")){
			le=Integer.parseInt(level);
		}
		String province=req.getParameter("province");
		if(province==null){
			province="";
		}
		String city=req.getParameter("city");
		if(city==null){
			city="";
		}
		String borough=req.getParameter("borough");
		if(borough==null){
			borough="";
		}
		String business=req.getParameter("business");
		if(business==null){
			business="";
		}
		String type=req.getParameter("type");
		try {
			province = new String(province.getBytes("ISO-8859-1"), "utf-8");
			city = new String(city.getBytes("ISO-8859-1"), "utf-8");
			borough = new String(borough.getBytes("ISO-8859-1"), "utf-8");
			business = new String(business.getBytes("ISO-8859-1"), "utf-8");
		} catch (UnsupportedEncodingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		 
		
		Map map = new HashMap();
		map.put("province", province);
		map.put("city", city);
		map.put("business", business);
		map.put("borough", borough);
		map.put("type", type);
		if(le!=-1){
		  map.put("level", level);
		}
		String dataSourceName = DbContextHolder.getDataSourceName("10000");
		DbContextHolder.setDbType(dataSourceName);
		List<ApType> countList=eyeService.getApType(map);
		DbContextHolder.clearDbType();
		//将json数据传回
		String json = JSONArray.fromObject(countList).toString();
		PrintWriter out = null;
		try {
			out = rep.getWriter();
			out.write(json);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (null != out) {
				out.close();
			}
		}
	}
	
	@RequestMapping(value = "/mall!foursqure.do", method = RequestMethod.GET)
	public ModelAndView foursqure(HttpServletRequest request) {
		// 创建HttpClient实例

		ModelAndView view = new ModelAndView("source/page/foursqure/foursqure.jsp");
		return view;
	}

	@RequestMapping(value = "/mall!foursqure_city.do", method = RequestMethod.GET)
	public ModelAndView getfoursqurecity(HttpServletRequest request) {
		// 创建HttpClient实例

		ModelAndView view = new ModelAndView("source/page/foursqure/city.jsp");
		return view;
	}

}
