package com.smpro.controller.shop;

import com.smpro.service.CartService;
import com.smpro.service.OrderService;
import com.smpro.service.SystemService;
import com.smpro.service.WishService;
import com.smpro.util.Const;
import com.smpro.vo.ItemVo;
import com.smpro.vo.OrderVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
public class WishController extends MyPage {
	@Autowired
	private CartService cartService;

	@Autowired
	private WishService wishService;

	@Autowired
	private SystemService systemService;

	@Autowired
	private OrderService orderService;


	/** 리스트 */
	@RequestMapping("/wish/list")
	public String getList(HttpSession session, Model model, OrderVo pvo) {
		initMypage(session, model);

		pvo.setLoginType((String) session.getAttribute("loginType"));
		pvo.setLoginSeq((Integer) session.getAttribute("loginSeq"));

		model.addAttribute("data", orderService.getCntByStatus(pvo));

		ItemVo cvo = new ItemVo();
		cvo.setMemberSeq((Integer)session.getAttribute("loginSeq"));
		model.addAttribute("list", wishService.getList(cvo));

		model.addAttribute("title", "관심상품");
		model.addAttribute("on", "07");

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

		return "/wish.jsp";
	}

	/** 등록 */
	@RequestMapping("/wish/reg/proc/ajax")
	public String regData(HttpSession session, @RequestParam Integer[] itemSeq, Integer optionValueSeq, String deliPrepaidFlag, Model model) {


		Integer memberSeq = (Integer)session.getAttribute("loginSeq");

		/* DB 처리 */
		int duplCnt = wishService.getCnt(itemSeq, memberSeq, optionValueSeq);
		if(duplCnt == itemSeq.length) {
			model.addAttribute("result", "D");
			model.addAttribute("message", "이미 관심상품에 등록된 상품입니다. 해당 페이지로 이동하시겠습니까?");
		} else {
			int result = wishService.regData(itemSeq, memberSeq, optionValueSeq, deliPrepaidFlag);
			if (result > 0) {
				model.addAttribute("result", "Y");
				model.addAttribute("message", "관심상품에 등록되었습니다. 해당 페이지로 이동하시겠습니까?");
			} else {
				model.addAttribute("result", "N");
				model.addAttribute("message", "오류가 발생했습니다.");
			}
		}
		return "/ajax/get-message-result.jsp";
	}

	/** 삭제 */
	@RequestMapping("/wish/del/{wishSeq}/proc")
	public String delData(HttpSession session, @PathVariable int wishSeq, Model model) {

		ItemVo vo = new ItemVo();
		vo.setWishSeq(wishSeq);
		vo.setMemberSeq((Integer)session.getAttribute("loginSeq"));

		if(wishService.delData(vo)) {
			model.addAttribute("message", "삭제되었습니다.");
			model.addAttribute("returnUrl", "/shop/wish/list");
			return Const.REDIRECT_PAGE;
		}

		model.addAttribute("message", "오류가 발생했습니다.");
		return Const.ALERT_PAGE;
	}

	/** 일괄 삭제 */
	@RequestMapping(value="/wish/del/proc", method=RequestMethod.POST)
	public String delData(HttpSession session, @RequestParam int[] wishSeq, Model model) {

		wishService.delData(wishSeq, (Integer)session.getAttribute("loginSeq"));

		model.addAttribute("message", "삭제되었습니다.");
		model.addAttribute("returnUrl", "/shop/wish/list");
		return Const.REDIRECT_PAGE;
	}

	/** 장바구니 등록 */
	@RequestMapping("/wish/cart/proc")
	public String regCart(@RequestParam Integer[] wishSeq,HttpSession session,  Model model) {
		List<ItemVo> list = new ArrayList<>();
		for(int i=0; i<wishSeq.length; i++) {
			ItemVo vo = wishService.getData(wishSeq[i]);
			list.add(vo);
		}

		ItemVo vo = new ItemVo();
		vo.setMemberSeq((Integer)session.getAttribute("loginSeq"));
		List<ItemVo> cartList = cartService.getList(vo);

//		System.out.println(">>>> cartList.size():"+cartList.size());
		for(ItemVo wish:list){
			wish.setDirectFlag("N");
			if(cartList.size()>0) {
				for (ItemVo cart : cartList) {

					if ((wish.getItemSeq().intValue() == cart.getItemSeq().intValue()) &&
							(wish.getOptionValueSeq().intValue() == cart.getOptionValueSeq().intValue())) {
						cart.setCount(cart.getCount() + 1);
						cartService.updateVo(cart);
					} else {
						wish.setCount(1);
						cartService.insertVo(wish);
					}
				}
			}
			else {
				wish.setCount(1);
				cartService.insertVo(wish);
			}
		}

//		model.addAttribute("message", "장바구니에 등록 되었습니다.");
//		model.addAttribute("returnUrl", "/shop/wish/list");
//		return Const.REDIRECT_PAGE;
		model.addAttribute("callback", "OK");
		return Const.ALERT_PAGE;
	}

	/** 모두 주문 */
	@RequestMapping("/wish/all/buy/proc")
	public String allBuy(@RequestParam Integer[] wishSeq, HttpSession session, Model model) {
		List<ItemVo> list = new ArrayList<>();
		for(int i=0; i<wishSeq.length; i++) {
			ItemVo vo = wishService.getData(wishSeq[i]);
			list.add(vo);
		}

		for(int i=0; i<list.size(); i++){
			list.get(i).setDirectFlag("N");
			list.get(i).setCount(1);
			cartService.insertVo(list.get(i));
		}

		String seqs = "";
		ItemVo vo = new ItemVo();
		vo.setMemberSeq((Integer)session.getAttribute("loginSeq"));
		List<ItemVo> cartList = cartService.getList(vo);
		for(int i=0; i<cartList.size(); i++) {
			if(i != 0) {
				seqs += ",";
			}
			seqs += cartList.get(i).getSeq();
		}
		model.addAttribute("returnUrl", "/shop/order?seq="+seqs);
		return Const.REDIRECT_PAGE;
	}

	@RequestMapping("/wish/list/count/json")
	public String cartListCount(HttpSession session, Model model){

		model.addAttribute("message", wishService.getWishListCount((Integer)session.getAttribute("loginSeq")));

		return Const.AJAX_PAGE;
	}
}
