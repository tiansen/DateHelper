package com.teamwork.service;

import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import com.teamwork.entity.*;
import com.teamwork.dao.BaseDao;

@Service("dateService")//创建一个实例userService
@Transactional//事务管理
public class DateService {
	//给UserService注入BaseDao
	@Resource
	private BaseDao baseDao;
	
	/**
	 * 查询用户信息
	 * @param name
	 * @param pass
	 * @return
	 */
	//方法的注释,查询不需要启动事务，所以用NOT_SUPPORTED
	@Transactional(propagation=Propagation.NOT_SUPPORTED,readOnly = true)
	public List userDate(int ID){
		String hql="from User as u where u.userId=?";
		Object[] values = new Object[]{ID};
		List list = this.baseDao.findObjectByHql(hql, values);
		return list;
	}

	/**
	 * 保存服务数据
	 * @param service
	 */
	public void addDate(com.teamwork.entity.Date date){
		this.baseDao.saveObject(date);
	}
	/**
	 * 查找全部约会
	 * @return
	 */
	@Transactional(propagation=Propagation.NOT_SUPPORTED,readOnly = true)
	public PageModel findAllDate(int offset,int line){
		PageModel model = new PageModel();
		String hql="from Date";
		String countHql="select count(*) from Date";
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
	 * 查找全部约会
	 * @return
	 */
	@Transactional(propagation=Propagation.NOT_SUPPORTED,readOnly = true)
	public PageModel findAllDateById(int offset,int line,int id){
		PageModel model = new PageModel();
		String hql="from Date as d where d.userId ="+id;
		String countHql="select count(*) from Date as d where d.userId ="+id;
		int allLine = this.getAllLine(countHql);
		//System.out.println("allLine："+allLine);
		List userList = this.baseDao.findObjByFenye(hql, offset, line);
		model.setEntityList(userList);
		model.setNextLine(offset+line);
		model.setOnLine(offset-line);
		model.setAllLine(allLine);
	    System.out.println("结果集的个数："+userList.size());
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
	 * 根据ID删除约会
	 * @param id
	 */
	public void deleteDate(int id ){
		try {
			this.baseDao.deleteObject(Date.class, id);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	/**
	 * 根据ID查询约会信息
	 * @param id
	 */
	@Transactional(propagation=Propagation.NOT_SUPPORTED,readOnly = true)
	public Date getDateByID(int id){
		return (Date)this.baseDao.getObjectByID(Date.class, id);
	}
	/**
	 * 更新约会信息
	 * @param id
	 */
	public void updateDate(Date d){
		this.baseDao.updateObject(d);
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
	public PageModel findAllService(){
		int offset=0;
		int line=100;
		PageModel model = new PageModel();
		String hql="from Service";
		String countHql="select count(*) from Service";
		int allLine = this.getAllLine(countHql);
		List userList = this.baseDao.findObjByFenye(hql, offset, line);
		model.setEntityList(userList);
		model.setNextLine(offset+line);
		model.setOnLine(offset-line);
		model.setAllLine(allLine);
		return model;
	}
}
