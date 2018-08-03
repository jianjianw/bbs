package cn.saymyname.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class ServerStartupListener implements ServletContextListener {

    private static Logger  logger = LoggerFactory.getLogger(ServerStartupListener.class);
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        ServletContext servletContext = sce.getServletContext();
        String contextPath = servletContext.getContextPath();
        servletContext.setAttribute("APP_PATH",contextPath);
        logger.info("---------------------------------qwe"+contextPath);
        System.out.println(contextPath);
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {

    }
}
