package com.smpro.controller.shop;

import com.smpro.service.CategoryService;
import com.smpro.service.ItemService;
import com.smpro.service.SystemService;
import com.smpro.util.Const;
import com.smpro.vo.CategoryVo;
import com.smpro.vo.ItemVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class SearchController {
	@Autowired
	private CategoryService categoryService;

	@Autowired
	private ItemService itemService;

	@Autowired
	private SystemService systemService;

	@RequestMapping("/search")
	public String search(ItemVo vo, HttpSession session, HttpServletRequest request, Model model) {

		if(session.getAttribute("loginSeq") == null && session.getAttribute("loginEmail") == null) {
			model.addAttribute("message", "로그인 후 이용하시기 바랍니다.");
			model.addAttribute("returnUrl", "/shop/login");
			return Const.REDIRECT_PAGE;
		}

		vo.setMallId((Integer)session.getAttribute("mallSeq"));
		model.addAttribute("title", "검색");

		if(request.getParameter("rowCount") == null || "".equals(request.getParameter("rowCount").trim())) {
			vo.setRowCount(vo.getRowCount());
		}
		if(request.getParameter("listStyle") == null || "".equals(request.getParameter("listStyle").trim())) {
			vo.setListStyle(vo.getListStyle());
		}

		// 카테고리를 가져온다
		CategoryVo cvo = new CategoryVo();
		cvo.setMallId((Integer)session.getAttribute("mallSeq"));
		cvo.setDepth(1);
		cvo.setShowFlag("Y");
		model.addAttribute("cateLv1List", categoryService.getListSimple(cvo));

		if(!"".equals(vo.getCateLv1Seq())) {
			// 2단
			cvo.setDepth(2);
			cvo.setShowFlag("Y");
			cvo.setParentSeq(vo.getCateLv1Seq());
			model.addAttribute("cateLv2List", categoryService.getListSimple(cvo));
		}
		if(!"".equals(vo.getCateLv1Seq()) && !"".equals(vo.getCateLv2Seq())) {
			// 3단
			cvo.setDepth(3);
			cvo.setShowFlag("Y");
			cvo.setParentSeq(vo.getCateLv2Seq());
			model.addAttribute("cateLv3List", categoryService.getListSimple(cvo));
		}
		if(!"".equals(vo.getCateLv1Seq()) && !"".equals(vo.getCateLv2Seq()) && !"".equals(vo.getCateLv3Seq())) {
			// 4단
			cvo.setDepth(4);
			cvo.setShowFlag("Y");
			cvo.setParentSeq(vo.getCateLv3Seq());
			model.addAttribute("cateLv4List", categoryService.getListSimple(cvo));
		}

		if(!"".equals(vo.getCateLv1Seq())) {
			CategoryVo lv1 = categoryService.getVo(vo.getCateLv1Seq());
			model.addAttribute("lv1", lv1);
		} else if(!"".equals(vo.getCateLv2Seq())) {
			CategoryVo lv2 = categoryService.getVo(vo.getCateLv2Seq());
			CategoryVo lv1 = categoryService.getVo(lv2.getParentSeq());
			model.addAttribute("lv1", lv1);
			model.addAttribute("lv2", lv2);
		} else if(!"".equals(vo.getCateLv3Seq())) {
			CategoryVo lv3 = categoryService.getVo(vo.getCateLv3Seq());
			CategoryVo lv2 = categoryService.getVo(lv3.getParentSeq());
			CategoryVo lv1 = categoryService.getVo(lv2.getParentSeq());
			model.addAttribute("lv1", lv1);
			model.addAttribute("lv2", lv2);
			model.addAttribute("lv3", lv3);
		} else if(!"".equals(vo.getCateLv4Seq())) {
			CategoryVo lv4 = categoryService.getVo(vo.getCateLv4Seq());
			CategoryVo lv3 = categoryService.getVo(lv4.getParentSeq());
			CategoryVo lv2 = categoryService.getVo(lv3.getParentSeq());
			CategoryVo lv1 = categoryService.getVo(lv2.getParentSeq());
			model.addAttribute("lv1", lv1);
			model.addAttribute("lv2", lv2);
			model.addAttribute("lv3", lv3);
			model.addAttribute("lv4", lv4);
		}

//		// 카테고리 검색 결과
//		if(vo.getRowCount()==20) {
//			vo.setRowCount(30);
//		}

//		//자치구 코드가 00이라면 전체라는 의미로 사용하고 값을 초기화시킨다.
//		if("00".equals(vo.getJachiguCode())) {
//			vo.setJachiguCode("");
//
		System.out.print(">>>>>>>>>"+vo.toString());
		vo.setMallId((Integer)session.getAttribute("mallSeq"));
		vo.setStatusCode("Y"); // 판매가 가능한 리스트만 보여야 한다
		vo.setShowFlag("Y");   //카테고리가 노출
		//함께누리 측의 요청으로 공공기관에만 특별주문 카테고리를 노출한다.
//		vo.setMemberTypeCode((String)session.getAttribute("loginMemberTypeCode"));
		model.addAttribute("categoryList", categoryService.getListForSearch(vo));

		vo.setTotalRowCount(itemService.getListSimpleTotalCount(vo));
		model.addAttribute("list", itemService.getListSimple(vo));
		model.addAttribute("paging", vo.drawPagingNavigation("goPage"));
		model.addAttribute("itemSearchVo", vo);

		//자치구 코드
//		CommonVo cjvo = new CommonVo();
//		cjvo.setGroupCode(new Integer(29));
//		model.addAttribute("jachiguList", systemService.getCommonList(cjvo));

		model.addAttribute("mallname", Const.MALL_NAME);
		model.addAttribute("mall_mail", Const.MALL_MAIL);
		model.addAttribute("cmm_cs", Const.CMM_CS);
		model.addAttribute("tax_cs", Const.TAX_CS);
		model.addAttribute("fax", Const.FAX);
		model.addAttribute("bank_name", Const.BANK_NAME);
		model.addAttribute("bank_acount", Const.BANK_ACOUNT);
		model.addAttribute("bank_own", Const.BANK_OWN);
		model.addAttribute("bank_comp", Const.BANK_COMP);
		model.addAttribute("add1", Const.ADD_1);
		model.addAttribute("add2", Const.ADD_2);
		model.addAttribute("add3", Const.ADD_3);
		model.addAttribute("acount", Const.ACOUNT);

		model.addAttribute("mallname", Const.MALL_NAME);
		model.addAttribute("cmm_cs", Const.CMM_CS);
		model.addAttribute("tax_cs", Const.TAX_CS);
		model.addAttribute("fax", Const.FAX);
		model.addAttribute("bank_name", Const.BANK_NAME);
		model.addAttribute("bank_acount", Const.BANK_ACOUNT);
		model.addAttribute("bank_own", Const.BANK_OWN);
		model.addAttribute("bank_comp", Const.BANK_COMP);
		model.addAttribute("add1", Const.ADD_1);
		model.addAttribute("add2", Const.ADD_2);
		model.addAttribute("add3", Const.ADD_3);
		model.addAttribute("acount", Const.ACOUNT);
		return "/search/search.jsp";
	}
}
