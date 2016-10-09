package club.zhcs.cms.chain;

import org.nutz.ioc.impl.PropertiesProxy;
import org.nutz.lang.Strings;
import org.nutz.log.Log;
import org.nutz.log.Logs;
import org.nutz.mvc.ActionContext;
import org.nutz.mvc.Mvcs;
import org.nutz.mvc.impl.processor.AbstractProcessor;

/**
 * 
 * @author kerbores
 *
 * @email kerbores@gmail.com
 *
 */
public class WxUserInjectProcessor extends AbstractProcessor {

	Log log = Logs.get();

	@Override
	public void process(ActionContext ac) throws Throwable {

		// WxApi2Impl api = ac.getIoc().get(WxApi2Impl.class, "wxApi");
		//
		// NutzerService nutzerService = ac.getIoc().get(NutzerService.class);
		//
		// if (isDebug()) {
		// // 开发环境模拟一下
		// String openid = "oP6Sxt6WqoxC03M8w4XgB0-HnZQU";
		// Mvcs.getReq().getSession().setAttribute("openid", openid);
		// Mvcs.getReq().getSession().setAttribute(Application.SessionKeys.WECHAT_USER_KEY,
		// nutzerService.fetch(Cnd.where("openid", "=", openid)));
		// doNext(ac);
		// return;
		// }
		//
		// String code = Mvcs.getReq().getParameter("code");
		// if (Strings.isBlank(code)) {// 没有code参数
		// doNext(ac);
		// return;
		// }
		// String wechatInterface =
		// "https://api.weixin.qq.com/sns/oauth2/access_token?appid=" +
		// api.getAppid() + "&secret=" + api.getAppsecret() + "&code=" + code
		// + "&grant_type=authorization_code";
		// log.debug("ready to invoke url : " + wechatInterface);
		// String info = Http.get(wechatInterface).getContent();
		// NutMap data = Lang.map(info);
		// if (data.get("errcode") != null) {
		// log.error("=====error msg:" + data.get("errcode") + ",error msg:" +
		// data.get("errmsg") + "======");
		// doNext(ac);
		// return;
		// }
		// log.debug("successful invoke ,return message:\n" + data.toString());
		// Mvcs.getReq().getSession().setAttribute("openid",
		// data.getString("openid"));
		//
		// Mvcs.getReq().getSession().setAttribute(Application.SessionKeys.WECHAT_USER_KEY,
		// nutzerService.fetch(Cnd.where("openid", "=",
		// data.getString("openid"))));
		doNext(ac);
	}

	// 开发者本地打开方式调试
	public boolean isDebug() {
		return Strings.equalsIgnoreCase("localhost", Mvcs.getReq().getServerName()) || Strings.equalsIgnoreCase("127.0.0.1", Mvcs.getReq().getServerName())
				|| Mvcs.getIoc().get(PropertiesProxy.class, "config").getBoolean("debug");
	}

}
