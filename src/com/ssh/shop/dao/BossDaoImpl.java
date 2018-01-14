package com.ssh.shop.dao;

import java.util.List;

import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import com.ssh.shop.po.Boss;

public class BossDaoImpl extends HibernateDaoSupport implements BossDao {

	@Override
	public Boss findByUsernameAndPassword(Boss boss) {
		String hql = "from Boss where bossName='" + boss.getBossName() + "' and bossPassword='" + boss.getBossPassword()
				+ "'";
		List<Boss> list = (List<Boss>) this.getHibernateTemplate().find(hql);
		if (list.size() > 0) {
			return list.get(0);
		}
		return null;
	}

	@Override
	public boolean password(Boss boss, String password1) {
		String hql = "from Boss where bossName='" + boss.getBossName() + "' and bossPassword='" + boss.getBossPassword()
				+ "'";
		List<Boss> list = (List<Boss>) this.getHibernateTemplate().find(hql);
		if (list.size() <= 0) {
			return false;
		}
		list.get(0).setBossPassword(password1);
		this.getHibernateTemplate().save(list.get(0));
		return true;
	}
}
