package validation;


class checkValidate {
		
		int valid(int age, String citizen, String multi) {
			int x =0;
			if(age>=18) {
				if(citizen.equals("SriLanka")) {
					if(multi==null){
						x=1;
					}
					
				}
			}
			
			return x;
		}
	

}
