package com.ssh.shop.service;

import com.ssh.shop.po.Boss;

public interface BossService {

	Boss login(Boss boss);

	boolean password(Boss boss, String password1);

}
