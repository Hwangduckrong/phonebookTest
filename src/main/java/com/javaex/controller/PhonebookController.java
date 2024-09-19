package com.javaex.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.javaex.service.PhonebookService;
import com.javaex.vo.PersonVo;

@Controller
public class PhonebookController {

	@Autowired

	private PhonebookService phonebookService;

	// 리스트
	@RequestMapping(value = "/list", method = { RequestMethod.GET, RequestMethod.POST })
	public String list(Model model) {

		List<PersonVo> personList = phonebookService.exeGetPersonList();
		model.addAttribute("personList", personList);

		return "list";
	}

	// 삭제
	@RequestMapping(value = "/delete", method = { RequestMethod.GET, RequestMethod.POST })
	public String delete(@RequestParam(value = "no") int no) {

		phonebookService.exePersonDelete(no);

		return "redirect:/list";
	}

	// 수정
	@RequestMapping(value = "/edit", method = { RequestMethod.GET, RequestMethod.POST })
	public String edit(@ModelAttribute PersonVo personVo) {

		phonebookService.exeEditPerson(personVo);

		return "redirect:/list";
	}

	// 수정폼
	@RequestMapping(value = "/editform", method = { RequestMethod.GET, RequestMethod.POST })
	public String editForm(@RequestParam(value = "no") int no, Model model) {

		PersonVo personVo = phonebookService.exeEditForm(no);
		model.addAttribute("personVo", personVo);

		return "editForm";
	}

	// 등록폼
	@RequestMapping(value = "/writeform", method = { RequestMethod.GET, RequestMethod.POST })
	public String writeForm() {

		return "writeForm";
	}

	// 등록

	@RequestMapping(value = "write", method = { RequestMethod.GET, RequestMethod.POST })
	public String write(@ModelAttribute PersonVo personVo) {
		

		phonebookService.exeWritePerson(personVo);

		return "redirect:/list";

	}
}
