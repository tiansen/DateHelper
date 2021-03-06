package com.teamwork.service;

import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import com.teamwork.entity.*;
import com.teamwork.dao.BaseDao;

@Service("serviceService")//创建一个实例userService
@Transactional//事务管理
public class ServiceService {
	//给UserService注入BaseDao
	@Resource
	private BaseDao baseDao;
	
//	/**
//	 * 用户登录
//	 * @param name
//	 * @param pass
//	 * @return
//	 */
//	//方法的注释,查询不需要启动事务，所以用NOT_SUPPORTED
//	@Transactional(propagation=Propagation.NOT_SUPPORTED,readOnly = true)
//	public List userLogin(int ID,String password){
//		String hql="from User as u where u.userId=? and u.passWord=?";
//		Object[] values = new Object[]{ID,password};
//		List list = this.baseDao.findObjectByHql(hql, values);
//		return list;
//	}

	/**
	 * 保存服务数据
	 * @param service
	 */
	public void addService(com.teamwork.entity.Service service){
		System.out.println("ser进入");
		this.baseDao.saveObject(service);
		System.out.println("ser跳出");
	}
	/**
	 * 查找全部服务
	 * @return
	 */
	@Transactional(propagation=Propagation.NOT_SUPPORTED,readOnly = true)
	public PageModel findAllService(int offset,int line){
		PageModel model = new PageModel();
		String hql="from Service";
		String countHql="select count(*) from Service";
		int allLine = this.getAllLine(countHql);
		//System.out.println("allLine："+allLine);
		List userList = this.baseDao.findObjByFenye(hql, offset, line);
		model.setEntityList(userList);
		model.setNextLine(offset+line);
		model.setOnLine(offset-line);
		model.setAllLine(allLine);
		//System.out.println("结果集的个数："+userList.size());
		return model;
	}
	/**
	 * 查询所有行数
	 * @param hql
	 * @return
	 */
	@Transactional(propagation=Propagation.NOT_SUPPORTED,readOnly = true)
	public int getAllLine(String hql){
		return Integer.parseInt(this.baseDao.singerResult(hql).toString());
		
	}
	/**
	 * 根据ID删除服务
	 * @param id
	 */
	public void deleteService(int id ){
		try {
			this.baseDao.deleteObject(com.teamwork.entity.Service.class, id);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	/**
	 * 根据ID查询数据
	 * @param id
	 */
	@Transactional(propagation=Propagation.NOT_SUPPORTED,readOnly = true)
	public com.teamwork.entity.Service getServiceByID(int id){
		return (com.teamwork.entity.Service)this.baseDao.getObjectByID(com.teamwork.entity.Service.class, id);
	}
	/**
	 * test
	 * @param id
	 */
	@Transactional(propagation=Propagation.NOT_SUPPORTED,readOnly = true)
	public int test(int id){
		
		return id;
	}
}
