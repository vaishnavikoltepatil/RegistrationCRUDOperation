package com.example.registrationcrudoperation.Dao;


import com.example.registrationcrudoperation.Model.Employee;
import com.example.registrationcrudoperation.Repository.EmployeeRepo;
import com.example.registrationcrudoperation.Services.EmployeeServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EmployeeDao  implements EmployeeServices {

  @Autowired
  EmployeeRepo ep;

    @Override
    public void Register(Employee e1) {
      ep.save(e1);
    }

  @Override
  public List<Employee> getAllinfo() {

      return ep.findAll();
  }

  @Override
  public void deleteRecord(int eid) {
    ep.deleteById(eid);
  }

  @Override
  public Employee getSingleData(int eid) {
     return ep.getById(eid);
  }
}
