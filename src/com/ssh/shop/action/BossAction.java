package com.ssh.shop.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.ssh.shop.po.Boss;
import com.ssh.shop.service.BossService;

public class BossAction extends ActionSupport implements ModelDriven<Boss> {
	private Boss boss = new Boss();
	private BossService bossService;

	// 设值注入BossService
	public void setBossService(BossService bossService) {
		this.bossService = bossService;
	}

	// 所谓ModelDriven，意思是直接把实体类当成页面数据的收集对象。
	@Override
	public Boss getModel() {
		// TODO Auto-generated method stub
		return boss;
	}

	public String login() {
		System.out.println(this.boss.toString());
		Boss existBoss = bossService.login(boss);
		if (existBoss == null) {
			return "login";
		}
		ActionContext.getContext().getSession().put("existBoss", existBoss);
		return "index";
	}

	public String exit() {
		ActionContext.getContext().getSession().remove("existBoss");
		return "exit";
	}

	public String password() {
		HttpServletRequest request = ServletActionContext.getRequest();
		String password1 = request.getParameter("password1");
		String password2 = request.getParameter("password2");
		System.out.println(boss.getBossName() + boss.getBossID());
		if (!password2.equals(password1)) {
			request.setAttribute("result", 2);
			return "password";
		}
		if (!bossService.password(boss, password1)) {
			request.setAttribute("result", 1);
			return "password";
		}
		request.setAttribute("result", 0);
		return "password";
	}

}
