package invoice;

public class Invoice {

	int invoiceNum;
	String date;
	double total;
	double outstandingBal;
	int custNum;
	
	/**
	 * @param invoiceNum
	 * @param date
	 * @param total
	 * @param outstandingBal
	 * @param custNum
	 *///
	public Invoice(int invoiceNum, String date, double total, double outstandingBal, int custNum) {
		super();
		this.invoiceNum = invoiceNum;
		this.date = date;
		this.total = total;
		this.outstandingBal = outstandingBal;
		this.custNum = custNum;
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
	 * @return the outstandingBal
	 */
	public double getOutstandingBal() {
		return outstandingBal;
	}

	/**
	 * @param outstandingBal the outstandingBal to set
	 */
	public void setOutstandingBal(double outstandingBal) {
		this.outstandingBal = outstandingBal;
	}

	/**
	 * @return the custNum
	 */
	public int getCustNum() {
		return custNum;
	}

	/**
	 * @param custNum the custNum to set
	 */
	public void setCustNum(int custNum) {
		this.custNum = custNum;
	}
	
	
	
}
