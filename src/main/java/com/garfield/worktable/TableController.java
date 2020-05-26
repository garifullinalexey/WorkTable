package com.garfield.worktable;

import com.garfield.worktable.domain.Department;
import com.garfield.worktable.domain.ProdCalendar;
import com.garfield.worktable.repos.DepRepo;
import com.garfield.worktable.repos.MarkRepo;
import com.garfield.worktable.repos.ProdCalRepo;
import com.garfield.worktable.repos.StaffRepo;
import com.garfield.worktable.service.ProdCalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class TableController {
    @Autowired
    DepRepo depRepo;
    @Autowired
    StaffRepo staffRepo;
    @Autowired
    ProdCalService prodCalService;

    String month = "01";
    Integer dep = 1;


    @GetMapping
    public String table(Model model){

        model.addAttribute("staffs", staffRepo.findByDepartment(depRepo.findById( this.dep)));
        model.addAttribute("depos", depRepo.findAll());
        model.addAttribute("prodCal", prodCalService.dateList(dep, month));
        for ( ProdCalendar calDate:prodCalService.dateList(dep, month)) {
            System.out.println(calDate.toString());
        }
        System.out.println("\n");
        return "table";
    }

    @PostMapping
    public String table(@RequestParam(required=false) String month,@RequestParam(required=false) Integer dep, Model model){
        if (month != null){
            this.month = month;
        }
       if (dep != null){
           this.dep = dep;
       }
        model.addAttribute("month", this.month);
        model.addAttribute("dep", this.dep);
        model.addAttribute("staffs", staffRepo.findByDepartment(depRepo.findById(this.dep)));;
        model.addAttribute("depos", depRepo.findAll());
        model.addAttribute("prodCal", prodCalService.dateList(this.dep, this.month));
        return "redirect:/";
    }


}
