package com.example.registrationcrudoperation.Repository;

import com.example.registrationcrudoperation.Model.Employee;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface EmployeeRepo extends JpaRepository <Employee,Integer> {
}
