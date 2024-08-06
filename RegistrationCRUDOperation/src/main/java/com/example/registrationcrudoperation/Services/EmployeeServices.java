package com.example.registrationcrudoperation.Services;

import com.example.registrationcrudoperation.Model.Employee;

import java.util.List;

public interface EmployeeServices {

    public void Register(Employee e1);

    public List<Employee> getAllinfo();

    public void deleteRecord (int eid);

    public Employee getSingleData(int eid);




}
