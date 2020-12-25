package com;

import com.entity.*;
import com.entity.manager.CityManager;
import com.entity.manager.CompanyManager;
import com.entity.manager.CourtManager;
import com.entity.manager.UserManager;
import com.helper.EmailHelper;
import com.repository.UserDetailRepository;
import com.repository.UserdetailEntityManager;
import com.scheduler.DataScheduler;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;

@ComponentScan("com")
@SpringBootApplication
@EnableAutoConfiguration
@EnableAsync
public class Application extends WebMvcConfigurerAdapter {

    @Autowired
    CityManager citymanager;

    @Autowired
    CompanyManager companymanager;

    @Autowired
    CourtManager courtmanager;

    @Autowired
    UserdetailEntityManager caseentitymanager;

    @Autowired
    UserManager usermnanager;

    @Autowired
    UserDetailRepository userdetailmanager;

    @Autowired
    EmailHelper emailHelper;
    @Autowired
    DataScheduler dataScheduler;

    public static void main(String[] args) throws ParseException {
        Application app = SpringApplication.run(Application.class, args).getBean(Application.class);
//initalDB(app);
     //   app.emailHelper.sendCaseListEmail("test");
        app.dataScheduler.dataBackup();
      }

    private static void initalDB(Application app) {

        City city = new City();
        city.setName("Ratlam");
        System.out.println(app.citymanager.save(city).toString());

        City city1 = new City();
        city1.setName("Joura");
        City ci = app.citymanager.save(city1);
        System.out.println(ci.toString());

        Company company = new Company();
        company.setName("New India");
        System.out.println(app.companymanager.save(company));

        Company company1 = new Company();
        company1.setName("ICICI");
        Company comp = app.companymanager.save(company1);
        System.out.println(comp.toString());

        Court court = new Court();
        court.setName("DJ");
        System.out.println(app.courtmanager.save(court));
        Court court1 = new Court();
        court1.setName("Firts_ADJ");
        Court cou = app.courtmanager.save(court1);
        System.out.println(cou.toString());

        User u = new User();
        u.setAddress("jain colony");
        u.setAge(20);
        u.setEmail("sgelda7@gmail.com");
        u.setGender("male");
        User u1 = app.usermnanager.save(u);
        System.out.println(u1.toString());

        UserDetail ud = new UserDetail();
        ud.setAgainstClient("siddu");
        //  System.out.println(app.userdetailmanager.save(ud));
        //System.out.println(app.casemanager.save(c).toString());
        System.out.println("case added");
        //System.out.println(app.caseentitymanager.GetFilterResult().get(0).getId());
        String tmp_date = "02/08/2016";
        SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");
        java.util.Date parsed = null;
        try {
            parsed = format.parse(tmp_date);
        } catch (ParseException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        Calendar cal = Calendar.getInstance();
        cal.setTimeInMillis(parsed.getTime());
        java.sql.Date date = new java.sql.Date(cal.getTimeInMillis());
        System.out.println(app.userdetailmanager.findByNextDate(date).get(0).getId());
    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/static/**").addResourceLocations("classpath:/static/*");
    }
}
