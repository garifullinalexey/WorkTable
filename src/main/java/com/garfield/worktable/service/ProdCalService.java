package com.garfield.worktable.service;

import com.garfield.worktable.domain.ProdCalendar;
import com.garfield.worktable.domain.Staff;
import com.garfield.worktable.repos.ProdCalRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

@Service
public class ProdCalService {
    @Autowired
    ProdCalRepo prodCalRepo;


    public List<ProdCalendar> dateList(Integer depId, String month){
        List <ProdCalendar> list = new ArrayList<>();
        for (ProdCalendar dateCal:prodCalRepo.findByDepartment(depId)) {
            SimpleDateFormat dateFormat = new SimpleDateFormat("MM");
            if (dateFormat.format(dateCal.getDate()).equals(month)){
                list.add(dateCal);
            }
        }

        return list;
    }
}
