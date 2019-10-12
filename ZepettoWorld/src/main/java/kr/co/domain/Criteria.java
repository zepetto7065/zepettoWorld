package kr.co.domain;

public class Criteria { //PageTO와 비슷한 기능. 페이징 처리를 위해
	private int page;
	private int perPageNum;
		
	public Criteria() {
		page=1;
		perPageNum=10;
		
	}

	public void setPage(int page) {
		if(page <= 0 ) {
			this.page = 1;
			return;
		}
		
		this.page = page;
	}
	
	public int getPage() {
		return page;
	}
	
	public void setPerPageNum(int perPageNum){
		if(perPageNum <= 0 || perPageNum >100) {
			this.perPageNum = 10;
			return;
		}
		
		this.perPageNum = perPageNum;
	}
	
	public int getPerPageNum() {
		return this.perPageNum;
	}
	
	public int getPageStart() {
		return (this.page - 1 )*perPageNum;
	}



	
	
}
