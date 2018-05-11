package com.pm.tool;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.pm.pojo.Employee;

public class EmployeeTool {

	private static Employee employee;
	private static String fileName;
	private static String filePath;
	
	public static void init(HttpServletRequest request){
		employee = new Employee();
		if(request.getSession().getAttribute("userAccount")!=null)
			employee=(Employee) request.getSession().getAttribute("userAccount");
			filePath = request.getSession().getServletContext().getRealPath("/")+"img/"+employee.getE_id();
			fileName=filePath+"/touxiang.png";
	}

	public static String getE_id() {
		return employee.getE_id();
	}
	public static String getE_job(){
		return employee.getE_job();
	}
	public static String getFileName(){
		return fileName;
	}
	
	public static void getIMG(Map<String, Object> param){
		InputStream in = null;
		if(param.get("E_PIC") != null){
			File path = new File(filePath);
			if(!path.exists()) path.mkdirs();
			String fileName = EmployeeTool.getFileName();
			java.sql.Blob b = (Blob) param.get("E_PIC");
			System.out.println(fileName);
			try {
				byte [] bytes = new byte[(int)b.length()];
				in = b.getBinaryStream();
				in.read(bytes);
				File file = new File(fileName);
				FileOutputStream out = new FileOutputStream(file);
				out.write(bytes);
				out.flush();
				out.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				try {
					in.close();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}
		}
	}
	/*public static void setE_id(String e_id) {
		this.e_id = e_id;
	}
	public static String getE_name() {
		return e_name;
	}
	public static void setE_name(String e_name) {
		this.e_name = e_name;
	}
	public static String getD_id() {
		return d_id;
	}
	public static void setD_id(String d_id) {
		this.d_id = d_id;
	}
	public static String getE_time() {
		return e_time;
	}
	public static void setE_time(String e_time) {
		this.e_time = e_time;
	}
	public static String getE_tel() {
		return e_tel;
	}
	public static void setE_tel(String e_tel) {
		this.e_tel = e_tel;
	}
	public static String getSex() {
		return sex;
	}
	public static void setSex(String sex) {
		this.sex = sex;
	}
	public static String getE_job() {
		return e_job;
	}
	public static void setE_job(String e_job) {
		this.e_job = e_job;
	}
	public static String getE_pwd() {
		return e_pwd;
	}
	public static void setE_pwd(String e_pwd) {
		this.e_pwd = e_pwd;
	}
	public static String getIdcard() {
		return idcard;
	}
	public static void setIdcard(String idcard) {
		this.idcard = idcard;
	}
	public static String getE_type() {
		return e_type;
	}
	public static void setE_type(String e_type) {
		this.e_type = e_type;
	}*/
	
}
