package org.snnu.lier.config;

import at.pollux.thymeleaf.shiro.dialect.ShiroDialect;
import org.apache.shiro.mgt.DefaultSessionStorageEvaluator;
import org.apache.shiro.mgt.DefaultSubjectDAO;
import org.apache.shiro.spring.LifecycleBeanPostProcessor;
import org.apache.shiro.spring.security.interceptor.AuthorizationAttributeSourceAdvisor;
import org.apache.shiro.spring.web.ShiroFilterFactoryBean;
import org.apache.shiro.web.mgt.DefaultWebSecurityManager;

import org.snnu.lier.common.jwt.JwtFilter;
import org.snnu.lier.realm.UserRealm;
import org.springframework.aop.framework.autoproxy.DefaultAdvisorAutoProxyCreator;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import javax.servlet.Filter;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;

@Configuration
public class ShiroConfig {
    /**
     * ShiroFilter是整个Shiro的入口点，用于拦截需要安全控制的请求进行处理
     */
    @Bean(name = "shiroFilter")
    public ShiroFilterFactoryBean getShiroFilterFactoryBean(@Qualifier("securityManager") DefaultWebSecurityManager securityManager){
        ShiroFilterFactoryBean shiroFilter = new ShiroFilterFactoryBean();
        //设置安全管理器
        shiroFilter.setSecurityManager(securityManager);
        //登陆请求
        shiroFilter.setLoginUrl("/toLogin");
        shiroFilter.setUnauthorizedUrl("/toLogin");
        /**
         * 拦截设置
         * anon:无需认证就可以访问
         * authc:必须认证了才可以访问
         * user:必须拥有记住我功能才能用
         * perms:拥有对某个资源的权限才能访问
         * role:拥有某个角色权限才能访问
         * */
        Map<String, Filter> filterMap = new HashMap<>();
        //设置自定义的JWT过滤器
        filterMap.put("jwt", new JwtFilter());
        shiroFilter.setFilters(filterMap);
        //当前请求地址必须认证后访问
        Map<String, String> filterRuleMap = new LinkedHashMap<>();
//        filterRuleMap.put("/user/login","anon");
        filterRuleMap.put("/","anon");
        filterRuleMap.put("/toLogin","anon");
        filterRuleMap.put("/user/login","anon");
        filterRuleMap.put("/sign/up","anon");
        filterRuleMap.put("/index.html","anon");
        filterRuleMap.put("/statics/**","anon");
        filterRuleMap.put("/favicon.ico","anon");
        filterRuleMap.put("/verifyCode","anon");

        filterRuleMap.put("/**","jwt");
//        filterRuleMap.put("/user/*","authc");
        //错误页面，认证不通过跳转

        shiroFilter.setFilterChainDefinitionMap(filterRuleMap);
        return shiroFilter;
    }


    /**
     * SecurityManager：安全管理器
     */
    @Bean(name = "securityManager")
//    public DefaultWebSecurityManager securityManager(@Qualifier("sessionManager") SessionManager sessionManager,@Qualifier("userRealm") UserRealm userRealm) {
    public DefaultWebSecurityManager securityManager(@Qualifier("userRealm") UserRealm userRealm) {
        DefaultWebSecurityManager securityManager = new DefaultWebSecurityManager();
        //设置realm
        securityManager.setRealm(userRealm);

        // 关闭session
        DefaultSubjectDAO defaultSubjectDAO = new DefaultSubjectDAO();
        DefaultSessionStorageEvaluator sessionStorageEvaluator = new DefaultSessionStorageEvaluator();
        sessionStorageEvaluator.setSessionStorageEnabled(false);
        defaultSubjectDAO.setSessionStorageEvaluator(sessionStorageEvaluator);
        securityManager.setSubjectDAO(defaultSubjectDAO);

        return securityManager;
    }


    //第一步：创建realm对象，并被Spring托管
    @Bean(name = "userRealm")
    public UserRealm userRealm() {
        UserRealm userRealm = new UserRealm();
        //指定处理加解密的匹配工具类
        MyCredentialsMatcher myCredentialsMatcher = new MyCredentialsMatcher();
        myCredentialsMatcher.setHashAlgorithmName("MD5");
        myCredentialsMatcher.setHashIterations(1);
        userRealm.setCredentialsMatcher(myCredentialsMatcher);

        return userRealm;
    }


//-------------------------------------开启shiro注解


    /**
     * 管理Shiro中一些bean的生命周期
     */
    @Bean("lifecycleBeanPostProcessor")
    public LifecycleBeanPostProcessor lifecycleBeanPostProcessor() {
        return new LifecycleBeanPostProcessor();
    }
    /**
     * 扫描上下文，寻找所有的Advistor(通知器）
     * 将这些Advisor应用到所有符合切入点的Bean中。
     */
    @Bean
    public DefaultAdvisorAutoProxyCreator defaultAdvisorAutoProxyCreator() {
        DefaultAdvisorAutoProxyCreator proxyCreator = new DefaultAdvisorAutoProxyCreator();
        proxyCreator.setProxyTargetClass(true);
        return proxyCreator;
    }
    /**
     * 匹配所有加了 Shiro 认证注解的方法
     */
    @Bean
    public AuthorizationAttributeSourceAdvisor authorizationAttributeSourceAdvisor(@Qualifier("securityManager") DefaultWebSecurityManager securityManager) {
        AuthorizationAttributeSourceAdvisor advisor = new AuthorizationAttributeSourceAdvisor();
        advisor.setSecurityManager(securityManager);
        return advisor;
    }


    /**
     * 配置ShiroDialect:用于thymeleaf和shiro标签配合使用
     */
    @Bean
    public ShiroDialect getShiroDialect(){
        return new ShiroDialect();
    }

}
