rulesUnitTest starting at 25/01/2021% H:41:34...
Testing all rules

Rule 89:
	Name: Incoming Wire amount > 75% of Net Worth
	Description: Incoming Wire amount > 75% of Net Worth
	Alert Text: Incoming wire amount significantly larger than customer's Net Worth.
	Last changed on 05/18/2020 by Robert   Layton (187)
	Settings:
		Alert Type: AML, Active: 1, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Incoming Wire Amount is greater than Net Worth * 75 percent and Value
		of Rep Code is not equal to 000
	Users:
		Don Christopher Lee (3), Mark David Edwards (2), Marlo  Fullerton (179)
		Robert   Layton (187), Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 0 results
		Pass: Build SQL returned 0 results
	Rule 89 passed.
 
Rule 90:
	Name: Incoming wire greater than 25% of Customer Stated Net Worth
	Description: Incoming wire greater than 25% of Customer Stated Net Worth
	Alert Text: Incoming wires larger than 25% of customer's Net Worth Level.
	Last changed on 05/18/2020 by Robert   Layton (187)
	Settings:
		Alert Type: AML, Active: 1, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Incoming Wire Amount is greater than Net Worth * 25 percent and Value
		of Rep Code is not equal to 000
	Users:
		Don Christopher Lee (3), Donald One Lee (159), Mark David Edwards (2)
		Robert   Layton (187), Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 0 results
		Pass: Build SQL returned 0 results
	Rule 90 passed.
 
Rule 91:
	Name: Outgoing Wire Amount greater than 50% of Account Equity
	Description: Outgoing Wire Amount greater than 50% of Account Equity
	Alert Text: Outgoing wires greater than 50% of Account Equity.
	Last changed on 05/19/2020 by Donald One Lee (159)
	Settings:
		Alert Type: AML, Active: 0, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Outgoing Wire Amount is greater than Account Equity * 50 percent and
		Value of Rep Code is not equal to 000
	Users:
		Don Christopher Lee (3), Donald One Lee (159), Mark David Edwards (2)
		Robert   Layton (187), Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 0 results
		Pass: Build SQL returned 0 results
	Rule 91 passed.
 
Rule 92:
	Name: When outgoing wire amount > 20% of account equity
	Description: When outgoing wire amount > 20% of account equity
	Alert Text: Outgoing wires larger than 30% of Account Equity.
	Last changed on 05/18/2020 by Robert   Layton (187)
	Settings:
		Alert Type: AML, Active: 0, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Outgoing Wire Amount is greater than Account Equity * 20 percent and
		Value of Rep Code is not equal to 000
	Users:
		Don Christopher Lee (3), Donald One Lee (159), Mark David Edwards (2)
		Robert   Layton (187), Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 0 results
		Pass: Build SQL returned 0 results
	Rule 92 passed.
 
Rule 93:
	Name: When debit card Cash Advances > 25 % of account equity over 30 days
	Description: When debit card Cash Advances > 25 % of account equity over 30 days
	Alert Text: Large debit card withdrawals greater than 30% of Account Equity.
	Last changed on 06/24/2020 by Mark David Edwards (2)
	Settings:
		Alert Type: AML, Active: 0, Only New Data: 0, Ignore RepCode: 0, Period: Daily
	Conditions:
		Sum of Outgoing Debit Card Transactions is greater than Account Equity * 25
		percent over  a 30 day period and Value of Rep Code is not equal to 000
	Users:
		Don Christopher Lee (3), Donald One Lee (159), Mark David Edwards (2)
		Marlo  Fullerton (179), Robert   Layton (187), Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 157 results
		Pass: Build SQL returned 157 results
	Rule 93 passed.
 
Rule 95:
	Name: Low priced securities purchased
	Description: Low priced securities purchased
	Alert Text: Low priced security purchase
	Last changed on 05/25/2020 by Robert   Layton (187)
	Settings:
		Alert Type: Trading, Active: 1, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Security Purchase Price is less than 5 and Value of Rep Code is not
		equal to 000
	Users:
		Don Christopher Lee (3), Donald One Lee (159), Mark David Edwards (2)
		Marlo  Fullerton (179), Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 5 results
		Pass: Build SQL returned 5 results
	Rule 95 passed.
 
Rule 97:
	Name: Incoming wire greater than $500
	Description: Incoming wire greater than $500.
	Alert Text: Large incoming wire transfers ($500 or more).
	Last changed on 07/29/2020 by Donald One Lee (159)
	Settings:
		Alert Type: AML, Active: 1, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Incoming Wire Amount is greater than 500 and Value of Rep Code is not
		equal to 000
	Users:
		Don Christopher Lee (3), Donald One Lee (159), Marlo  Fullerton (179)
		Robert   Layton (187), Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 1 results
		Pass: Build SQL returned 1 results
	Rule 97 passed.
 
Rule 98:
	Name: Outgoing Wire greater than $500
	Description: Outgoing Wire greater than $500
	Alert Text: Outgoing wire greater than $500.
	Last changed on 05/21/2020 by Robert   Layton (187)
	Settings:
		Alert Type: AML, Active: 1, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Outgoing Wire Amount is greater than 500 and Value of Rep Code is not
		equal to 000
	Users:
		Don Christopher Lee (3), Donald One Lee (159), Mark David Edwards (2)
		Robert   Layton (187), Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 0 results
		Pass: Build SQL returned 0 results
	Rule 98 passed.
 
Rule 99:
	Name: Outgoing Wire frequency greater than 1  per month
	Description: Outgoing Wire frequency greater than 1 per month
	Alert Text: More than 1 outgoing wires per month.
	Last changed on 05/21/2020 by Robert   Layton (187)
	Settings:
		Alert Type: AML, Active: 1, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Count of Outgoing Wire is greater than 1 over  a 30 day period
	Users:
		Don Christopher Lee (3), Donald One Lee (159), Mark David Edwards (2)
		Robert   Layton (187), Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 0 results
		Pass: Build SQL returned 0 results
	Rule 99 passed.
 
Rule 100:
	Name: Low priced security less than 5 trade in elderly account over 60
	Description: Low priced security trade in elderly account
	Alert Text: Elderly client with a low priced security.
	Last changed on 05/25/2020 by Robert   Layton (187)
	Settings:
		Alert Type: Trading, Active: 1, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Security Purchase Price is less or equal to 5 and Value of Customer Age
		is greater than 60 and Value of Rep Code is not equal to 000
	Users:
		Don Christopher Lee (3), Donald One Lee (159), Mark David Edwards (2)
		Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 0 results
		Pass: Build SQL returned 0 results
	Rule 100 passed.
 
Rule 101:
	Name: Security purchases greater than 10 per month
	Description: Security purchases greater than 10  per month
	Alert Text: 10 or more security purchases over the last month
	Last changed on 05/25/2020 by Robert   Layton (187)
	Settings:
		Alert Type: Trading, Active: 1, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Count of Security Purchase is greater than 10 over  a 30 day period and Value of
		Rep Code is not equal to 000
	Users:
		Don Christopher Lee (3), Donald One Lee (159), Mark David Edwards (2)
		Marlo  Fullerton (179), Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 0 results
		Pass: Build SQL returned 0 results
	Rule 101 passed.
 
Rule 104:
	Name: Outgoing wire greater than  25% of account equity
	Description: Outgoing wire greater than  25% of account equity
	Alert Text: This account has outgoing wires greater than 25% of  Account Equity
	Last changed on 05/21/2020 by Robert   Layton (187)
	Settings:
		Alert Type: AML, Active: 0, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Outgoing Wire Amount is greater than Account Equity * 25 percent and
		Value of Rep Code is not equal to 000
	Users:
		Don Christopher Lee (3), Donald One Lee (159), Mark David Edwards (2)
		Robert   Layton (187), Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 0 results
		Pass: Build SQL returned 0 results
	Rule 104 passed.
 
Rule 105:
	Name: Incoming wire greater than 40% of net worth
	Description: Incoming wire greater than 40% of net worth
	Alert Text: This account has incoming wire(s) greater than 50% of net worth
	Last changed on 05/21/2020 by Robert   Layton (187)
	Settings:
		Alert Type: AML, Active: 0, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Incoming Wire Amount is greater than Net Worth * 50 and Value of Rep
		Code is not equal to 000
	Users:
		Don Christopher Lee (3), Donald One Lee (159), Mark David Edwards (2)
		Robert   Layton (187), Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 0 results
		Pass: Build SQL returned 0 results
	Rule 105 passed.
 
Rule 106:
	Name: Outgoing debit card transactions greater than 15 over 30 days
	Description: Outgoing debit card transactions greater than 15 over 30 days
	Alert Text: This account had 15 or more debit card cash advances over 30 days.
	Last changed on 05/21/2020 by Robert   Layton (187)
	Settings:
		Alert Type: AML, Active: 1, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Count of Outgoing Debit Card Transactions is greater than 15 over  a 30 day
		period and Value of Rep Code is not equal to 000
	Users:
		Don Christopher Lee (3), Donald One Lee (159), Mark David Edwards (2)
		Robert   Layton (187), Scott  Silver (182), Shane  Jordan (180)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 0 results
		Pass: Build SQL returned 0 results
	Rule 106 passed.
 
Rule 116:
	Name: Outgoing Debit Card transfers > $2500
	Description: Outgoing debit card transactions greater than $2500
	Alert Text: Debit card transactions over $2500
	Last changed on 05/21/2020 by Robert   Layton (187)
	Settings:
		Alert Type: AML, Active: 1, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Outgoing Debit Card Transactions is greater than 2500 and Value of Rep
		Code is not equal to 000
	Users:
		Donald One Lee (159), Mark David Edwards (2), Robert   Layton (187)
		Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 0 results
		Pass: Build SQL returned 0 results
	Rule 116 passed.
 
Rule 117:
	Name: Outgoing Debit Card tranactions > 10K
	Description: Very large transactions
	Alert Text: Outgoing Debit Card transactions greater than $10000
	Last changed on 05/21/2020 by Robert   Layton (187)
	Settings:
		Alert Type: AML, Active: 0, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Outgoing Debit Card Transactions is greater than 10000 and Value of Rep
		Code is not equal to 000
	Users:
		Donald One Lee (159), Mark David Edwards (2), Robert   Layton (187)
		Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 0 results
		Pass: Build SQL returned 0 results
	Rule 117 passed.
 
Rule 120:
	Name: Outgoing Debit Card Transaction > $5K
	Description: Outgoing Debit Card Transaction > $5K
	Alert Text: Large debit card transactions (over $5,000)..
	Last changed on 05/21/2020 by Robert   Layton (187)
	Settings:
		Alert Type: AML, Active: 1, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Outgoing Debit Card Transactions is greater than 5000 and Value of Rep
		Code is not equal to 000
	Users:
		Don Christopher Lee (3), Donald One Lee (159), Mark David Edwards (2)
		Robert   Layton (187), Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 0 results
		Pass: Build SQL returned 0 results
	Rule 120 passed.
 
Rule 128:
	Name: High Risk customer outgoing wire transactions exceeding expected number
	Description: High Risk customer outgoing wire transactions exceeding expected number
	Alert Text: High Risk customer with wire transactions exceeding expected number.
	Last changed on 05/21/2020 by Robert   Layton (187)
	Settings:
		Alert Type: AML, Active: 0, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Count of Outgoing Wire is greater than Anticipated # Wire Trans * 1 over  a 30
		day period and Value of Risk Score is greater than 75 and Value of Rep Code is
		not equal to 000
	Users:
		Don Christopher Lee (3), Donald One Lee (159), Mark David Edwards (2)
		Marlo  Fullerton (179), Robert   Layton (187), Scott  Silver (182)

	Checking DB vs. Build SQL...
		FAIL: SQL is not the same at char 115

	Running both versions of the SQL...
		Pass: DB SQL returned 0 results
		Pass: Build SQL returned 0 results
	Rule 128 failed.
 
Rule 129:
	Name: High Risk Account Incoming Wire Alert greater than $50,000
	Description: High Risk Account Incoming Wire Alert greater than $50,000
	Alert Text: High Risk customer has an incoming wire greater than $50,000
	Last changed on 05/21/2020 by Robert   Layton (187)
	Settings:
		Alert Type: AML, Active: 0, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Incoming Wire Amount is greater than 50000 and Value of Risk Score is
		greater than 75 and Value of Rep Code is not equal to 000
	Users:
		Don Christopher Lee (3), Donald One Lee (159), Mark David Edwards (2)
		Robert   Layton (187), Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 0 results
		Pass: Build SQL returned 0 results
	Rule 129 passed.
 
Rule 160:
	Name: Concentrated positions greater than 60% of account equity
	Description: Concentrated positions greater than 60% of account equity
	Alert Text: This account has a concentrated position greater than 60% of account equity
	Last changed on 05/22/2020 by Robert   Layton (187)
	Settings:
		Alert Type: Trading, Active: 0, Only New Data: 0, Ignore RepCode: 0, Period: every month
	Conditions:
		Value of Holding Market Value is greater than Account Equity * 60 percent and
		Value of Rep Code is not equal to 000
	Users:
		Don Christopher Lee (3), Mark David Edwards (2), Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 141 results
		Pass: Build SQL returned 141 results
	Rule 160 passed.
 
Rule 161:
	Name: Testing -- incoming wire over $1000
	Description: Incoming wire over $1000
	Alert Text: Incoming wire greater than $1000 detected
	Last changed on 05/21/2020 by Robert   Layton (187)
	Settings:
		Alert Type: AML, Active: 0, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Incoming Wire Amount is greater than 1000
	Users:
		Donald One Lee (159), Mark David Edwards (2), Robert   Layton (187)
		Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 1 results
		Pass: Build SQL returned 1 results
	Rule 161 passed.
 
Rule 162:
	Name: Find all high risk customers
	Description: Find all high risk customers
	Alert Text: High risk customers with a score greater than 75
	Last changed on 05/21/2020 by Robert   Layton (187)
	Settings:
		Alert Type: Risk, Active: 0, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Risk Score is greater than 75
	Users:
		Don Christopher Lee (3), Donald One Lee (159), Mark David Edwards (2)
		Robert   Layton (187), Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 68 results
		Pass: Build SQL returned 68 results
	Rule 162 passed.
 
Rule 163:
	Name: Platform TEST Rule
	Description: Find all medium risk customers
	Alert Text: Medium risk customers
	Last changed on 05/21/2020 by Robert   Layton (187)
	Settings:
		Alert Type: AML, Active: 0, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Risk Score is between25 and 75
	Users:
		Donald One Lee (159), Mark David Edwards (2), Robert   Layton (187)
		Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 419 results
		Pass: Build SQL returned 419 results
	Rule 163 passed.
 
Rule 164:
	Name: Platform TEST Find all Low Risk customers
	Description: Find all low risk customers
	Alert Text: List of low risk customers
	Last changed on 05/21/2020 by Robert   Layton (187)
	Settings:
		Alert Type: AML, Active: 0, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Risk Score is less than 20
	Users:
		Donald One Lee (159), Mark David Edwards (2), Robert   Layton (187)
		Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 950 results
		Pass: Build SQL returned 950 results
	Rule 164 passed.
 
Rule 178:
	Name: Account Turnover Ratio Greater than 10 over 120 days
	Description: Account Turnover Ratio Greater than 10 over 120 days
	Alert Text: Please review this alert
	Last changed on 05/25/2020 by Robert   Layton (187)
	Settings:
		Alert Type: Trading, Active: 1, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Account Turnover Ratio is greater than 10 over  a 120 day period and
		Value of Rep Code is not equal to 000
	Users:
		Don Christopher Lee (3), Donald One Lee (159), Mark David Edwards (2)
		Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 4 results
		Pass: Build SQL returned 4 results
	Rule 178 passed.
 
Rule 179:
	Name: High Risk account placing a trade
	Description: High Risk account placing a trade
	Alert Text: Please review this alert
	Last changed on 05/21/2020 by Robert   Layton (187)
	Settings:
		Alert Type: Risk, Active: 0, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Risk Score is greater or equal to 75 and Count of Trade Quantity is
		greater or equal to 1 and Value of Rep Code is not equal to 000
	Users:
		Don Christopher Lee (3), Donald One Lee (159), Mark David Edwards (2)
		Marlo  Fullerton (179), Robert   Layton (187), Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 1 results
		Pass: Build SQL returned 1 results
	Rule 179 passed.
 
Rule 180:
	Name: High Risk Account receiving a wire
	Description: High Risk Account receiving a wire
	Alert Text: Please review this alert
	Last changed on 05/21/2020 by Robert   Layton (187)
	Settings:
		Alert Type: Risk, Active: 1, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Risk Score is greater or equal to 75 and Count of Incoming Wire is
		greater or equal to 1 and Value of Rep Code is not equal to 000
	Users:
		Don Christopher Lee (3), Donald One Lee (159), Mark David Edwards (2)
		Robert   Layton (187), Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 0 results
		Pass: Build SQL returned 0 results
	Rule 180 passed.
 
Rule 181:
	Name: Turnover Ratio > 2 in Long term growth Account
	Description: Turnover Ratio is greater than 2 in an account with an investment objective  of Long term growth
	Alert Text: Turnover ratio is greater than 2 in accounts with Long term growth investment objectives
	Last changed on 05/25/2020 by Robert   Layton (187)
	Settings:
		Alert Type: Trading, Active: 1, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Account Turnover Ratio is greater than 2 and Value of Investment
		Objective (text) is equal to Long term growth and Value of Rep Code is not equal
		to 000
	Users:
		Don Christopher Lee (3), Donald One Lee (159), Mark David Edwards (2)
		Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 26 results
		Pass: Build SQL returned 26 results
	Rule 181 passed.
 
Rule 182:
	Name: Turnover Ratio > 4 in Income Account
	Description: The turnover ratio is greater than 4 in accounts with Income investment objectives.
	Alert Text: Turnover ratio is greater than 4 in accounts with Income investment objectives.
	Last changed on 09/05/2019 by Donald One Lee (159)
	Settings:
		Alert Type: Trading, Active: 1, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Account Turnover Ratio is greater than 4 and Value of Investment
		Objective (text) is equal to Income and Value of Rep Code is not equal to 000
	Users:
		Don Christopher Lee (3), Donald One Lee (159), Mark David Edwards (2)
		Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 1 results
		Pass: Build SQL returned 1 results
	Rule 182 passed.
 
Rule 183:
	Name: Turnover Ratio > 6 in Income accounts
	Description: The turnover ratio is greater than 6 in an account with an Income investment objective
	Alert Text: Turnover ratio is greater than 6 in an account with an Income investment objective
	Last changed on 05/25/2020 by Robert   Layton (187)
	Settings:
		Alert Type: Trading, Active: 0, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Account Turnover Ratio is greater than 6 and Value of Investment
		Objective (text) is equal to Income and Value of Rep Code is not equal to 000
	Users:
		Don Christopher Lee (3), Donald One Lee (159), Mark David Edwards (2)
		Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 0 results
		Pass: Build SQL returned 0 results
	Rule 183 passed.
 
Rule 184:
	Name: Turnover Ratio > 8 in Income account
	Description: The turnover ratio is greater than 8 in an account with a Balanced account investment objective
	Alert Text: Turnover ratio is greater than 8 in an account with a Income account investment objective
	Last changed on 05/25/2020 by Robert   Layton (187)
	Settings:
		Alert Type: Trading, Active: 0, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Account Turnover Ratio is greater than 8 and Value of Investment
		Objective (text) is equal to Income and Value of Rep Code is not equal to 000
	Users:
		Don Christopher Lee (3), Donald One Lee (159), Mark David Edwards (2)
		Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 0 results
		Pass: Build SQL returned 0 results
	Rule 184 passed.
 
Rule 186:
	Name: Turnover Ratio > 10 in Short Term Growth account
	Description: The turnover ratio is greater than 10 in an account with a Speculative investment objective
	Alert Text: Turnover ratio is greater than 10 in an account with a Short Term Growth investment objective
	Last changed on 05/25/2020 by Robert   Layton (187)
	Settings:
		Alert Type: Trading, Active: 0, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Account Turnover Ratio is greater than 10 and Value of Investment
		Objective (text) is equal to Short Term Growth and Value of Rep Code is not
		equal to 000
	Users:
		Don Christopher Lee (3), Donald One Lee (159), Mark David Edwards (2)
		Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 0 results
		Pass: Build SQL returned 0 results
	Rule 186 passed.
 
Rule 187:
	Name: Turnover Ratio > 2 in Income account
	Description: Turnover Ratio is greater than 2 in an account with an investment objective of Income
	Alert Text: Turnover ratio is greater than 2 in accounts with Income investment objectives
	Last changed on 05/25/2020 by Robert   Layton (187)
	Settings:
		Alert Type: Trading, Active: 0, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Account Turnover Ratio is greater than 2 and Value of Investment
		Objective (text) is equal to Income and Value of Rep Code is not equal to 000
	Users:
		Don Christopher Lee (3), Donald One Lee (159), Mark David Edwards (2)
		Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 3 results
		Pass: Build SQL returned 3 results
	Rule 187 passed.
 
Rule 188:
	Name: Turnover Ratio > 4 in Income Account
	Description: The turnover ratio is greater than 4 in accounts with Income investment objectives
	Alert Text: Turnover ratio is greater than 4 in accounts with Income investment objectives
	Last changed on 05/25/2020 by Robert   Layton (187)
	Settings:
		Alert Type: Trading, Active: 0, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Account Turnover Ratio is greater than 4 and Value of Investment
		Objective (text) is equal to Income and Value of Rep Code is not equal to 000
	Users:
		Don Christopher Lee (3), Donald One Lee (159), Mark David Edwards (2)
		Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 1 results
		Pass: Build SQL returned 1 results
	Rule 188 passed.
 
Rule 189:
	Name: Commissions to Equity Ratio is between 12.5 and 14.99
	Description: The commissions to equity ratio is between 12.5 and 14.99
	Alert Text: The commissions to equity ratio is between 12.5 and 14.99.
	Last changed on 05/25/2020 by Robert   Layton (187)
	Settings:
		Alert Type: Trading, Active: 1, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Commission/Equity Ratio is between12.5 and 14.99 and Value of Rep Code
		is not equal to 000
	Users:
		CO  Finwebtech (186), Don Christopher Lee (3), Donald One Lee (159)
		Mark David Edwards (2), Marlo  Fullerton (179), Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 0 results
		Pass: Build SQL returned 0 results
	Rule 189 passed.
 
Rule 190:
	Name: Commissions to Equity Ratio is between 15 and 17.49
	Description: The commissions to equity ratio is between 15 and 17.49
	Alert Text: The commissions to equity ratio is between 15 and 17.49.
	Last changed on 05/25/2020 by Robert   Layton (187)
	Settings:
		Alert Type: Trading, Active: 1, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Commission/Equity Ratio is between15 and 17.49 and Value of Rep Code is
		not equal to 000
	Users:
		CO  Finwebtech (186), Don Christopher Lee (3), Donald One Lee (159)
		Mark David Edwards (2), Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 0 results
		Pass: Build SQL returned 0 results
	Rule 190 passed.
 
Rule 191:
	Name: Commissions to Equity Ratio between 17.5 and 20
	Description: The commissions to equity ratio is between 17.5 and 20
	Alert Text: The commissions to equity ratio is between 17.5 and 20
	Last changed on 05/25/2020 by Robert   Layton (187)
	Settings:
		Alert Type: Trading, Active: 1, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Commission/Equity Ratio is between17.5 and 20 and Value of Rep Code is
		not equal to 000
	Users:
		CO  Finwebtech (186), Don Christopher Lee (3), Donald One Lee (159)
		Mark David Edwards (2), Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 0 results
		Pass: Build SQL returned 0 results
	Rule 191 passed.
 
Rule 192:
	Name: Turnover Ratio > 1
	Description: Turnover Ratio > 1
	Alert Text: Turnover Ratio is greater than 1.
	Last changed on 05/25/2020 by Robert   Layton (187)
	Settings:
		Alert Type: Trading, Active: 1, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Account Turnover Ratio is greater than 1 and Value of Rep Code is not
		equal to 000
	Users:
		Don Christopher Lee (3), Donald One Lee (159), Mark David Edwards (2)
		Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 74 results
		Pass: Build SQL returned 74 results
	Rule 192 passed.
 
Rule 193:
	Name: Commission To Equity Ratio is between 1 and 20
	Description: Commission To Equity Ratio is between 1 and 20
	Alert Text: Commission to Equity Ratio is between 1 and 20
	Last changed on 05/25/2020 by Robert   Layton (187)
	Settings:
		Alert Type: Trading, Active: 1, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Commission/Equity Ratio is between1 and 20 and Value of Rep Code is not
		equal to 000
	Users:
		CO  Finwebtech (186), Don Christopher Lee (3), Donald One Lee (159)
		Mark David Edwards (2)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 0 results
		Pass: Build SQL returned 0 results
	Rule 193 passed.
 
Rule 194:
	Name: PEP trade over 30 days
	Description: PEP conducting a trade over 30 days
	Alert Text: Please review alert
	Last changed on 04/24/2020 by Don Christopher Lee (3)
	Settings:
		Alert Type: Risk, Active: 0, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of PEP Account is equal to Y and Count of Security Transaction is greater
		or equal to 1 over  a 30 day period and Value of Rep Code is not equal to 000
	Users:
		CO  Finwebtech (186)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 4 results
		Pass: Build SQL returned 4 results
	Rule 194 passed.
 
Rule 195:
	Name: PEP Wire over 30 days
	Description: PEP wire over 30 days
	Alert Text: Please review alert
	Last changed on 06/22/2020 by Mark David Edwards (2)
	Settings:
		Alert Type: Risk, Active: 0, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of PEP Account is equal to Y and Count of Wires is greater than 1 over  a
		30 day period and Value of Rep Code is not equal to 000
	Users:
		Don Christopher Lee (3), Donald One Lee (159), Mark David Edwards (2)
		Marlo  Fullerton (179), Robert   Layton (187), Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 10 results
		Pass: Build SQL returned 10 results
	Rule 195 passed.
 
Rule 196:
	Name: Testing Basel Score
	Description: Tests the new RR Form Basel Score
	Alert Text: Caution Basel Score Risk
	Last changed on 12/15/2020 by CO  Finwebtech (186)
	Settings:
		Alert Type: Risk, Active: 1, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Basel Score is greater than 5
	Users:
		CO  Finwebtech (186)

	Checking DB vs. Build SQL...
		FAIL: SQL is not the same at char 29

	Running both versions of the SQL...
	Exception caught in getResults: [1054 (42S22): Unknown column 'cust.CustomerNumber' in 'field list']
		FAIL: Error returned for DB SQL
		Pass: Build SQL returned 0 results
	Rule 196 failed.
 
Rule 197:
	Name: Testing anticipated wire transfers
	Description: Triggers when anticipated wire transfers too high
	Alert Text: Caution: Anticipated number of wire transfers greater than 2
	Last changed on 06/22/2020 by Mark David Edwards (2)
	Settings:
		Alert Type: Risk, Active: 0, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Anticipated # Wire Trans is greater than 2
	Users:
		CO  Finwebtech (186)

	Checking DB vs. Build SQL...
		FAIL: SQL is not the same at char 29

	Running both versions of the SQL...
	Exception caught in getResults: [1054 (42S22): Unknown column 'cust.CustomerNumber' in 'field list']
		FAIL: Error returned for DB SQL
		Pass: Build SQL returned 0 results
	Rule 197 failed.
 
Rule 198:
	Name: Testing Anticipated Trading
	Description: Triggers when anticipated number of trades too high
	Alert Text: Caution: Anticipated number of security transactions greater than 2
	Last changed on 06/22/2020 by Mark David Edwards (2)
	Settings:
		Alert Type: Risk, Active: 0, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Anticipated # Security Trans is greater than 2
	Users:
		CO  Finwebtech (186)

	Checking DB vs. Build SQL...
		FAIL: SQL is not the same at char 29

	Running both versions of the SQL...
	Exception caught in getResults: [1054 (42S22): Unknown column 'cust.CustomerNumber' in 'field list']
		FAIL: Error returned for DB SQL
		Pass: Build SQL returned 0 results
	Rule 198 failed.
 
Rule 199:
	Name: Testing Risk Level
	Description: Triggers High Risk customers
	Alert Text: Caution: High Risk customers.
	Last changed on 05/21/2020 by Robert   Layton (187)
	Settings:
		Alert Type: Risk, Active: 0, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Risk Level (text) is equal to High
	Users:
		Donald One Lee (159), Mark David Edwards (2), Robert   Layton (187)
		Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 111 results
		Pass: Build SQL returned 111 results
	Rule 199 passed.
 
Rule 200:
	Name: Testing Risk Score
	Description: Shows Medium risk customers with a score between 32 and 95
	Alert Text: Caution: Medium Risk customers with score between 32 and 95.
	Last changed on 05/21/2020 by Robert   Layton (187)
	Settings:
		Alert Type: Risk, Active: 0, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Risk Score is between32 and 95
	Users:
		Donald One Lee (159), Mark David Edwards (2), Robert   Layton (187)
		Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 103 results
		Pass: Build SQL returned 103 results
	Rule 200 passed.
 
Rule 201:
	Name: High Risk Customer Conducted Security Transaction
	Description: High Risk Customer Conducted Security Transaction
	Alert Text: High Risk Customer Conducted Security Transaction
	Last changed on 05/21/2020 by Robert   Layton (187)
	Settings:
		Alert Type: Risk, Active: 0, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Risk Score is greater than 75 and Count of Security Transaction is
		greater or equal to 1 and Value of Rep Code is not equal to 000
	Users:
		Don Christopher Lee (3), Donald One Lee (159), Mark David Edwards (2)
		Marlo  Fullerton (179), Robert   Layton (187), Scott  Silver (182)
		Shane  Jordan (180)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 0 results
		Pass: Build SQL returned 0 results
	Rule 201 passed.
 
Rule 203:
	Name: High Risk Customers Conducting Outgoing Wire Transaction
	Description: High Risk Customers Conducting Outgoing Wire Transaction
	Alert Text: High Risk Customers Conducting Outgoing Wire Transaction
	Last changed on 07/14/2020 by Mark David Edwards (2)
	Settings:
		Alert Type: Risk, Active: 1, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Risk Score is greater or equal to 75 and Count of Outgoing Wire is
		greater or equal to 1 and Value of Rep Code is not equal to 000
	Users:
		Don Christopher Lee (3), Donald One Lee (159), Mark David Edwards (2)
		Marlo  Fullerton (179), Robert   Layton (187), Scott  Silver (182)
		Shane  Jordan (180)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 0 results
		Pass: Build SQL returned 0 results
	Rule 203 passed.
 
Rule 204:
	Name: Test Rule - Find all Medium Risk customers
	Description: Find all Medium Risk customers
	Alert Text: Showing all medium risk customers
	Last changed on 05/21/2020 by Robert   Layton (187)
	Settings:
		Alert Type: Risk, Active: 0, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Risk Score is between25 and 75
	Users:
		Donald One Lee (159), Robert   Layton (187), Scott  Silver (182)
		Shane  Jordan (180)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 419 results
		Pass: Build SQL returned 419 results
	Rule 204 passed.
 
Rule 205:
	Name: High Risk account debit card withdrawals
	Description: High Risk account with  more than 1 debit card withdrawals
	Alert Text: High Risk account with more than 1 debit card withdrawals
	Last changed on 05/21/2020 by Robert   Layton (187)
	Settings:
		Alert Type: AML, Active: 1, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Count of Debit Card Withdrawal is greater than 1 and Value of Risk Level (text)
		is equal to High and Value of Rep Code is not equal to 000
	Users:
		Don Christopher Lee (3), Donald One Lee (159), Mark David Edwards (2)
		Marlo  Fullerton (179), Robert   Layton (187), Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 0 results
		Pass: Build SQL returned 0 results
	Rule 205 passed.
 
Rule 206:
	Name: Account Equity drops by 10% from previous day
	Description: Account Equity drop of 10% or more
	Alert Text: Account Equity drop of 10% or more
	Last changed on 01/08/2021 by Marlo  Fullerton (179)
	Settings:
		Alert Type: Risk, Active: 1, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Account Equity Drop is greater than 0.1 and Value of Rep Code is not
		equal to 000 and Value of Account Number is not equal to ''
	Users:
		Don Christopher Lee (3), Donald One Lee (159), Mark David Edwards (2)
		Marlo  Fullerton (179), Robert   Layton (187), Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 3 results
		Pass: Build SQL returned 3 results
	Rule 206 passed.
 
Rule 207:
	Name: High Fixed Income Markup
	Description: Fixed Income Markup Over 2.5%
	Alert Text: High Fixed Income Markup
	Last changed on 05/25/2020 by Robert   Layton (187)
	Settings:
		Alert Type: Trading, Active: 1, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Security Type (text) is equal to Bonds and Value of Commission is
		greater than Trade Principle * 2.5 percent and Value of Rep Code is not equal to
		000
	Users:
		Don Christopher Lee (3), Donald One Lee (159), Mark David Edwards (2)
		Marlo  Fullerton (179), Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 0 results
		Pass: Build SQL returned 0 results
	Rule 207 passed.
 
Rule 208:
	Name: Structured Deposits
	Description: Three or more low value deposits in 90 days
	Alert Text: Three or more deposits under $10,000 in last 90 days
	Last changed on 05/21/2020 by Robert   Layton (187)
	Settings:
		Alert Type: AML, Active: 1, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Count of Cash Deposit is greater or equal to 3 over  a 90 day period and Value
		of Cash Deposit is less than 10000 and Value of Rep Code is not equal to 000
	Users:
		Don Christopher Lee (3), Donald One Lee (159), Mark David Edwards (2)
		Marlo  Fullerton (179), Robert   Layton (187), Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 0 results
		Pass: Build SQL returned 0 results
	Rule 208 passed.
 
Rule 209:
	Name: Employee Trade
	Description: Trades made by employees
	Alert Text: Trades made by employees
	Last changed on 05/21/2020 by Robert   Layton (187)
	Settings:
		Alert Type: Risk, Active: 0, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Trade Flagged Party (text) is equal to Employee and Value of Rep Code
		is not equal to 000
	Users:
		Don Christopher Lee (3), Donald One Lee (159), Mark David Edwards (2)
		Marlo  Fullerton (179), Robert   Layton (187), Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 0 results
		Pass: Build SQL returned 0 results
	Rule 209 passed.
 
Rule 210:
	Name: Check Withdrawals greater than $5000
	Description: Check Withdrawals greater than $5000
	Alert Text: Check Withdrawals greater than $5000
	Last changed on 01/06/2021 by Marlo  Fullerton (179)
	Settings:
		Alert Type: AML, Active: 1, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Check Withdrawal is greater than 5000
	Users:
		CO  Finwebtech (186), Robert   Layton (187)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 0 results
		Pass: Build SQL returned 0 results
	Rule 210 passed.
 
Rule 211:
	Name: Mutual Fund Purchase
	Description: Fires on any MF purchase
	Alert Text: A Mutual Fund has been purchased.
	Last changed on 05/25/2020 by Robert   Layton (187)
	Settings:
		Alert Type: Trading, Active: 1, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Security Type (text) is equal to Mutual Funds and Value of Buy/Sell
		Code is equal to B and Value of Rep Code is not equal to 000
	Users:
		Don Christopher Lee (3), Donald One Lee (159), Mark David Edwards (2)
		Marlo  Fullerton (179), Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 7 results
		Pass: Build SQL returned 7 results
	Rule 211 passed.
 
Rule 212:
	Name: Mutual Fund Buy/Sell Alert
	Description: Alerts when mutual funds are purchased and sold within 90 days regardless of fund family.
	Alert Text: A Mutual Fund has been bought or sold.
	Last changed on 04/23/2020 by Don Christopher Lee (3)
	Settings:
		Alert Type: Trading, Active: 0, Only New Data: 0, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Has Mutual Funds Trades And Sells Within 30 Days is equal to Y and
		Value of Rep Code is not equal to 000
	Users:
		CO  Finwebtech (186)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 1 results
		Pass: Build SQL returned 1 results
	Rule 212 passed.
 
Rule 213:
	Name: Concentrated bond positions greater than 50% of account equity
	Description: Concentrated positions greater than 50% of account equity
	Alert Text: This account has a concentrated position greater than 50% of account equity.
	Last changed on 05/12/2020 by Don Christopher Lee (3)
	Settings:
		Alert Type: Trading, Active: 1, Only New Data: 1, Ignore RepCode: 0, Period: every month
	Conditions:
		Value of Bond Holding is greater than Account Equity * 50 percent and Value of
		Rep Code is not equal to 000
	Users:
		Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 1 results
		Pass: Build SQL returned 1 results
	Rule 213 passed.
 
Rule 214:
	Name: Turnover Ratio > 8 in High Risk account
	Description: The turnover ratio is greater than 8 in an account with a High Risk tolerance
	Alert Text: Turnover ratio is greater than 8 in an account with a High Risk tolerance
	Last changed on 04/24/2020 by Don Christopher Lee (3)
	Settings:
		Alert Type: Trading, Active: 0, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Account Turnover Ratio is greater than 8 and Value of Risk Tolerance is
		equal to High Risk and Value of Rep Code is not equal to 000
	Users:
		CO  Finwebtech (186)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 2 results
		Pass: Build SQL returned 2 results
	Rule 214 passed.
 
Rule 215:
	Name: Turnover Ratio > 8 in Low risk account
	Description: Turnover Ratio is greater than 4 in an account with risk of Low
	Alert Text: Turnover ratio is greater than 8 in an account with a low risk tolerance
	Last changed on 05/25/2020 by Robert   Layton (187)
	Settings:
		Alert Type: Trading, Active: 0, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Account Turnover Ratio is greater than 8 and Value of Risk Tolerance is
		equal to Low and Value of Rep Code is not equal to 000
	Users:
		Donald One Lee (159), Mark David Edwards (2), Marlo  Fullerton (179)
		Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 1 results
		Pass: Build SQL returned 1 results
	Rule 215 passed.
 
Rule 216:
	Name: Turnover Ratio > 4 in Low risk account
	Description: Turnover Ratio is greater than 4 in an account with risk of Low
	Alert Text: Turnover ratio is greater than 4 in accounts with low risk tolerance
	Last changed on 05/25/2020 by Robert   Layton (187)
	Settings:
		Alert Type: Trading, Active: 0, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Account Turnover Ratio is greater than 4 and Value of Risk Tolerance is
		equal to Low and Value of Rep Code is not equal to 000
	Users:
		Donald One Lee (159), Mark David Edwards (2), Marlo  Fullerton (179)
		Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 2 results
		Pass: Build SQL returned 2 results
	Rule 216 passed.
 
Rule 217:
	Name: Turnover Ratio > 6 in Moderate Account
	Description: The turnover ratio is greater than 6 in accounts with Moderate risk tolerance
	Alert Text: Turnover ratio is greater than 6 in accounts with Moderate risk tolerance
	Last changed on 05/25/2020 by Robert   Layton (187)
	Settings:
		Alert Type: Trading, Active: 1, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Account Turnover Ratio is greater than 6 and Value of Risk Tolerance is
		equal to Moderate and Value of Rep Code is not equal to 000
	Users:
		Donald One Lee (159), Mark David Edwards (2), Marlo  Fullerton (179)
		Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 0 results
		Pass: Build SQL returned 0 results
	Rule 217 passed.
 
Rule 218:
	Name: Commissions to Equity Ratio is between 12.5 and 14.99
	Description: The commissions to equity ratio is between 12.5 and 14.99
	Alert Text: The commissions to equity ratio is between 12.5 and 14.99
	Last changed on 05/25/2020 by Robert   Layton (187)
	Settings:
		Alert Type: Trading, Active: 1, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Commission/Equity Ratio is between12.5 and 14.99 and Value of Rep Code
		is not equal to 000
	Users:
		CO  Finwebtech (186), Don Christopher Lee (3), Donald One Lee (159)
		Mark David Edwards (2), Marlo  Fullerton (179), Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 0 results
		Pass: Build SQL returned 0 results
	Rule 218 passed.
 
Rule 219:
	Name: Commissions to Equity Ratio is between 15 and 17.49
	Description: The Commissions to Equity Ratio is between 15 and 17.49
	Alert Text: The Commissions to Equity Ratio is between 15 and 17.49
	Last changed on 05/25/2020 by Robert   Layton (187)
	Settings:
		Alert Type: Trading, Active: 1, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Commission/Equity Ratio is between15 and 17.49 and Value of Rep Code is
		not equal to 000
	Users:
		CO  Finwebtech (186), Don Christopher Lee (3), Donald One Lee (159)
		Mark David Edwards (2), Marlo  Fullerton (179), Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 0 results
		Pass: Build SQL returned 0 results
	Rule 219 passed.
 
Rule 220:
	Name: Commissions to Equity Ratio is 3 or higher
	Description: The Commissions to Equity Ratio is 3 or higher
	Alert Text: The Commissions to Equity Ratio is 3 or higher
	Last changed on 05/25/2020 by Robert   Layton (187)
	Settings:
		Alert Type: Trading, Active: 0, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Commission/Equity Ratio is greater or equal to 3 and Value of Rep Code
		is not equal to 000
	Users:
		Don Christopher Lee (3), Donald One Lee (159), Mark David Edwards (2)
		Marlo  Fullerton (179), Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 0 results
		Pass: Build SQL returned 0 results
	Rule 220 passed.
 
Rule 221:
	Name: PEP Wire over 30 days
	Description: PEP Wire over 30 days
	Alert Text: PEP Wire over the last 30 days
	Last changed on 07/31/2020 by Donald One Lee (159)
	Settings:
		Alert Type: Risk, Active: 0, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of PEP Account is equal to Y and Count of Wires is greater than 1 and
		Value of Rep Code is not equal to 000
	Users:
		CO  Finwebtech (186)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 13 results
		Pass: Build SQL returned 13 results
	Rule 221 passed.
 
Rule 222:
	Name: Option security purchased in low risk account
	Description: Option security purchased in low risk account based on customer investment profile
	Alert Text: Option security purchased in low risk account based on customer investment profile
	Last changed on 05/25/2020 by Robert   Layton (187)
	Settings:
		Alert Type: Trading, Active: 0, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Count of Options Purchase is greater or equal to 1 and Value of Risk Tolerance
		is equal to Low and Value of Rep Code is not equal to 000
	Users:
		Don Christopher Lee (3), Donald One Lee (159), Mark David Edwards (2)
		Marlo  Fullerton (179), Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 0 results
		Pass: Build SQL returned 0 results
	Rule 222 passed.
 
Rule 224:
	Name: Elderly customer investing in options
	Description: Customer 65 and older purchasing options
	Alert Text: Customer 65 and older purchasing options
	Last changed on 04/24/2020 by Don Christopher Lee (3)
	Settings:
		Alert Type: Trading, Active: 0, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Security Type (text) is equal to Options and Value of Customer Age is
		greater or equal to 60 and Value of Rep Code is not equal to 000 and Value of
		Risk Tolerance is not equal to Speculation and Value of Risk Tolerance is not
		equal to High Risk
	Users:
		CO  Finwebtech (186)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 0 results
		Pass: Build SQL returned 0 results
	Rule 224 passed.
 
Rule 225:
	Name: Customer deposits between $9500 and $9999
	Description: Customer deposits just below the $10,000 threshold
	Alert Text: Customer deposits just below the $10,000 threshold
	Last changed on 05/21/2020 by Robert   Layton (187)
	Settings:
		Alert Type: AML, Active: 0, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Customer Deposits is between9500 and 9999 and Value of Rep Code is not
		equal to 000
	Users:
		CO  Finwebtech (186), Don Christopher Lee (3), Donald One Lee (159)
		Mark David Edwards (2), Marlo  Fullerton (179), Robert   Layton (187)
		Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 0 results
		Pass: Build SQL returned 0 results
	Rule 225 passed.
 
Rule 226:
	Name: Cash advances over 30 days greater than 30% of account equity
	Description: Outgoing Cash advances ATM card greater than 30% of account equity over 30 days.
	Alert Text: Outgoing Cash advances ATM card greater than 30% of account equity over 30 days.
	Last changed on 05/21/2020 by Robert   Layton (187)
	Settings:
		Alert Type: AML, Active: 0, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Sum of Outgoing Debit Card Cash Advances is greater than Account Equity * 30
		percent over  a 30 day period and Value of Rep Code is not equal to 000
	Users:
		Don Christopher Lee (3), Donald One Lee (159), Mark David Edwards (2)
		Marlo  Fullerton (179), Robert   Layton (187), Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 0 results
		Pass: Build SQL returned 0 results
	Rule 226 passed.
 
Rule 227:
	Name: Outgoing Checks over 30 days greater than 30% of account equity
	Description: Outgoing Checks over 30 days greater than 30% of account equity
	Alert Text: Outgoing Checks over 30 days greater than 30% of account equity
	Last changed on 05/21/2020 by Robert   Layton (187)
	Settings:
		Alert Type: AML, Active: 0, Only New Data: 0, Ignore RepCode: 0, Period: Daily
	Conditions:
		Sum of Outgoing Debit Card Check is greater than Account Equity * 30 percent
		over  a 30 day period and Value of Rep Code is not equal to 000
	Users:
		Don Christopher Lee (3), Donald One Lee (159), Mark David Edwards (2)
		Marlo  Fullerton (179), Robert   Layton (187), Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 0 results
		Pass: Build SQL returned 0 results
	Rule 227 passed.
 
Rule 228:
	Name: Low priced security deposit
	Description: Low priced security deposit less than $5.00
	Alert Text: Low priced security deposit less than $5.00
	Last changed on 04/24/2020 by Don Christopher Lee (3)
	Settings:
		Alert Type: AML, Active: 0, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Security Deposit is less than 5 and Value of Rep Code is not equal to
		000
	Users:
		CO  Finwebtech (186)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 0 results
		Pass: Build SQL returned 0 results
	Rule 228 passed.
 
Rule 229:
	Name: Deposit and subsequent wires in accounts
	Description: Deposit and subsequent wires in accounts
	Alert Text: Deposit and subsequent wires in accounts marked long term
	Last changed on 04/24/2020 by Don Christopher Lee (3)
	Settings:
		Alert Type: AML, Active: 0, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Count of Customer Deposits is greater or equal to 2 over  a 30 day period and
		Count of Wires is greater or equal to 2 over  a 30 day period and Value of
		Investment Objective (text) is equal to Long term growth and Value of Rep Code
		is not equal to 000
	Users:
		CO  Finwebtech (186)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 47 results
		Pass: Build SQL returned 47 results
	Rule 229 passed.
 
Rule 230:
	Name: Account Turnover Ratio Greater than 3 over 120 days
	Description: Account Turnover Ratio Greater than 3 over 120 days
	Alert Text: Account Turnover Ratio Greater than 3 over 120 days
	Last changed on 05/25/2020 by Robert   Layton (187)
	Settings:
		Alert Type: Trading, Active: 1, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Account Turnover Ratio is greater or equal to 3 over  a 120 day period
		and Value of Client Type (text) is equal to Retail and Value of Rep Code is not
		equal to 000
	Users:
		Don Christopher Lee (3), Donald One Lee (159), Mark David Edwards (2)
		Marlo  Fullerton (179), Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 0 results
		Pass: Build SQL returned 0 results
	Rule 230 passed.
 
Rule 231:
	Name: Low priced security purchased in Low Risk account
	Description: Low priced security purchased in accounts with low risk tolerance
	Alert Text: Low priced security purchased in accounts with low risk tolerance
	Last changed on 05/25/2020 by Robert   Layton (187)
	Settings:
		Alert Type: Trading, Active: 1, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Security Purchase Price is less or equal to 2 and Value of Risk
		Tolerance is equal to Conservative and Value of Client Type (text) is equal to
		Retail and Value of Rep Code is not equal to 000
	Users:
		Don Christopher Lee (3), Donald One Lee (159), Mark David Edwards (2)
		Marlo  Fullerton (179), Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 0 results
		Pass: Build SQL returned 0 results
	Rule 231 passed.
 
Rule 232:
	Name: High Risk Account Incoming Wire Alert greater than $50,000
	Description: High Risk Account Incoming Wire Alert greater than $50,000
	Alert Text: High Risk Account Incoming Wire Alert greater than $50,000
	Last changed on 05/21/2020 by Robert   Layton (187)
	Settings:
		Alert Type: AML, Active: 1, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Incoming Wire Amount is greater than 50000 and Value of Risk Level
		(text) is equal to High and Value of Client Type (text) is equal to Retail and
		Value of Rep Code is not equal to 000
	Users:
		Don Christopher Lee (3), Donald One Lee (159), Mark David Edwards (2)
		Marlo  Fullerton (179), Robert   Layton (187), Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 0 results
		Pass: Build SQL returned 0 results
	Rule 232 passed.
 
Rule 233:
	Name: Outgoing debit card transactions with no securities purchases over 30 days
	Description: Customer use of debit card with no securities purchased over a 30 days period.
	Alert Text: Customer use of debit card with no securities purchased over a 30 days period.
	Last changed on 05/21/2020 by Robert   Layton (187)
	Settings:
		Alert Type: AML, Active: 1, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Count of Outgoing Debit Card Transactions is greater than 1 over  a 30 day
		period and Count of Security Purchase is equal to 0 and Value of Client Type
		(text) is equal to Retail and Value of Rep Code is not equal to 000
	Users:
		Don Christopher Lee (3), Donald One Lee (159), Mark David Edwards (2)
		Marlo  Fullerton (179), Robert   Layton (187), Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 0 results
		Pass: Build SQL returned 0 results
	Rule 233 passed.
 
Rule 234:
	Name: Incoming Wire and Outgoing Wire less than 30 days
	Description: Incoming wire and subsequent outgoing wire within 30 days of deposit
	Alert Text: Incoming wire and subsequent outgoing wire within 30 days of deposit
	Last changed on 12/06/2019 by Mark David Edwards (2)
	Settings:
		Alert Type: AML, Active: 0, Only New Data: 0, Ignore RepCode: 0, Period: Daily
	Conditions:
		Count of Incoming Wire is greater or equal to 1 over  a 30 day period and Count
		of Outgoing Wire is greater or equal to 1 over  a 30 day period and Value of Rep
		Code is not equal to 000
	Users:
		CO  Finwebtech (186), Mark David Edwards (2)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 0 results
		Pass: Build SQL returned 0 results
	Rule 234 passed.
 
Rule 235:
	Name: Incoming Security Deposit, Liquidation and Outgoing Wire within 30 days
	Description: Security Deposit, subsequent liquidation and outgoing wire all within 30 days of deposit.
	Alert Text: Security Deposit, subsequent liquidation and outgoing wire all within 30 days of deposit.
	Last changed on 04/24/2020 by Don Christopher Lee (3)
	Settings:
		Alert Type: AML, Active: 0, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Sum of Account Age In Days is greater than Sum Account Age In Days and Value of
		Rep Code is not equal to 000
	Users:
		CO  Finwebtech (186)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 0 results
		Pass: Build SQL returned 0 results
	Rule 235 passed.
 
Rule 236:
	Name: Stock Commission greater than 2% in Retail account
	Description: Stock Commission greater than 2% in Retail account
	Alert Text: Stock Commission greater than 2% in Retail account
	Last changed on 10/21/2020 by Robert   Layton (187)
	Settings:
		Alert Type: Trading, Active: 1, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Commission is greater than Security Transaction * 2 percent and Value
		of Security Type (text) is equal to %Stock%
	Users:
		Don Christopher Lee (3), Donald One Lee (159), Mark David Edwards (2)
		Marlo  Fullerton (179), Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 1 results
		Pass: Build SQL returned 1 results
	Rule 236 passed.
 
Rule 237:
	Name: Expiring IDs
	Description: IDs expiring within 30 days
	Alert Text: IDs expiring within 30 days
	Last changed on 05/21/2020 by Robert   Layton (187)
	Settings:
		Alert Type: Risk, Active: 1, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Days Until ID Expiration is between0 and 30 and Value of Client Type
		(text) is equal to Retail and Value of Rep Code is not equal to 000
	Users:
		Don Christopher Lee (3), Donald One Lee (159), Mark David Edwards (2)
		Marlo  Fullerton (179), Robert   Layton (187), Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 0 results
		Pass: Build SQL returned 0 results
	Rule 237 passed.
 
Rule 238:
	Name: SAR Filing Reminder
	Description: SAR Filing reminder 30 days after date of suspicion
	Alert Text: SAR Filing reminder 30 days after date of suspicion
	Last changed on 06/19/2020 by Robert   Layton (187)
	Settings:
		Alert Type: AML, Active: 1, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Investigation Age is greater than 30 and Value of Rep Code is not equal
		to 000
	Users:
		Don Christopher Lee (3), Donald One Lee (159), Mark David Edwards (2)
		Marlo  Fullerton (179), Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 0 results
		Pass: Build SQL returned 0 results
	Rule 238 passed.
 
Rule 239:
	Name: Account Value exceeds stated Net Worth
	Description: Account Value exceeds stated Net Worth
	Alert Text: Account Value exceeds stated Net Worth
	Last changed on 05/21/2020 by Robert   Layton (187)
	Settings:
		Alert Type: Risk, Active: 0, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Account Equity is greater than Net Worth   and Value of Rep Code is not
		equal to 000
	Users:
		Don Christopher Lee (3), Donald One Lee (159), Mark David Edwards (2)
		Marlo  Fullerton (179), Robert   Layton (187), Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 115 results
		Pass: Build SQL returned 115 results
	Rule 239 passed.
 
Rule 240:
	Name: Wires in accounts domiciled in high risk jurisdictions
	Description: Customer wires in accounts in High Risk Countries (Basel Score >= 6.501)
	Alert Text: Customer wires in accounts in High Risk Countries (Basel Score >= 6.501)
	Last changed on 04/24/2020 by Don Christopher Lee (3)
	Settings:
		Alert Type: AML, Active: 0, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Count of Wires is greater or equal to 1 and Value of Basel Score is greater or
		equal to 6.501 and Value of Client Type (text) is equal to Retail and Value of
		Rep Code is not equal to 000
	Users:
		CO  Finwebtech (186)

	Checking DB vs. Build SQL...
		FAIL: SQL is not the same at char 99

	Running both versions of the SQL...
		Pass: DB SQL returned 0 results
		Pass: Build SQL returned 0 results
	Rule 240 failed.
 
Rule 241:
	Name: Account Added
	Description: Shows accounts that were automatically added
	Alert Text: These accounts have been added by the overnight process
	Last changed on 05/21/2020 by Robert   Layton (187)
	Settings:
		Alert Type: Risk, Active: 1, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Account Age is equal to 0 and Value of Rep Code is not equal to 000
	Users:
		Don Christopher Lee (3), Donald One Lee (159), Mark David Edwards (2)
		Marlo  Fullerton (179), Robert   Layton (187), Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 0 results
		Pass: Build SQL returned 0 results
	Rule 241 passed.
 
Rule 242:
	Name: Purchases greater than 40% of account equity in low risk
	Description: Concentration alert for purchases greater than 40% of account equity in low risk
	Alert Text: Concentration alert for purchases greater than 40% of account equity in low risk
	Last changed on 05/21/2020 by Robert   Layton (187)
	Settings:
		Alert Type: AML, Active: 0, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Security Purchase is greater than Account Equity * 40 percent and Value
		of Risk Tolerance is equal to Low and Value of Rep Code is not equal to 000
	Users:
		Don Christopher Lee (3), Donald One Lee (159), Mark David Edwards (2)
		Marlo  Fullerton (179), Robert   Layton (187), Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 0 results
		Pass: Build SQL returned 0 results
	Rule 242 passed.
 
Rule 243:
	Name: Outgoing debit card transactions with no securities purchases over 30 days
	Description: Customer use of debit card with no securities purchased over a 60 days period.
	Alert Text: Customer use of debit card with no securities purchased over a 60 days period.
	Last changed on 05/21/2020 by Robert   Layton (187)
	Settings:
		Alert Type: AML, Active: 0, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Count of Outgoing Debit Card Transactions is greater or equal to 1 and Count of
		Security Purchase is equal to 0 and Value of Client Type (text) is equal to
		Retail and Value of Rep Code is not equal to 000
	Users:
		Don Christopher Lee (3), Donald One Lee (159), Mark David Edwards (2)
		Marlo  Fullerton (179), Robert   Layton (187), Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 0 results
		Pass: Build SQL returned 0 results
	Rule 243 passed.
 
Rule 244:
	Name: Stock concentration > 50% in Income account
	Description: Stock concentration > 50% in Income account
	Alert Text: Stock concentration > 50% in low tolerance risk account
	Last changed on 09/24/2020 by CO  Finwebtech (186)
	Settings:
		Alert Type: Trading, Active: 1, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Account Equity is greater than Account Market Value * 50 percent and
		Value of Holding Position is equal to %Stock% and Value of Investment Objective
		(text) is equal to income
	Users:
		Don Christopher Lee (3), Donald One Lee (159), Mark David Edwards (2)
		Marlo  Fullerton (179), Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 0 results
		Pass: Build SQL returned 0 results
	Rule 244 passed.
 
Rule 245:
	Name: PEP trade in low priced security
	Description: PEP trade in low priced security
	Alert Text: PEP trade in low priced security
	Last changed on 05/21/2020 by Robert   Layton (187)
	Settings:
		Alert Type: AML, Active: 1, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Security Transaction is less than 5 and Value of PEP Account is equal
		to Y
	Users:
		Don Christopher Lee (3), Donald One Lee (159), Mark David Edwards (2)
		Marlo  Fullerton (179), Robert   Layton (187), Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 0 results
		Pass: Build SQL returned 0 results
	Rule 245 passed.
 
Rule 246:
	Name: Wash Trade
	Description: When the value of a purchase transaction = sale transation
	Alert Text: Wash Trade Alert
	Last changed on 05/21/2020 by Robert   Layton (187)
	Settings:
		Alert Type: AML, Active: 1, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Security Purchase is equal to Security Sale   and Value of Rep Code is
		not equal to 000
	Users:
		CO  Finwebtech (186), Robert   Layton (187), Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 0 results
		Pass: Build SQL returned 0 results
	Rule 246 passed.
 
Rule 247:
	Name: Incoming Wire in PEP account
	Description: Incoming wire transaction conducted by account marked PEP
	Alert Text: Incoming wire transaction conducted by account marked PEP
	Last changed on 05/21/2020 by Robert   Layton (187)
	Settings:
		Alert Type: AML, Active: 0, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of PEP Account is equal to Y and Count of Incoming Wire is greater or
		equal to 1 and Value of Rep Code is not equal to 000
	Users:
		Don Christopher Lee (3), Donald One Lee (159), Mark David Edwards (2)
		Marlo  Fullerton (179), Robert   Layton (187), Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 0 results
		Pass: Build SQL returned 0 results
	Rule 247 passed.
 
Rule 248:
	Name: Outgoing Wire in PEP account
	Description: Outgoing wire transaction conducted by account marked PEP
	Alert Text: Outgoing wire transaction conducted by account marked PEP
	Last changed on 05/21/2020 by Robert   Layton (187)
	Settings:
		Alert Type: AML, Active: 0, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of PEP Account is equal to Y and Value of Outgoing Wire is greater or
		equal to 1 and Value of Rep Code is not equal to 000
	Users:
		Don Christopher Lee (3), Donald One Lee (159), Mark David Edwards (2)
		Marlo  Fullerton (179), Robert   Layton (187), Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 0 results
		Pass: Build SQL returned 0 results
	Rule 248 passed.
 
Rule 249:
	Name: Transaction in PEP account
	Description: Any transaction conducted by account marked PEP
	Alert Text: Any transaction conducted by account marked PEP
	Last changed on 05/21/2020 by Robert   Layton (187)
	Settings:
		Alert Type: Risk, Active: 0, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of PEP Account is equal to Y and Count of Security Transaction is greater
		or equal to 1 and Value of Rep Code is not equal to 000
	Users:
		Don Christopher Lee (3), Donald One Lee (159), Mark David Edwards (2)
		Marlo  Fullerton (179), Robert   Layton (187), Scott  Silver (182)
		Shane  Jordan (180)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 4 results
		Pass: Build SQL returned 4 results
	Rule 249 passed.
 
Rule 250:
	Name: Number of security transactions exceeding expected number
	Description: Accounts with security transactions exceeding stated expected amount of securities trades.
	Alert Text: Accounts with security transactions exceeding stated expected amount of securities trades.
	Last changed on 09/05/2019 by Donald One Lee (159)
	Settings:
		Alert Type: Risk, Active: 1, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Count of Security Transaction is greater than Anticipated # Security Trans
		over  a 30 day period and Value of Rep Code is not equal to 000
	Users:
		Don Christopher Lee (3), Donald One Lee (159), Mark David Edwards (2)
		Marlo  Fullerton (179)

	Checking DB vs. Build SQL...
		FAIL: SQL is not the same at char 103

	Running both versions of the SQL...
		Pass: DB SQL returned 78 results
		Pass: Build SQL returned 78 results
	Rule 250 failed.
 
Rule 251:
	Name: Account purchase greater than 60% of account equity
	Description: Concentration alert for purchases greater than 60% of account equity
	Alert Text: Concentration alert for purchases greater than 60% of account equity
	Last changed on 05/25/2020 by Robert   Layton (187)
	Settings:
		Alert Type: Trading, Active: 1, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Security Purchase is greater than Account Equity * 60 percent and Value
		of Rep Code is not equal to 000
	Users:
		Don Christopher Lee (3), Donald One Lee (159), Mark David Edwards (2)
		Marlo  Fullerton (179), Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 1 results
		Pass: Build SQL returned 1 results
	Rule 251 passed.
 
Rule 254:
	Name: KYC Updated
	Description: The KYC information has been updated
	Alert Text: The KYC information for this account has been updated by the overnight process
	Last changed on 05/21/2020 by Robert   Layton (187)
	Settings:
		Alert Type: Risk, Active: 1, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Inv. Profile Age is equal to 0 and Value of Inv. Profile Update Time is
		less than 07:15:00 and Value of Rep Code is not equal to 000
	Users:
		Mark David Edwards (2), Marlo  Fullerton (179), Robert   Layton (187)
		Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 0 results
		Pass: Build SQL returned 0 results
	Rule 254 passed.
 
Rule 255:
	Name: Low priced securities in low risk tolerance accounts
	Description: Low priced securities in low risk tolerance accounts
	Alert Text: Please review alert
	Last changed on 05/25/2020 by Robert   Layton (187)
	Settings:
		Alert Type: Trading, Active: 1, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Security Purchase Price is less than 5 and Value of Risk Tolerance is
		equal to low and Value of Rep Code is not equal to 000
	Users:
		Don Christopher Lee (3), Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 0 results
		Pass: Build SQL returned 0 results
	Rule 255 passed.
 
Rule 256:
	Name: Test rule for Rep Code
	Description: Testing rep code where text = 000 and text not equal to 000
	Alert Text: Alerts when Rep code = 000
	Last changed on 09/05/2019 by Donald One Lee (159)
	Settings:
		Alert Type: Trading, Active: 0, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Rep Code is not equal to 000
	Users:
		Donald One Lee (159), Mark David Edwards (2), Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 1181 results
		Pass: Build SQL returned 1181 results
	Rule 256 passed.
 
Rule 257:
	Name: elderly customer investing activity (purchase)
	Description: Customer 60 and older activity
	Alert Text: Customer 65 and older purchase
	Last changed on 05/21/2020 by Robert   Layton (187)
	Settings:
		Alert Type: AML, Active: 1, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Count of Security Purchase is greater or equal to 1 and Value of Customer Age is
		greater or equal to 60 and Value of Client Type (text) is equal to retail and
		Value of Rep Code is not equal to 000
	Users:
		Robert   Layton (187), Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 0 results
		Pass: Build SQL returned 0 results
	Rule 257 passed.
 
Rule 259:
	Name: Low priced security less than 5 for Income based accounts
	Description: Low priced security less than 5 for Income based accounts
	Alert Text: Please review alert
	Last changed on 05/25/2020 by Robert   Layton (187)
	Settings:
		Alert Type: Trading, Active: 1, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Security Purchase Price is less or equal to 5 and Value of Investment
		Objective (text) is equal to income
	Users:
		Don Christopher Lee (3), Mark David Edwards (2), Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 0 results
		Pass: Build SQL returned 0 results
	Rule 259 passed.
 
Rule 260:
	Name: Security purchases greater than 5 and customer = Income
	Description: Security purchases greater than 5 and customer = Income
	Alert Text: Please review alert
	Last changed on 05/25/2020 by Robert   Layton (187)
	Settings:
		Alert Type: Trading, Active: 1, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Count of Security Purchase is greater than 5 over  a 30 day period and Value of
		Investment Objective (text) is equal to income
	Users:
		Don Christopher Lee (3), Mark David Edwards (2), Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 7 results
		Pass: Build SQL returned 7 results
	Rule 260 passed.
 
Rule 261:
	Name: Elderly customer greater than 60 with purchases greater than 10 per month
	Description: Elderly customer greater than 60 with purchases greater than 10 per month
	Alert Text: 
Please review alert
	Last changed on 05/22/2020 by Robert   Layton (187)
	Settings:
		Alert Type: Trading, Active: 0, Only New Data: 0, Ignore RepCode: 0, Period: every month
	Conditions:
		Count of Security Purchase is greater than 10 over  a 30 day period and Value of
		Customer Age is greater than 60
	Users:
		Mark David Edwards (2), Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 173 results
		Pass: Build SQL returned 173 results
	Rule 261 passed.
 
Rule 262:
	Name: Wires from High Risk Countries
	Description: Wires from countries with a BASEL Score above 6
	Alert Text: Wires from countries with a BASEL Score above 6
	Last changed on 05/21/2020 by Robert   Layton (187)
	Settings:
		Alert Type: AML, Active: 1, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Inc. Wire/High Risk Country is greater than 6
	Users:
		Donald One Lee (159), Mark David Edwards (2), Robert   Layton (187)
		Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 1 results
		Pass: Build SQL returned 1 results
	Rule 262 passed.
 
Rule 263:
	Name: Wires to High Risk Countries
	Description: Wires to countries with a BASEL Score above 6
	Alert Text: Wires to countries with a BASEL Score above 6
	Last changed on 05/21/2020 by Robert   Layton (187)
	Settings:
		Alert Type: AML, Active: 1, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Out. Wire/High Risk Country is greater than 6
	Users:
		Donald One Lee (159), Mark David Edwards (2), Robert   Layton (187)
		Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 0 results
		Pass: Build SQL returned 0 results
	Rule 263 passed.
 
Rule 264:
	Name: Risk Level changed and Wire Activity Increases
	Description: Risk Level changed and Wire Activity Increases
	Alert Text: Customer Risk Level changed and Wire Activity Increased.
	Last changed on 05/21/2020 by Robert   Layton (187)
	Settings:
		Alert Type: Risk, Active: 1, Only New Data: 0, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Risk Level and Wire Activity Increase is equal to true
	Users:
		Don Christopher Lee (3), Mark David Edwards (2), Marlo  Fullerton (179)
		Robert   Layton (187), Scott  Silver (182), Shane  Jordan (180)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 2 results
		Pass: Build SQL returned 2 results
	Rule 264 passed.
 
Rule 265:
	Name: Customer Risk Level changed and Debit Card Activity Increases
	Description: Customer Risk Level changed and Debit Card Activity Increases
	Alert Text: Customer Risk Level changed and Debit Card Activity Increased.
	Last changed on 05/21/2020 by Robert   Layton (187)
	Settings:
		Alert Type: Risk, Active: 1, Only New Data: 0, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Risk Level and Debit Card Activity Increase is equal to true
	Users:
		Don Christopher Lee (3), Mark David Edwards (2), Marlo  Fullerton (179)
		Robert   Layton (187), Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 1 results
		Pass: Build SQL returned 1 results
	Rule 265 passed.
 
Rule 266:
	Name: Testing Repcode Trade Quantities
	Description: Testing repcode trade quantities over a certain amount
	Alert Text: Trade quantities for repcode exceeded
	Last changed on 09/05/2019 by Donald One Lee (159)
	Settings:
		Alert Type: Trading, Active: 0, Only New Data: 0, Ignore RepCode: 0, Period: after 1 minute
	Conditions:
		Value of Trade Quantity is greater than 2 and Value of Rep Code is equal to 000
	Users:
		Donald One Lee (159)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 52057 results
		Pass: Build SQL returned 52057 results
	Rule 266 passed.
 
Rule 267:
	Name: Repcode Not Managed
	Description: Checks to see if a rep code is not on any users list
	Alert Text: This repcode is not on any users list
	Last changed on 04/23/2020 by Don Christopher Lee (3)
	Settings:
		Alert Type: Risk, Active: 0, Only New Data: 0, Ignore RepCode: 1, Period: Daily
	Conditions:
		Value of Rep Code Not On List is equal to true
	Users:
		Marlo  Fullerton (179)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 1415 results
		Pass: Build SQL returned 1415 results
	Rule 267 passed.
 
Rule 268:
	Name: Sample Heightened Supervision Rule (Rep code 007)
	Description: Sample Heightened Supervision Rule (Rep code 007)
	Alert Text: Review test rule
	Last changed on 04/23/2020 by Don Christopher Lee (3)
	Settings:
		Alert Type: Risk, Active: 0, Only New Data: 0, Ignore RepCode: 0, Period: Daily
	Conditions:
		Count of Security Transaction is greater or equal to 1 and Value of Rep Code is
		equal to 007
	Users:
		Don Christopher Lee (3)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 3422 results
		Pass: Build SQL returned 3422 results
	Rule 268 passed.
 
Rule 269:
	Name: No Alerts in 30 Days
	Description: Alerts when a Rule has not generated an Alert in the last 30 days
	Alert Text: Rules that have not generated an Alert in 30 days
	Last changed on 09/05/2019 by Don Christopher Lee (3)
	Settings:
		Alert Type: Risk, Active: 1, Only New Data: 0, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Last Alert Age in Days is greater or equal to 30 or Value of Last Alert
		Age in Days is equal to -1
	Users:
		CO  Finwebtech (186), Kevin  Rowe (183)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 83 results
		Pass: Build SQL returned 83 results
	Rule 269 passed.
 
Rule 270:
	Name: Security Purchase resulted in concentrated position > 60%
	Description: Security Purchase resulted in concentrated position > 60%
	Alert Text: Security Purchase resulted in concentrated position > 60%
	Last changed on 05/12/2020 by Don Christopher Lee (3)
	Settings:
		Alert Type: Trading, Active: 1, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Security Purchase is greater than 0 and Value of Holding Market Value
		is greater than Account Equity * 60 percent and Value of Trade Market Symbol
		(text) is equal to Holding Market Symbol (text)   and Value of Trade Rep Code is
		not equal to 000
	Users:
		CO  Finwebtech (186), Don Christopher Lee (3), Marlo  Fullerton (179)
		Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 0 results
		Pass: Build SQL returned 0 results
	Rule 270 passed.
 
Rule 271:
	Name: Employee/Client Trading
	Description: One or more Clients made a trade on the same day as an employee
	Alert Text: Shows a list of trades where an employee and one or more clients made the same trade
	Last changed on 05/21/2020 by CO  Finwebtech (186)
	Settings:
		Alert Type: Trading, Active: 0, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Is Employee Trade is equal to Y and Value of Customer Has Employee
		Trade is equal to Y
	Users:
		Don Christopher Lee (3), Donald One Lee (159), Mark David Edwards (2)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 0 results
		Pass: Build SQL returned 0 results
	Rule 271 passed.
 
Rule 272:
	Name: Emp/Client Same Side Trading
	Description: One or more clients made a trade on the same side as an employee at a worse price
	Alert Text: One or more clients made a trade on the same side as an employee at a worse price
	Last changed on 05/21/2020 by CO  Finwebtech (186)
	Settings:
		Alert Type: Trading, Active: 0, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Is Employee Trade is equal to Y and Value of Customer Same Side Trade
		is equal to Y
	Users:
		Don Christopher Lee (3), Donald One Lee (159), Mark David Edwards (2)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 0 results
		Pass: Build SQL returned 0 results
	Rule 272 passed.
 
Rule 273:
	Name: Emp/Client Opposite Trading
	Description: One or more clients made a trade on the opposite side as an employee at a worse price
	Alert Text: One or more clients made a trade on the opposite side as an employee at a worse price
	Last changed on 05/21/2020 by CO  Finwebtech (186)
	Settings:
		Alert Type: Trading, Active: 0, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Is Employee Trade is equal to Y and Value of Customer Opp Side Trade is
		less than Y
	Users:
		Don Christopher Lee (3), Donald One Lee (159), Mark David Edwards (2)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 0 results
		Pass: Build SQL returned 0 results
	Rule 273 passed.
 
Rule 274:
	Name: Buy or sell order for 10,000 or more shares
	Description: Buy or sell order for 10,000 or more shares
	Alert Text: Buy or sell order for 10,000 or more shares
	Last changed on 10/26/2020 by CO  Finwebtech (186)
	Settings:
		Alert Type: Trading, Active: 1, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Trade Quantity is greater or equal to 10000 and Value of Security Type
		(text) is equal to %Stock% and Value of Rep Code is not equal to 000
	Users:
		CO  Finwebtech (186), Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 1 results
		Pass: Build SQL returned 1 results
	Rule 274 passed.
 
Rule 275:
	Name: Buy or sell order for $1,000,000 or more par value of bonds
	Description: Buy or sell order for $1,000,000 or more par value of bonds
	Alert Text: Buy or sell order for $1,000,000 or more par value of bonds
	Last changed on 10/26/2020 by CO  Finwebtech (186)
	Settings:
		Alert Type: Trading, Active: 1, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Trade Principle is greater than 1000000 and Value of Security Type
		(text) is equal to %Bond% and Value of Rep Code is not equal to 000
	Users:
		CO  Finwebtech (186), Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 0 results
		Pass: Build SQL returned 0 results
	Rule 275 passed.
 
Rule 276:
	Name: Option transaction of 100 or more contracts
	Description: Option transaction of 100 or more contracts
	Alert Text: Option transaction of 100 or more contracts
	Last changed on 10/26/2020 by CO  Finwebtech (186)
	Settings:
		Alert Type: Trading, Active: 1, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Trade Quantity is greater or equal to 100 and Value of Security Type
		(text) is equal to Options and Value of Rep Code is not equal to 000
	Users:
		CO  Finwebtech (186), Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 1 results
		Pass: Build SQL returned 1 results
	Rule 276 passed.
 
Rule 277:
	Name: Option commission greater than 2% above threshold
	Description: Option commission greater than 2% above threshold
	Alert Text: Option commission greater than 2% above threshold
	Last changed on 10/26/2020 by CO  Finwebtech (186)
	Settings:
		Alert Type: Trading, Active: 1, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Commission is greater than Security Purchase * 2 percent and Value of
		Security Type (text) is equal to Options and Value of Rep Code is not equal to
		000
	Users:
		CO  Finwebtech (186), Scott  Silver (182)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 3 results
		Pass: Build SQL returned 3 results
	Rule 277 passed.
 
Rule 278:
	Name: Check Withdrawals greater than $5000
	Description: Check Withdrawals greater than $5000
	Alert Text: Check Withdrawals greater than $5000
	Last changed on 01/06/2021 by Marlo  Fullerton (179)
	Settings:
		Alert Type: Trading, Active: 1, Only New Data: 1, Ignore RepCode: 0, Period: Daily
	Conditions:
		Value of Check Withdrawal is greater or equal to 5000 and Value of Rep Code is
		not equal to 000
	Users:
		CO  Finwebtech (186)

	Checking DB vs. Build SQL...
		Pass: SQL is the same

	Running both versions of the SQL...
		Pass: DB SQL returned 0 results
		Pass: Build SQL returned 0 results
	Rule 278 passed.
 
Number of rules tested: 119 out of 119

Done at 11:44:02
