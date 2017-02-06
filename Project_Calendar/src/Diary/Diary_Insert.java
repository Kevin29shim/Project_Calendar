package Diary;

import java.awt.*;
import java.io.*;
import java.util.*;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/dairy.do")
public class Diary_Insert extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Diary_Insert() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		
		List<String> list = new ArrayList<String>();//이미지 주소 저장 List
		list.add("../Images_Diary/Appointment.png"); //1
		list.add("../Images_Diary/Army.png"); //2
		list.add("../Images_Diary/Cake.png"); //3
		list.add("../Images_Diary/Heart.png"); //4
		list.add("../Images_Diary/Hospital.png"); //5
		list.add("../Images_Diary/Star.png"); //6 
		list.add("../Images_Diary/Sun.png"); //7
		list.add("../Images_Diary/Angry.png"); //8
		list.add("../Images_Diary/Aplus.png"); //9
		list.add("../Images_Diary/Beer.png"); //10
		list.add("../Images_Diary/Camera.png"); //11
		list.add("../Images_Diary/Hiarcut.png"); //12
		list.add("../Images_Diary/Movie.png");//13
		list.add("../Images_Diary/trip.png"); //14
		
		String S_Title = request.getParameter("Diary_Title");
		String S_Cont = request.getParameter("Diary_Cont");
		String S_Type = request.getParameter("Type");
		//1~14까지 들어옴
		String S_Range = request.getParameter("Range");
		//1~3까지 1.나만 보기 2.친구들에게 공개 3. 전체 공개
		
		//값 넘어오는지 Test용
		PrintWriter Out = response.getWriter();
		Out.println(S_Title);
		Out.println(S_Cont);
		Out.println(S_Type);
		Out.println(S_Range);
		
		Diary_DTO dto = new Diary_DTO();
			dto.setS_title(S_Title);
			dto.setS_cont(S_Cont);
			dto.setS_type(S_Type);
			dto.setS_friend(S_Range); //공개 범위 -> DTO에는 S_friend로 되어있음
	}

	
}
