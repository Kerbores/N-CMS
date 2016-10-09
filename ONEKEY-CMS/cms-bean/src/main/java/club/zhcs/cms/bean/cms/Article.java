package club.zhcs.cms.bean.cms;

import org.nutz.dao.entity.annotation.Column;
import org.nutz.dao.entity.annotation.Comment;
import org.nutz.dao.entity.annotation.Name;
import org.nutz.dao.entity.annotation.Table;
import org.nutz.lang.random.R;

import club.zhcs.titans.utils.db.po.Entity;

/**
 * 
 * @author kerbores
 *
 * @email kerbores@gmail.com
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
