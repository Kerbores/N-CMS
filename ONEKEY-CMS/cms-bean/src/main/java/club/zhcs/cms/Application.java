package club.zhcs.cms;

import org.nutz.ioc.impl.PropertiesProxy;
import org.nutz.mvc.Mvcs;

/**
 * 
 * @author kerbores
 * @email kerbores@gmail.com
 *
 */
public class Application {

	/**
	 *
	 * @author 王贵源
	 * @description session keys
	 * @Copyright 内部代码,禁止转发
	 * @date 2015年12月28日 下午9:54:31
	 *
	 */
	public static class SessionKeys {
		/**
		 * 用戶在session中保存的key
		 */
		public static final String USER_KEY = "KERBORES_USER";
		public static final String WECHAT_USER_KEY = "KERBORES_WECHAT_USER";
	}

	public static  String config(String key){
		return Mvcs.getIoc().get(PropertiesProxy.class,"config").get(key);
	}

}
