# Drug-dose-optimization-for-chemotherapy
**Drug dose optimization for chemotherapy**

**Introduction :**
Cancer involves uncontrolled cell growth, forming tumors that disrupt normal tissue. Benign tumors have limited growth, while malignant ones spread. They all indicate a breakdown in the body's control mechanisms, causing unregulated cell growth (neoplastic diseases).
Cancer treatment primarily involves surgery, radiotherapy, and chemotherapy. Surgery is common for benign tumors and some cases of early malignant cancer. However, its success depends on the spread of cancer cells. Late-stage diagnoses often require additional treatments due to extensive spreading. Radiotherapy targets localized tumors but can damage surrounding tissues. Chemotherapy is effective against widespread cancer cells. Modern approaches often combine these treatments to achieve treatment goals.

**Problem Statement :**
The use of chemotherapy as a treatment for cancer has been a subject of extensive research for several decades. However, the effectiveness of chemotherapy is often limited by the toxicity of the drugs used and the development of drug resistance. Therefore, there is a need for an optimisation scheme that can identify the optimal dosage and schedule of administration of chemotherapy drugs to maximize the therapeutic effect while minimizing the side effects.
Single-Drug Chemotherapy Optimisation using Mathematical Programming technique is a crucial area of research in the field of cancer treatment. The objective of this thesis is to develop an multi-objective optimisation scheme for single-drug chemotherapy using GAMS.

**Mathematical Formulation :**
Mathematical modeling in cancer treatment serves as a powerful tool to understand the intricate biological mechanisms involved in tumor growth and treatment responses.
One significant advantage is their cost-effectiveness. Creating a mathematical model and running simulations tend to be less expensive and more efficient than performing extensive laboratory experiments or large-scale clinical trials. This cost efficiency is particularly vital in cancer research, where experimentation can be resource-intensive.
Moreover, ethical considerations often limit what experiments can be conducted on humans. Mathematical models bypass these limitations, allowing researchers to explore and analyze scenarios that might not be feasible or ethical in a laboratory setting. This capability is crucial, especially when dealing with complex biological systems and situations where clinical trials may not represent the typical cancer patient population accurately.

_The Tumor Model :_
The tumor mathematical model consists of three ordinary differential equations that simulate the dynamic interactions of the tumor between the drug effect and cells including the death and growth of the cells. These equations represent the tumor cells, normal cells and immune cells with respect to time t.


<img width="427" alt="Screenshot 2023-12-05 115124" src="https://github.com/arijit-m/Chemotherapy-Drug-dose-optimization/assets/117001774/06277707-42ad-4e2a-b171-aa362192936b">

N represents the number of normal cells,
T denote the number of tumor cells and
I represents the number of immune cells at time t.
All of them are positive values. u represents the amount of drug at time t in the cancer site

We have two objective functions (eqn. 4 and 5),
 The aim is to minimize the size of the tumor and the drug concentration respectively with a state’s constraints to ensure the normal cells are kept above a specific level to protect the health of the patient during the treatment period.

 min  T   - - -eqn. 4
 min  u  - - -eqn. 5
 States constraint: N ≥ 0.75

On Integrating these differential equations,

<img width="454" alt="Screenshot 2023-12-05 115310" src="https://github.com/arijit-m/Chemotherapy-Drug-dose-optimization/assets/117001774/bae628ba-67b1-4d12-b108-5b37dfbf5399">

Rearranging,

<img width="480" alt="Screenshot 2023-12-05 115347" src="https://github.com/arijit-m/Chemotherapy-Drug-dose-optimization/assets/117001774/736c910b-79e1-42c1-bcee-12e775ff98f9">


**Results and discussions :**
The optimization achieved through the GAMS code for chemotherapy dosing has yielded a remarkable outcome: a significant reduction in tumor count with a minimal quantity of medication. This groundbreaking result signifies a potential paradigm shift in the approach to administering chemotherapy. By efficiently tailoring the drug dosage, we've not only mitigated the adverse effects associated with higher doses but also managed to curtail the tumor's proliferation substantially.
•	GAMS optimization revealed a remarkable reduction in Tumor count.
We started with the initial Tumor cell count of 0.25 and got a count of 0.082
•	Achieved significant Tumor decrease with a notably lower drug quantity.
With a very less amount of drug dose, it is seen that the Tumor cell count is decreasing.

**Conclusion : **
Optimal Dosages and Schedules via GAMS:
 GAMS (General Algebraic Modeling System) has showcased its ability to pinpoint the best dosages and administration schedules in chemotherapy. By leveraging mathematical programming, GAMS identifies combinations that enhance treatment efficacy while reducing adverse side effects. It essentially acts as a powerful tool in optimizing the therapeutic approach for cancer patients. The study's success in this aspect suggests GAMS' potential to revolutionize treatment strategies by tailoring doses and schedules for maximum effectiveness and minimal side effects. 
 Enhanced Efficiency through Mathematical Programming: 
Mathematical programming, when applied for factor tuning, emerged as a notably efficient method compared to traditional techniques. It significantly streamlines the optimization process, offering a more effective and quicker route to identify optimal solutions. This approach not only enhances computational efficiency but also holds promise for speeding up decision-making processes in treatment planning. Its efficiency makes it a compelling choice for refining treatment regimens, potentially impacting the overall healthcare system's effectiveness in cancer management.  
Potential Impact on Cancer Treatment Outcomes: 
The application of mathematical programming in cancer treatment optimization carries substantial potential to improve treatment outcomes and, consequently, the quality of life for cancer patients. By fine-tuning dosages, schedules, and treatment plans, mathematical programming techniques have the capacity to elevate the effectiveness of cancer therapies. This improvement can directly translate into better patient responses to treatments, reduced side effects, and overall enhanced well-being. It's a testament to the transformative power of precise, tailored treatment strategies enabled by mathematical modeling in oncology.
