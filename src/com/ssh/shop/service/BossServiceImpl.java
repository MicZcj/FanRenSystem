package com.ssh.shop.service;

import com.ssh.shop.dao.BossDao;
import com.ssh.shop.po.Boss;

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
}
