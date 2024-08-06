package com.example.registrationcrudoperation.Controller;

import com.example.registrationcrudoperation.Model.Employee;
import com.example.registrationcrudoperation.Services.EmployeeServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class EmployeeController {

    @Autowired
   EmployeeServices es;

    @RequestMapping("/")
    public String one()
    {
        return "index";
    }

    @PostMapping("/next")
    public String getdata(@ModelAttribute("emp") Employee emp)
    {
        if(emp.getPass().equals(emp.getCpass())) {
            es.Register(emp);
            return "redirect:/disp";
        }
        return "index";
    }

    @RequestMapping("/disp")
    public String display(Model m)
    {
        List<Employee> em=es.getAllinfo();
        m.addAttribute("mm",em);
        return "disp";
    }

    @GetMapping("/del/{eid}")
    public String three(@PathVariable int eid)
    {
        es.deleteRecord(eid);
        return "redirect:/disp";
    }

    @GetMapping("/edit/{eid}")
    public String editdata(@PathVariable int eid,Model m)
    {
       Employee ep=es.getSingleData(eid);
       m.addAttribute("kk",ep);
        return "editpg";
    }

     @PostMapping("/update")
    public String updatedata(@ModelAttribute("ee")Employee ee)
    {
        Employee e=new Employee();
        e.setId(ee.getId());
        e.setEname(ee.getEname());
        e.setEmail(ee.getEmail());
        e.setEmp_id(ee.getEmp_id());
        e.setPass(ee.getPass());
        e.setCpass(ee.getCpass());

        es.Register(e);
        return "redirect:/disp";
    }




}
