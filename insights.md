Insurance Claims Analysis — Insights & Recommendations

Overview
This document summarizes the key findings from the analysis of the insurance claims dataset
containing 50,000+ customer records. The goal was to identify factors that influence
whether a customer makes an insurance claim.

Overall Claim Rate: 6.4%
Out of all customers, only 6.4% made an insurance claim — meaning 93.6% did not claim.

---

Key Findings

Customer Profile
Finding: Age does not predict claim behavior.
- Average age of customers who claimed: **45 years old**
- Average age of customers who did not claim: **45 years old**
- Both groups have the same average age, meaning age alone is not a reliable predictor of claims.

Takeaway: The company should look beyond age when assessing customer risk.

---

Vehicle Analysis

Finding 1 — Transmission Type:
- Automatic transmission vehicles have a slightly higher claim rate than manual.
- The difference is small but consistent.

Finding 2 — Fuel Type:
- Petrol vehicles have the highest claim rate compared to Diesel and CNG.
- Customers with petrol vehicles are statistically more likely to file a claim.

Finding 3 — Vehicle Age:
- Newer vehicles have significantly higher claim rates than older vehicles.
- The claim rate decreases as vehicle age increases.
- Possible reasons: new car owners may be more protective of their investment,
  more likely to file claims for minor damages, or vehicles are still under warranty.

Takeaway: Vehicle characteristics — especially age and fuel type — are stronger
predictors of claims than customer demographics.

---

Regional Analysis
Finding 1 — Region:
- C18 region has the highest claim rate at over 10%, significantly above the 6.4% average.
- However, C18 is a small region with only 242 customers and 26 total claims — its high
  claim rate is likely influenced by its small sample size.
- C8 has the highest volume with 10,000+ customers and nearly 1,000 total claims,
  making it the most significant region by absolute claim count.

Finding 2 — Segment:
- Segment B2 has the highest claim rate among all segments.
- The difference between segments is relatively small but B2 consistently leads.

Takeaway: Regional and segment differences exist and should be factored into
premium pricing strategies.

---

Safety Features
Finding 1 — Airbags:
- Customers with MORE airbags have HIGHER claim rates.
- This is likely not caused by airbags themselves but by the fact that vehicles
  with more airbags tend to be newer and more expensive — leading to more claims.

Finding 2 — NCAP Rating:
- Higher NCAP safety ratings do not reduce claim rates.
- Vehicles with high NCAP ratings still show higher claim rates.
- Same explanation applies — higher rated vehicles tend to be newer and more valuable.

Takeaway: This is a classic case of correlation vs causation. Safety features
do not cause more claims — vehicle value and newness are the likely real drivers.

---

Recommendations

| Finding 				 | Recommendation 							
 
| Petrol vehicles have higher claim rate | Consider higher premiums for petrol vehicle owners 
| Newer vehicles have higher claim rate  | Adjust pricing based on vehicle age — lower premiums for older vehicles 
| C18 region has 10%+ claim rate 	 | Review and adjust premium pricing strategy for C18 region 
| Safety features don't reduce claims    | Do not rely on safety features alone when assessing customer risk 
| Age doesn't predict claims 		 | Explore other customer factors like driving history and occupation 

---

Limitations
- Dataset does not include driving history or accident records which could be stronger predictors
- Segment definitions are unclear — further business context needed to interpret B2 findings
- Regional analysis would benefit from geographic mapping to identify spatial patterns

---

Tools Used
- PostgreSQL — data cleaning and analysis
- pgAdmin 4 — query execution and data exploration

---

*Analysis by Andrhey Dorado | 2026*
