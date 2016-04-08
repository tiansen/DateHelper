package com.teamwork.service;

import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import com.teamwork.entity.*;
import com.teamwork.dao.BaseDao;

@Service("userService")//创建一个实例userService
@Transactional//事务管理
public class UserService {
	//给UserService注入BaseDao
	@Resource
	private BaseDao baseDao;
	
	/**
	 * 用户登录
	 * @param name
	 * @param pass
	 * @return
	 */
	//方法的注释,查询不需要启动事务，所以用NOT_SUPPORTED
	@Transactional(propagation=Propagation.NOT_SUPPORTED,readOnly = true)
	public List userLogin(int ID,String password){
		String hql="from User as u where u.userId=? and u.passWord=?";
		Object[] values = new Object[]{ID,password};
		List list = this.baseDao.findObjectByHql(hql, values);
		return list;
	}
	/**
	 * 保存用户数据
	 * @param user
	 */
	public void addUser(User user){
		this.baseDao.saveObject(user);
	}
	
	/**
	 * 保存服务数据
	 * @param user
	 */
	public void addService(com.teamwork.entity.Service service){
		this.baseDao.saveObject(service);
	}
	/**
	 * 查找用户
	 * @return
	 */
	@Transactional(propagation=Propagation.NOT_SUPPORTED,readOnly = true)
	public PageModel findUser(int offset,int line,int sign){
		PageModel model = new PageModel();
		String hql,countHql;
		if (sign==0) {
			hql="from User";
			countHql="select count(*) from User";
		} else {
			hql="from User as u where u.role=1";
			countHql="select count(*) from User as u where u.role=1";
		}
		
		int allLine = this.getAllLine(countHql);
		System.out.println("allLine："+allLine);
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
	 * 根据ID删除用户
	 * @param id
	 */
	public void deleteUser(int id ){
		try {
			this.baseDao.deleteObject(User.class, id);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	/**
	 * 根据ID查询数据
	 * @param id
	 */
	@Transactional(propagation=Propagation.NOT_SUPPORTED,readOnly = true)
	public User getUserByID(int id){
		return (User)this.baseDao.getObjectByID(User.class, id);
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
		System.out.println("allLine："+allLine);
		List userList = this.baseDao.findObjByFenye(hql, offset, line);
		model.setEntityList(userList);
		model.setNextLine(offset+line);
		model.setOnLine(offset-line);
		model.setAllLine(allLine);
		//System.out.println("结果集的个数："+userList.size());
		return model;
	}
	/**
	 * 更新用户信息
	 * @param id
	 */
	public void updateUser(User u){
		this.baseDao.updateObject(u);
	}
	/**
	 * 查找合适的用户
	 * @return
	 */
	@Transactional(propagation=Propagation.NOT_SUPPORTED,readOnly = true)
	public PageModel findRightUser(int offset,int line,int sign,int id,int sex){
		PageModel model = new PageModel();
		String hql,countHql;

			hql="from User as u where u.sex!="+sex+" and u.userId!="+id+" and u.maritalStatus=0";
			countHql="select count(*) from User as u where u.sex!="+sex+" and u.userId!="+id+" and u.maritalStatus=0";
//		System.out.println("开始查询");
		int allLine = this.getAllLine(countHql);
		System.out.println("allLine："+allLine);
		List userList = this.baseDao.findObjByFenye(hql, offset, line);
		model.setEntityList(userList);
		model.setNextLine(offset+line);
		model.setOnLine(offset-line);
		model.setAllLine(allLine);
//		System.out.println("结果集的个数："+userList.size());
		return model;
	}
}
