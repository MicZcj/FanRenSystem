package com.ssh.shop.util;

import java.io.IOException;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFFont;
import org.apache.poi.hssf.usermodel.HSSFHeader;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.struts2.ServletActionContext;

import com.ssh.shop.po.OrderDetail;
import com.ssh.shop.service.OrderService;

public class ExportUtil {
	/*
	 * 因为我这里这个函数要在action类里调用，下面要导出的数据要在数据库里先查询出来，所以里面的函数要传过来一个service对象，也就是业务逻辑类的对象，
	 * 以用来实现相应的业务逻辑
	 */

	public String export(OrderService orderService, Date date1, Date date2) throws Exception {
		List<OrderDetail> orderList = new ArrayList<OrderDetail>();
		System.out.println(orderService + "哈哈哈哈哈哈哈哈");
		orderList = orderService.find(date1, date2);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

		/*
		 * 设置表头：对Excel每列取名 (必须根据你取的数据编写)
		 */
		String[] tableHeader = { "编号", "ISBN", "书名", "用户名", "手机号", "收入金额", "交易日期" };
		/*
		 * 下面的都可以拷贝不用编写
		 */
		short cellNumber = (short) tableHeader.length;// 表的列数
		HSSFWorkbook workbook = new HSSFWorkbook(); // 创建一个excel
		HSSFCell cell = null; // Excel的列
		HSSFRow row = null; // Excel的行
		HSSFCellStyle style = workbook.createCellStyle(); // 设置表头的类型
		style.setAlignment(style.getAlignmentEnum());
		HSSFCellStyle style1 = workbook.createCellStyle(); // 设置数据类型
		style1.setAlignment(style.getAlignmentEnum());
		HSSFFont font = workbook.createFont(); // 设置字体
		HSSFSheet sheet = workbook.createSheet("sheet1"); // 创建一个sheet
		HSSFHeader header = sheet.getHeader();// 设置sheet的头
		try { /**
				 * 根据是否取出数据，设置header信息
				 * 
				 */
			if (orderList.size() < 1) {
				header.setCenter("查无资料");
			} else {
				header.setCenter(date1 + "_" + date2 + "账单表");
				row = sheet.createRow(0);
				row.setHeight((short) 400);
				for (int k = 0; k < cellNumber; k++) {
					cell = row.createCell(k);// 创建第0行第k列
					cell.setCellValue(tableHeader[k]);// 设置第0行第k列的值
					sheet.setColumnWidth(k, 8000);// 设置列的宽度
					font.setColor(HSSFFont.COLOR_NORMAL); // 设置单元格字体的颜色.
					font.setFontHeight((short) 350); // 设置单元字体高度
					style1.setFont(font);// 设置字体风格
					cell.setCellStyle(style1);
				}
				/*
				 * // 给excel填充数据这里需要编写
				 * 
				 */
				for (int i = 0; i < orderList.size(); i++) {
					OrderDetail orderDetail = (OrderDetail) orderList.get(i);// 获取sign对象
					row = sheet.createRow((short) (i + 1));// 创建第i+1行
					row.setHeight((short) 400);// 设置行高

					if (orderDetail.getOrderDetailNum() > 0) {
						cell = row.createCell(0);// 创建第i+1行第0列
						cell.setCellValue(orderDetail.getOrderDetailNum());// 设置第i+1行第0列的值
						cell.setCellStyle(style);// 设置风格
					}
					if (orderDetail.getBook().getIsbn() != "") {
						cell = row.createCell(1); // 创建第i+1行第1列
						cell.setCellValue(orderDetail.getBook().getIsbn());// 设置第i+1行第1列的值
						cell.setCellStyle(style); // 设置风格
					}
					// 由于下面的和上面的基本相同，就不加注释了
					if (orderDetail.getBook().getBookName() != null) {
						cell = row.createCell(2);
						cell.setCellValue(orderDetail.getBook().getBookName());
						cell.setCellStyle(style);
					}
					if (orderDetail.getOrder().getUser().getUserName() != null) {
						cell = row.createCell(3);
						cell.setCellValue(orderDetail.getOrder().getUser().getUserName());
						cell.setCellStyle(style);
					}
					if (orderDetail.getOrder().getUser().getPhone() != null) {
						cell = row.createCell(4);
						cell.setCellValue(orderDetail.getOrder().getUser().getPhone());
						cell.setCellStyle(style);
					}
					if (orderDetail.getOrder().getOrderTotalPrice() != 0) {
						cell = row.createCell(5);
						cell.setCellValue(orderDetail.getOrder().getOrderTotalPrice());
						cell.setCellStyle(style);
					}
					if (orderDetail.getOrder().getDealDate() != null) {
						cell = row.createCell(6);
						cell.setCellValue(sdf.format(orderDetail.getOrder().getDealDate()));
						cell.setCellStyle(style);
					}

				}

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		/*
		 * 下面的可以不用编写，直接拷贝
		 * 
		 */
		HttpServletResponse response = null;// 创建一个HttpServletResponse对象
		OutputStream out = null;// 创建一个输出流对象
		try {
			response = ServletActionContext.getResponse();// 初始化HttpServletResponse对象
			out = response.getOutputStream();//
			response.setHeader("Content-disposition",
					"attachment; filename=" + sdf.format(date1) + "_" + sdf.format(date2) + ".xls");// filename是下载的xls的名，建议最好用英文
			response.setContentType("application/msexcel;charset=UTF-8");// 设置类型
			response.setHeader("Pragma", "No-cache");// 设置头
			response.setHeader("Cache-Control", "no-cache");// 设置头
			response.setDateHeader("Expires", 0);// 设置日期头
			workbook.write(out);
			out.flush();
			workbook.write(out);
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {

				if (out != null) {
					out.close();
				}

			} catch (IOException e) {
				e.printStackTrace();
			}

		}

		return null;
	}
}
