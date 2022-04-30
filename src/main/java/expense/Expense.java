package expense;

public class Expense {
	
	private int expNum;
	private String expDate;
	private String comapny;
	private double outBal;
	private double total;
	private int descNum;
	/**
	 * @param expNum
	 * @param expDate
	 * @param comapny
	 * @param outBal
	 * @param total
	 * @param descNum
	 */
	public Expense(int expNum, String expDate, String comapny, double outBal, double total, int descNum) {
		super();
		this.expNum = expNum;
		this.expDate = expDate;
		this.comapny = comapny;
		this.outBal = outBal;
		this.total = total;
		this.descNum = descNum;
	}
	/**
	 * @return the expNum
	 */
	public int getExpNum() {
		return expNum;
	}
	/**
	 * @param expNum the expNum to set
	 */
	public void setExpNum(int expNum) {
		this.expNum = expNum;
	}
	/**
	 * @return the expDate
	 */
	public String getExpDate() {
		return expDate;
	}
	/**
	 * @param expDate the expDate to set
	 */
	public void setExpDate(String expDate) {
		this.expDate = expDate;
	}
	/**
	 * @return the comapny
	 */
	public String getComapny() {
		return comapny;
	}
	/**
	 * @param comapny the comapny to set
	 */
	public void setComapny(String comapny) {
		this.comapny = comapny;
	}
	/**
	 * @return the outBal
	 */
	public double getOutBal() {
		return outBal;
	}
	/**
	 * @param outBal the outBal to set
	 */
	public void setOutBal(double outBal) {
		this.outBal = outBal;
	}
	/**
	 * @return the total
	 */
	public double getTotal() {
		return total;
	}
	/**
	 * @param total the total to set
	 */
	public void setTotal(double total) {
		this.total = total;
	}
	/**
	 * @return the descNum
	 */
	public int getDescNum() {
		return descNum;
	}
	/**
	 * @param descNum the descNum to set
	 */
	public void setDescNum(int descNum) {
		this.descNum = descNum;
	}
	
	
}
