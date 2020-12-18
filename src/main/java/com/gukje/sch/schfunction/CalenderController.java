package com.gukje.sch.schfunction;

import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gukje.sch.common.CalenderVO;
@Controller
public class CalenderController {
	@RequestMapping(value="/calender.do")
	   public String calendar(HttpServletRequest request, Model model, CalenderVO vo) {
	   
	   //현재 날짜의 연도와 월을 가져 옴
	   //현재 날짜의 연도와 월을 가져 옴
	
	   Calendar cal = Calendar.getInstance();
	   int year = cal.get(Calendar.YEAR);
	   int month = cal.get(Calendar.MONTH)+1;
	   
	   // 값을 전송받는 것이 필요
	   String paramYear = request.getParameter("year");
	   String paramMonth = request.getParameter("month");
	   
	   //두번째 호출 페이지에서 요청된 연도와 월의 값을 저장한다.
	   if(paramYear !=null){
		   vo.setYear(Integer.parseInt(paramYear));      
	   }else if ( paramYear == null) {
		   vo.setYear(year);
	   }
	   
	   if(paramMonth !=null){
		   vo.setMonth(Integer.parseInt(paramMonth));
	   }else if(paramMonth == null) {
		   vo.setMonth(month);
	   }
	   
	   if(month>12){
	      month=1;
	      year++;
	   }
	   if(month<1){
	      month = 12;
	      year--;
	   }
	   
	   //요청받은 연도와 월의 일자로 달력클래스 세팅
	   cal.set(year, month-1, 1);
	   
	   //매월 1일의 요일
	   vo.setDayOfWeek(cal.get(Calendar.DAY_OF_WEEK));
	   //월의 최대 일 수
	   vo.setLastDay(cal.getActualMaximum(Calendar.DAY_OF_MONTH));
	   String   yyyymm = year + util.two(String.valueOf(month));
	   
	   model.addAttribute("c", vo);
	   return "calender.jsp";
	   }


}
