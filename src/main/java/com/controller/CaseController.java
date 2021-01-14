package com.controller;

import com.entity.User;
import com.entity.UserDetail;
import com.entity.manager.CityManager;
import com.entity.manager.CompanyManager;
import com.entity.manager.CourtManager;
import com.entity.manager.UserDetailManager;
import com.services.UpdateCaseService;
import com.spec.CaseSpec;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/")

public class CaseController {

    @Autowired
    CityManager citymanager;

    @Autowired
    CompanyManager companymanager;

    @Autowired
    CourtManager courtmanager;

    @Autowired
    UserDetailManager casemanager;

    @Autowired
    UpdateCaseService updateCaseService;

    @RequestMapping(value = "case", method = RequestMethod.GET)
    public ModelAndView userForm() {
        ModelAndView modelAndView = new ModelAndView("case");
        modelAndView.addObject("citys", citymanager.getAllCity());
        modelAndView.addObject("companys", companymanager.getAllCompany());
        modelAndView.addObject("courts", courtmanager.getAllCourt());
        return modelAndView;
    }
    @RequestMapping(value = "caseDetail", method = RequestMethod.GET)
    public ModelAndView caseDetail(@RequestParam(name = "id") String id) {
        System.out.println("========================="+id+"================");
       UserDetail userDetail= casemanager.getCase(Long.parseLong(id));
        List<UserDetail> userDetails=new ArrayList<>();
        userDetails.add(userDetail);
        ModelAndView modelAndView = new ModelAndView("caseDetail");
        modelAndView.addObject("citys", citymanager.getAllCity());
        modelAndView.addObject("companys", companymanager.getAllCompany());
        modelAndView.addObject("courts", courtmanager.getAllCourt());
        modelAndView.addObject("case", userDetails);
        return modelAndView;
    }

    @RequestMapping(value = "case", method = RequestMethod.POST)
    public String caseFormSubmit(CaseSpec caseobj, HttpSession session) throws ParseException {
        User user = (User) session.getAttribute("Client");
        System.out.println(caseobj.toString());
        casemanager.save(caseobj, user);
        System.out.println("Sucessfull add");
        return "redirect:welcome";
    }

    @RequestMapping(value = "caselist", method = RequestMethod.GET)
    public ModelAndView GetCases() {
        ModelAndView modelAndView = new ModelAndView("caselist");
        java.util.List cases = casemanager.getAllCase();
        modelAndView.addObject("citys", citymanager.getAllCity());
        modelAndView.addObject("companys", companymanager.getAllCompany());
        modelAndView.addObject("courts", courtmanager.getAllCourt());

        System.out.println("number of cases" + cases.size());
        modelAndView.addObject("cases", cases);

        return modelAndView;

    }

    @RequestMapping(value = "updatecase", method = RequestMethod.GET)
    public ModelAndView GetCasesForUpdate(HttpServletRequest request) throws ParseException {
        ModelAndView modelAndView = new ModelAndView("updatecase");
        java.util.List cases = updateCaseService.getCases(request, modelAndView);

        // java.util.List cases =
        // .getAllCase();
        modelAndView.addObject("citys", citymanager.getAllCity());
        modelAndView.addObject("companys", companymanager.getAllCompany());
        modelAndView.addObject("courts", courtmanager.getAllCourt());

        System.out.println("number of cases" + cases.size());
        modelAndView.addObject("cases", cases);

        return modelAndView;

    }

    @RequestMapping(value = "updatecase", method = RequestMethod.POST)
    public ModelAndView CasesForUpdate(@RequestParam("id") String id, @RequestParam("nextdate") String nextdate, @RequestParam("stage") String stage) {
        System.out.println("update case");
        System.out.println("id=" + id);
        System.out.println("nextdate=" + nextdate);
        System.out.println("stage=" + stage);
        casemanager.updateCaseDate(id, nextdate, stage);
        ModelAndView modelAndView = new ModelAndView("updatecase");
        java.util.List cases = casemanager.getAllCase();
        modelAndView.addObject("citys", citymanager.getAllCity());
        modelAndView.addObject("companys", companymanager.getAllCompany());
        modelAndView.addObject("courts", courtmanager.getAllCourt());

        System.out.println("number of cases" + cases.size());
        modelAndView.addObject("cases", cases);

        return modelAndView;

    }

    @RequestMapping(value = "SearchCase", method = RequestMethod.POST)
    public ModelAndView searchCase(CaseSpec spec) {
        ModelAndView modelAndView = new ModelAndView("caselist");
        java.util.List cases = casemanager.getAllCaseBySearch(spec);
        modelAndView.addObject("citys", citymanager.getAllCity());
        modelAndView.addObject("companys", companymanager.getAllCompany());
        modelAndView.addObject("courts", courtmanager.getAllCourt());

        System.out.println("number of cases" + cases.size());
        modelAndView.addObject("cases", cases);

        return modelAndView;

    }

    @RequestMapping(value = "SearchDateCase", method = RequestMethod.POST)
    public ModelAndView searchCaseByDate(CaseSpec spec) {
        ModelAndView modelAndView = new ModelAndView("caselist");
        java.util.List cases = casemanager.getAllCaseBySearch(spec);
        modelAndView.addObject("citys", citymanager.getAllCity());
        modelAndView.addObject("companys", companymanager.getAllCompany());
        modelAndView.addObject("courts", courtmanager.getAllCourt());

        System.out.println("number of cases" + cases.size());
        modelAndView.addObject("cases", cases);

        return modelAndView;

    }

    @RequestMapping(value = "caseEmail", method = RequestMethod.GET)
    public ModelAndView casesEmails() {
        ModelAndView modelAndView = new ModelAndView("welcome");
        boolean status = casemanager.sendTodaysCaseEmail();
        modelAndView.addObject("emailStatus", status);
        return modelAndView;

    }
}
