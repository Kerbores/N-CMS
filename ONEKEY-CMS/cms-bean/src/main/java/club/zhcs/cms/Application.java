package club.zhcs.cms;

import org.nutz.ioc.impl.PropertiesProxy;
import org.nutz.mvc.Mvcs;

/**
 * 
 * @author kerbores
 *
 * @email kerbores@gmail.com
 *
 */
public class Application {

	/**
	 * 
	 * @author kerbores
	 *
	 * @email kerbores@gmail.com
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
