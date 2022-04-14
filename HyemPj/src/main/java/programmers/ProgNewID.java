package programmers;

public class ProgNewID {
	public String solution(String new_id) {
		
		//new_id�� ��� �빮�ڸ� �����Ǵ� �ҹ��ڷ� ġȯ�մϴ�.
		new_id = new_id.toLowerCase();
		//new_id���� ���ĺ� �ҹ���, ����, ����(-), ����(_), ��ħǥ(.)�� ������ ��� ���ڸ� �����մϴ�.
		new_id = new_id.replaceAll("[^a-z0-9-_.]", "");
		//new_id���� ��ħǥ(.)�� 2�� �̻� ���ӵ� �κ��� �ϳ��� ��ħǥ(.)�� ġȯ�մϴ�.
		new_id = new_id.replaceAll("\\.{2,}",".");
		//new_id���� ��ħǥ(.)�� ó���̳� ���� ��ġ�Ѵٸ� �����մϴ�.
		new_id = new_id.replaceAll("^(\\.)|(\\.)$","");
		//new_id�� �� ���ڿ��̶��, new_id�� "a"�� �����մϴ�.
		if(new_id.isEmpty()) {
			new_id = "a";
		}
		//new_id�� ���̰� 16�� �̻��̸�, new_id�� ù 15���� ���ڸ� ������ ������ ���ڵ��� ��� �����մϴ�.
		//���� ���� �� ��ħǥ(.)�� new_id�� ���� ��ġ�Ѵٸ� ���� ��ġ�� ��ħǥ(.) ���ڸ� �����մϴ�.
		if(new_id.length() >= 16) {
			new_id = new_id.substring(0, 15).replaceAll("(\\.)$", "");
		}
		//new_id�� ���̰� 2�� ���϶��, new_id�� ������ ���ڸ� new_id�� ���̰� 3�� �� ������ �ݺ��ؼ� ���� ���Դϴ�.
		while(new_id.length() < 3) {
			new_id += new_id.charAt(new_id.length()-1);
		}
		return new_id;
	}
}
