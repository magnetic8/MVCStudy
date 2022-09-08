package kr.board.frontController;

import java.util.HashMap;


import kr.board.controller.Controller;
import kr.board.controller.IdCheckController;
import kr.board.controller.LoginController;
import kr.board.controller.LoginFormController;
import kr.board.controller.LoginSController;
import kr.board.controller.MainController;
import kr.board.controller.MemberWriteController;
import kr.board.controller.joinController;
import kr.board.controller.joinFormController;
import kr.board.controller.joinIdCheckController;

public class HandlerMapping {
	private HashMap<String,Controller> mappings;
	public HandlerMapping() {
		mappings=new HashMap<String,Controller>();
		mappings.put("/joinForm.do",new joinFormController());
		mappings.put("/join.do",new joinController());
		mappings.put("/joinIdCheck.do",new joinIdCheckController());

		mappings.put("/login.do",new LoginController());
		mappings.put("/loginS.do",new LoginSController());
		mappings.put("/memberWrite.do",new MemberWriteController());
		mappings.put("/main.do",new MainController());
		mappings.put("/loginForm.do",new LoginFormController());
		mappings.put("/idCheck.do",new IdCheckController());
		
	}
	public Controller getController(String command) {
		return mappings.get(command);
	}
}
