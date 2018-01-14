package com.ssh.shop.dao;

import com.ssh.shop.po.Boss;

public interface BossDao {
	Boss findByUsernameAndPassword(Boss boss);

	boolean password(Boss boss, String password1);
}
