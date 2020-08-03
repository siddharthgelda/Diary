package com.ibm.internal.assignment.config;

import java.sql.SQLException;
import java.util.Properties;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.jdbc.datasource.embedded.EmbeddedDatabase;
import org.springframework.jdbc.datasource.embedded.EmbeddedDatabaseBuilder;
import org.springframework.jdbc.datasource.embedded.EmbeddedDatabaseType;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Profile;
import org.springframework.orm.jpa.JpaVendorAdapter;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;

import com.ibm.internal.assignment.repository.UserRepository;

@Configuration
@EnableJpaRepositories(basePackageClasses = {UserRepository.class})
public class UserServiceConfig {

    @Bean
    @Profile("sidsmachine")
    public DataSource dataSource() {
        DriverManagerDataSource ds = new DriverManagerDataSource();
        ds.setDriverClassName("com.mysql.jdbc.Driver");
      //  ds.setUrl("jdbc:mysql://localhost:3306/DiaryPhase2");
        ds.setUrl("jdbc:mysql://localhost:3306/diaryphasetwo");
        ds.setUsername("root");
        ds.setPassword("");

        return ds;
    }

    @Bean
    @Profile("default")
    public DataSource dataSource1(@Value("${db2.driver.name}") String driverName, @Value("${db2.url}") String dbUri,
            @Value("${db2.username}") String dbUser, @Value("${db2.pwd}") String dbPwd) {
        DriverManagerDataSource ds = new DriverManagerDataSource();
        ds.setDriverClassName(driverName);
        ds.setUrl(dbUri);
        ds.setUsername(dbUser);
        ds.setPassword(dbPwd);

        return ds;
    }

    @Bean
    @Profile("junitembedded")
    public DataSource testEmbedDs() {

        EmbeddedDatabaseBuilder builder = new EmbeddedDatabaseBuilder();
        EmbeddedDatabase db = builder.setType(EmbeddedDatabaseType.HSQL).build();
        return db;
    }

    @Bean
    @Profile("junit")
    public DataSource testDs() {
        DriverManagerDataSource ds = new DriverManagerDataSource();
        ds.setDriverClassName("com.ibm.db2.jcc.DB2Driver");
        ds.setUrl("jdbc:db2://localhost:50000/USERDB");
        ds.setUsername("amit");
        ds.setPassword("amit1976$");
        return ds;
    }

    /*@Bean
	@Profile("embedded")
	public DataSource dataSource() {

		EmbeddedDatabaseBuilder builder = new EmbeddedDatabaseBuilder();
		builder.setName("test");
	
		EmbeddedDatabase db = builder.setType(EmbeddedDatabaseType.H2).build();
		return db;
	}
     */
 @Bean(initMethod = "start", destroyMethod = "stop")
    public org.h2.tools.Server h2WebConsonleServer() throws SQLException {
        return org.h2.tools.Server.createWebServer("-web", "-webAllowOthers", "-webDaemon", "-webPort", "8082");
    }

    private Properties additionalProperties() {
        Properties properties = new Properties();
		//properties.setProperty("hibernate.hbm2ddl.auto", "create-drop");
        properties.setProperty("show_sql", "true");
        return properties;
    }

    /*
	 * @Bean public JpaVendorAdapter jpaVendorAdapter() { OpenJpaVendorAdapter
	 * adapter = new OpenJpaVendorAdapter();
	 * adapter.setDatabase(Database.MYSQL); adapter.setShowSql(true);
	 * adapter.setGenerateDdl(false); return adapter; }
     */
    @Bean
    public LocalContainerEntityManagerFactoryBean entityManagerFactory(DataSource dataSource,
            JpaVendorAdapter jpaVendorAdapter) {
        LocalContainerEntityManagerFactoryBean emfb = new LocalContainerEntityManagerFactoryBean();
        emfb.setDataSource(dataSource);
        emfb.setJpaVendorAdapter(jpaVendorAdapter);
        emfb.setPackagesToScan("com.ibm.internal.assignment.entity");
        emfb.setJpaProperties(additionalProperties());
        return emfb;
    }

    // @Bean
    // public JndiObjectFactoryBean entityManagerFactory() {
    // JndiObjectFactoryBean jndiObjectFB = new JndiObjectFactoryBean();
    // jndiObjectFB.setJndiName("jdbc/SpittrDS");
    // return jndiObjectFB;
    // }
}
