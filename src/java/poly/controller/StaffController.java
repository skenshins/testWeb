/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poly.controller;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.jpa.internal.util.PersistenceUtilHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import poly.entity.Staff;

/**
 *
 * @author Administrator
 */
@Transactional
@Controller
@RequestMapping("/staff")
public class StaffController {

    @Autowired
    SessionFactory factory;

    @RequestMapping("/index")
    public String index(HttpSession session, ModelMap model, @ModelAttribute("dep") Staff dep) {
        Session session1 = factory.getCurrentSession();
        String hql = "FROM Staff";
        Query query = session1.createQuery(hql);
        List<Staff> list = query.list();
        model.addAttribute("staff", list);
        return "staff/index";
    }

    @RequestMapping("report")
    public String report(ModelMap model) {
        Session session = factory.getCurrentSession();
        String hql = "SELECT r.staff.id, SUM(case when r.Type=1 then 1 else 0 end),SUM(case when r.Type=0 then 1 else 0 end) FROM Record r GROUP BY r.staff.id";
        Query query = session.createQuery(hql);
        List<Object[]> list = query.list();
        model.addAttribute("arrays", list);
        return "staff/report";
    }
    
    @RequestMapping(params = "update", method = RequestMethod.POST)
    public String update(ModelMap model, @ModelAttribute("dep") Staff dep) {
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();
        try {
            session.update(dep);
            t.commit();
            model.addAttribute("message", "Updated");
        } catch (Exception e) {
            t.rollback();
            model.addAttribute("message", "Failed update");
            return "redirect:staff/index.htm";
        } finally {
            session.close();
        }
        return "redirect:staff/index.htm";
    }

    @RequestMapping("/edit")
    public String edit(HttpServletRequest request, ModelMap model, @ModelAttribute("dep") Staff dep) {
        dep.setId(request.getParameter("id"));
        dep.setName(request.getParameter("name"));
        model.addAttribute(dep);

        Session session = factory.getCurrentSession();
        String hql = "FROM Staff";
        Query query = session.createQuery(hql);
        List<Staff> list = query.list();
        model.addAttribute("staff", list);
        return "staff/index";
    }

    @RequestMapping("/delete/{id}")
    public String delete(ModelMap model, @PathVariable("id") String id) {
        Session session = factory.getCurrentSession();
        Staff dep = (Staff) session.get(Staff.class, id);
        session.delete(dep);
        return "redirect:/staff/index.htm";
    }

    @RequestMapping(params = "insert", method = RequestMethod.POST)
    public String insert(ModelMap model, HttpSession ses, @ModelAttribute("dep") Staff dep) {
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();
        try {
            session.save(dep);
            t.commit();
            model.addAttribute("message", "Thêm mới thành công !");
        } catch (Exception e) {
            t.rollback();
            model.addAttribute("message", "Thêm mới thất bại !");
            return "redirect:staff/index.htm";
        } finally {
            session.close();

        }
        return "redirect:staff/index.htm";
    }
}
