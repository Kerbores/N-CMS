package club.zhcs.cms.bean.cms;

import org.nutz.dao.entity.annotation.Column;
import org.nutz.dao.entity.annotation.Comment;
import org.nutz.dao.entity.annotation.Name;
import org.nutz.dao.entity.annotation.Table;
import org.nutz.lang.random.R;

import club.zhcs.titans.utils.db.po.Entity;

/**
 * @author Kerbores(kerbores@gmail.com)
 *
 * @project thunder-bean
 *
 * @file Article.java
 *
 * @description 文章
 *
 * @time 2016年9月7日 下午3:54:16
 *
 */
@Table("t_article")
@Comment("文章")
public class Article extends Entity {

	@Name
	@Column("a_uid")
	@Comment("文章uuid")
	private String uid;

	{
		uid = R.UU16();
	}

}
