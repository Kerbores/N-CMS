package club.zhcs.cms.module;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.authz.annotation.RequiresAuthentication;
import org.beetl.ext.nutz.BeetlViewMaker;
import org.nutz.integration.shiro.ShiroSessionProvider;
import org.nutz.ioc.impl.PropertiesProxy;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.lang.Lang;
import org.nutz.lang.Strings;
import org.nutz.lang.util.NutMap;
import org.nutz.mvc.View;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Attr;
import org.nutz.mvc.annotation.By;
import org.nutz.mvc.annotation.ChainBy;
import org.nutz.mvc.annotation.Fail;
import org.nutz.mvc.annotation.Filters;
import org.nutz.mvc.annotation.IocBy;
import org.nutz.mvc.annotation.Modules;
import org.nutz.mvc.annotation.Ok;
import org.nutz.mvc.annotation.Param;
import org.nutz.mvc.annotation.SessionBy;
import org.nutz.mvc.annotation.SetupBy;
import org.nutz.mvc.annotation.UrlMappingBy;
import org.nutz.mvc.annotation.Views;
import org.nutz.mvc.filter.CheckSession;
import org.nutz.mvc.ioc.provider.ComboIocProvider;
import org.nutz.plugins.apidoc.ApidocUrlMapping;
import org.nutz.plugins.apidoc.annotation.Api;
import org.nutz.plugins.apidoc.annotation.ApiMatchMode;

import club.zhcs.cms.Application.SessionKeys;
import club.zhcs.cms.ThunderSetup;
import club.zhcs.cms.bean.acl.User;
import club.zhcs.cms.biz.acl.RoleService;
import club.zhcs.cms.chain.ThunderChainMaker;
import club.zhcs.cms.task.APMTask;
import club.zhcs.titans.nutz.captcha.JPEGView;
import club.zhcs.titans.nutz.module.base.AbstractBaseModule;
import club.zhcs.titans.utils.codec.DES;
import club.zhcs.titans.utils.db.Result;

/**
 * 
 * @author Kerbores(kerbores@gmail.com)
 *
 * @project thunder-web
 *
 * @file MainModule.java
 *
 * @description 主模块
 *
 * @time 2016年3月8日 上午10:51:26
 *
 */

@Ok("json")
@Fail("http:500")
@Modules(scanPackage = true)
@SetupBy(ThunderSetup.class)
@Views({ BeetlViewMaker.class })
@SessionBy(ShiroSessionProvider.class)
@UrlMappingBy(ApidocUrlMapping.class)
@ChainBy(type = ThunderChainMaker.class, args = {})
@Filters({ @By(type = CheckSession.class, args = { SessionKeys.USER_KEY, "/" }) })
@Api(name = "N-CMS 开放 API", description = "N-CMS 开放 API", match = ApiMatchMode.NONE)
@IocBy(type = ComboIocProvider.class, args = { "*anno", "club.zhcs", "*tx", "*js", "ioc", "*async", "*quartz", "quartz", "*sigar", "sigar" })
public class MainModule extends AbstractBaseModule {

	private @Inject RoleService roleService;

	@Inject
	APMTask apmTask;

	@Inject
	PropertiesProxy config;

	@At("/403")
	@Ok("http:403")
	public void _403() {

	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.kerbores.nutz.module.base.AbstractBaseModule#_getNameSpace()
	 */
	@Override
	public String _getNameSpace() {
		return "main";
	}

	@At
	@Filters
	public View captcha(@Param("length") int length) {
		return new JPEGView(null, length);
	}

	@At
	@Filters
	public Result dashboard() {
		return apmTask.data();
	}

	@At
	@Filters
	public Result hello(HttpServletRequest request) {
		return Result.success().addData("msg", "Hello nutz-thunder!").addData("url", request.getRequestURL());
	}

	@At("/")
	@Ok("jsp:/login")
	@Filters
	public View login(@Attr(SessionKeys.USER_KEY) User user, HttpServletRequest request) {
		request.setAttribute("config", config);
		String cookie = _getCookie("kerbores");
		if (!Strings.isBlank(cookie)) {
			NutMap data = Lang.map(DES.decrypt(cookie));
			request.setAttribute("loginInfo", data);
		}
		return null;
	}

	@At
	@Filters
	@RequiresAuthentication
	public Result shiro() {

		return Result.success();
	}

	@At("/testSigar")
	@Filters
	public Result testSigar(HttpServletRequest request) throws IOException {

		System.err.println(request.getHeader("token"));

		String info = Lang.readAll(request.getReader());
		return Result.success().addData("info", Lang.map(info));
	}

}
