package com.ssh.shop.action;

import java.io.*;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.ssh.shop.po.PageBean;
import com.ssh.shop.po.Book;
import com.ssh.shop.po.BookVariety;
import com.ssh.shop.service.BookService;

public class BookAction extends ActionSupport implements ModelDriven<Book> {
	private Book book = new Book();
	private BookService bookService;

	@Override
	public Book getModel() {
		// TODO Auto-generated method stub
		Date date = new Date();
		this.book.setPublishDate(date);
		return book;
	}

	// 上传文件存放路径
	private final static String UPLOADDIR = "/upload";
	// 上传文件集合
	private List<File> file;
	// 上传文件名集合
	private List<String> fileFileName;
	// 上传文件内容类型集合
	private List<String> fileContentType;

	public List<File> getFile() {
		return file;
	}

	public void setFile(List<File> file) {
		this.file = file;
	}

	public List<String> getFileFileName() {
		return fileFileName;
	}

	public void setFileFileName(List<String> fileFileName) {
		this.fileFileName = fileFileName;
	}

	public List<String> getFileContentType() {
		return fileContentType;
	}

	public void setFileContentType(List<String> fileContentType) {
		this.fileContentType = fileContentType;
	}

	public void setBookService(BookService bookService) {
		this.bookService = bookService;
	}

	// 下载电子书
	private InputStream fileInput;
	private String fileName;

	public String getFileName() {
		try {
			fileName = new String(fileName.getBytes(), "ISO8859-1");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public InputStream getFileInput() {
		return fileInput;
	}

	public void setFileInput(InputStream fileInput) {
		this.fileInput = fileInput;
	}

	public String downloadBook() throws Exception {
		fileInput = ServletActionContext.getServletContext().getResourceAsStream("upload/" + fileName);
		return "downloadBook";
	}

	// 分页查询
	private Integer currPage = 1;

	public void setCurrPage(Integer currPage) {
		this.currPage = currPage;
	}

	public String findAllBook() {
		PageBean<Book> pageBean = bookService.findByPage(currPage);
		ActionContext.getContext().getValueStack().push(pageBean);
		return "findAllBook";
	}

	public String addBookUI() {
		List<BookVariety> list1 = bookService.findAll();
		System.out.println(list1.size());
		ActionContext.getContext().getValueStack().set("list1", list1);
		return "addBookUI";
	}

	public String addBook() {
		System.out.println(this.getFileFileName());
		for (int i = 0; i < file.size(); i++) {
			// 循环上传每个文件
			uploadFile(i);
		}
		bookService.addBook(book);
		return "addBook";
	}

	// 上传文件方法
	private void uploadFile(int i) {
		try {
			InputStream in = new FileInputStream(file.get(i));
			String dir = ServletActionContext.getRequest().getRealPath(UPLOADDIR);
			File fileLocation = new File(dir);
			// 此处也可以在应用根目录手动建立目标上传目录
			if (!fileLocation.exists()) {
				boolean isCreated = fileLocation.mkdir();
				if (!isCreated) {
					// 目标上传目录创建失败,可做其他处理,例如抛出自定义异常等,一般应该不会出现这种情况。
					return;
				}
			}
			Date date = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
			String fileName = this.getFileFileName().get(i);
			fileName = fileName.substring(0, fileName.indexOf(".")) + "_" + sdf.format(date)
					+ fileName.substring(fileName.indexOf("."));
			if (i == 0) {
				this.book.setBookPath(fileName);
			} else {
				this.book.setCover("upload" + "/" + fileName);
			}
			File uploadFile = new File(dir, fileName);
			OutputStream out = new FileOutputStream(uploadFile);
			byte[] buffer = new byte[1024 * 1024];
			int length;
			while ((length = in.read(buffer)) > 0) {
				out.write(buffer, 0, length);
			}
			in.close();
			out.close();
		} catch (FileNotFoundException ex) {
			System.out.println("上传失败!");
			ex.printStackTrace();
		} catch (IOException ex) {
			System.out.println("上传失败!");
			ex.printStackTrace();
		}
	}

	//
	// // 数据库里的删除文件方法
	// public String delete() {
	// List<String> paths = bookService.delete(book);
	// for (int i = 0; i < paths.size(); i++) {
	// File file = new File(paths.get(i));
	// if (file.delete()) {
	// System.out.println("删除成功！");
	// }
	// }
	// bookService.deleteDate(book);
	// return "delete";
	// }
	//
	// // 跳转到编辑页面
	// public String edit() {
	// book = bookService.findById(book.getBid());
	// return "edit";
	// }
	//
	// // 修改编辑
	// public String save() {
	// System.out.println("正在执行修改编辑！");
	// if (bookService.update(book)) {
	// return "save";
	// }
	// return "savefalse";
	//
	// }
}
