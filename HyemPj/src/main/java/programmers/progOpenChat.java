package programmers;

import java.util.ArrayList;
import java.util.HashMap;

public class progOpenChat {
	public String[] solution(String[] record) {
		ArrayList<String> arr = new ArrayList();
		HashMap<String, String> map = new HashMap();
		//["Enter uid1234 Muzi", "Enter uid4567 Prodo", "Leave uid1234", "Enter uid1234 Prodo", "Change uid4567 Ryan"]
		for(int i = 0; i < record.length; i++) {
			String[] command = record[i].split(" ");
			
			if(command[0].equals("Enter")) {
				arr.add(command[1]+"´ÔÀÌ µé¾î¿Ô½À´Ï´Ù.");
				map.put(command[1], command[2]);
			}else if(command[0].equals("Change")) {
				map.put(command[1], command[2]);
			}else {
				arr.add(command[1]+"´ÔÀÌ ³ª°¬½À´Ï´Ù.");
			}
		}
		
        String[] answer = new String[arr.size()];
        for(int i = 0; i < arr.size(); i++) {
        	int idx = arr.get(i).indexOf("´Ô");
        	String id = arr.get(i).substring(0, idx);
        	String[] temp = arr.get(i).split(" ");
        	answer[i] = map.get(id) + "´ÔÀÌ " + temp[1];
        }
        return answer;
    }
}
