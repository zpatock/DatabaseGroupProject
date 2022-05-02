package paid;

public class Paid {

	private String date;
	private double outstandingBalance;
	private double amountPaid;
	private int invoiceNum;
	/**
	 * @param date
	 * @param outstandingBalance
	 * @param amountPaid
	 * @param invoiceNum
	 */
	public Paid(String date, double outstandingBalance, double amountPaid, int invoiceNum) {
		super();
		this.date = date;
		this.outstandingBalance = outstandingBalance;
		this.amountPaid = amountPaid;
		this.invoiceNum = invoiceNum;
	}
	/**
	 * @return the date
	 */
	public String getDate() {
		return date;
	}
	/**
	 * @param date the date to set
	 */
	public void setDate(String date) {
		this.date = date;
	}
	/**
	 * @return the outstandingBalance
	 */
	public double getOutstandingBalance() {
		return outstandingBalance;
	}
	/**
	 * @param outstandingBalance the outstandingBalance to set
	 */
	public void setOutstandingBalance(double outstandingBalance) {
		this.outstandingBalance = outstandingBalance;
	}
	/**
	 * @return the amountPaid
	 */
	public double getAmountPaid() {
		return amountPaid;
	}
	/**
	 * @param amountPaid the amountPaid to set
	 */
	public void setAmountPaid(double amountPaid) {
		this.amountPaid = amountPaid;
	}
	/**
	 * @return the invoiceNum
	 */
	public int getInvoiceNum() {
		return invoiceNum;
	}
	/**
	 * @param invoiceNum the invoiceNum to set
	 */
	public void setInvoiceNum(int invoiceNum) {
		this.invoiceNum = invoiceNum;
	}
	
}
