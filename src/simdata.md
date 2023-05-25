# SIM card data collection

SIM card providers are centralized entities. The data collected on SIM cards is not controlled by the user. It is transparent and a liability for anyone concerned with privacy. See [Privacy setup](./privacy_setup.md) on private alternatives to android phones which are based on Google services.

- **Integrated circuit card identifier (ICCID):**  
ICCID is a unique number assigned to a SIM card and internationally a standard way to identify SIM cards.
ICCID is the printed on the SIM card. The two first numbers are fixed and differntiated the SIM card from other chips. Next two to three number are country codes. The next one to four numbers are Mobile Network Code which identifies the ussuer of the SIM card. The rest of the numbers are uniwue for each SIM and the last one is based on [**Luhn algoritm**](https://en.wikipedia.org/wiki/Luhn_algorithm) which is used to verify ICCID.

- **International mobile subscriber identity (IMSI):**
The IMSI number includes which country and mobile network and can be used to track the movements of the user. The cell towers’ location is used to triangulate the position.

- **Service provider name (SPN):** The name of the mobile operator.

- **MSISDN - The Mobile Station International Subscriber Directory Number:** The phone number for calling and texting. 

- **Last dialed numbers (LDN):** The number and name of the most recently dialed.

 - **Abbreviated dialing numbers (ADN):** Any number and name dialed is saved (and information which can be extracted).

 - **Short message service (SMS):** The information include the SMS text itself as well as the time a message was sent, the sender’s phone number and the status of the entry. 

For more information, see:
- [https://resources.infosecinstitute.com/topic/sim-card-forensics-introduction/](https://resources.infosecinstitute.com/topic/sim-card-forensics-introduction/)  
- [https://eforensicsmag.com/understanding-sim-card-forensics/](https://eforensicsmag.com/understanding-sim-card-forensics/)  
- [https://www.getdroidtips.com/iccid-imsi-imei-numbers/](https://www.getdroidtips.com/iccid-imsi-imei-numbers/)
