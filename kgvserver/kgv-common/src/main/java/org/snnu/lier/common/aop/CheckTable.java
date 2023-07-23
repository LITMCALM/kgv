package org.snnu.lier.common.aop;

import javafx.beans.DefaultProperty;
import lombok.Data;
import lombok.extern.slf4j.Slf4j;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.sql.*;

@Slf4j(topic = "CheckTableAop")
@Data
@Component
@Aspect
@ConfigurationProperties(prefix = "spring.datasource")
public class CheckTable {

    private String url;
    private String username;
    private String password;
    @Pointcut("@annotation(org.snnu.lier.common.aop.CheckTab)")
    public void aopPointcut() {
    }

    @Before("aopPointcut()&&@annotation(checkTab)")
    public void pre(CheckTab checkTab) {
        if(!checkResult(checkTab.tableName())){
            log.info(checkTab.tableName()+"表格不存在");
        }
        else{
            log.info(checkTab.tableName()+"表格存在");
        }
    }

    @After("aopPointcut()")
    public void post() {
//        log.info("之后增强......");
    }


    public boolean checkResult(String tableName) {
        Connection connection = null;
        DatabaseMetaData meta = null;
        ResultSet rs = null;
        Boolean flag = false;
        try {
            connection = DriverManager.getConnection(url, username, password);
            meta = (DatabaseMetaData) connection.getMetaData();
            rs = meta.getTables(null, null, tableName, null);//table为表名
            flag = rs.next();
            rs.close();
            connection.close();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return flag;
    }
}
