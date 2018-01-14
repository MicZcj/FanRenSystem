package com.ssh.shop.service;

import org.springframework.transaction.annotation.Transactional;

import com.ssh.shop.dao.BossDao;
import com.ssh.shop.po.Boss;
@Transactional
public class BossServiceImpl implements BossService {
	// sevice中注入dao
	private BossDao bossDao;

	public void setBossDao(BossDao bossDao) {
		this.bossDao = bossDao;
	}

	@Override
	public Boss login(Boss boss) {
		Boss existBoss = bossDao.findByUsernameAndPassword(boss);
		return existBoss;
	}

	@Override
	public boolean password(Boss boss, String password1) {

		return bossDao.password(boss, password1);
	}
}
