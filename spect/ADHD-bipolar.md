From: Derek Taylor 
Sent: Thursday, May 21, 2015 10:18 PM
To: Dr. Kristen Willeumier
Cc: Dr. Daniel Amen
Subject: ADHD-Bipolar Dataset
 
 
Attached is a dataset prepared to test the discrimination of Bipolar disease from ADHD.
1.      Selection of Variables.

a.      Group 2:   Adult bipolar patients with excluded anxiety disorder, ADHD, dementia, psychosis, brain trauma, epilepsy  and substance abuse disorder.

b.      Group 1:  Adult ADHD patients matched to group to by age and gender with excluded bipolar disease,  , dementia, psychosis, brain trauma, epilepsy  and substance abuse disorder.

c.      Group 3: Healthy adults.

d.      Group 4: All available bipolar subjects regardless of co-morbidity excluding subjects used in group 2

e.      Group 5: Randomly selected regardless of co-morbidity  ADHD subjects equal in number to bipolar subjects in group 4

2.      Proposed analysis plan based on recommendations by reviewers of the PTSD-Brain Trauma study and the Autism Study. (Co-varying Gender and age for all analysis.)

a.      Between group ANOVA to determine significant ROI to use as predictors

                                                    i.     Group 2 Bipolar compared to healthy brains

                                                   ii.     Group 1 ADHD compared to healthy brains

                                                  iii.     Group 2 Bipolar compared to Group 1 ADHD

b.      Significant differences in distribution of co-morbidities between Group 4 Bipolar and Group 5 ADHD

c.      Testing model of hypothesized predictors based on significant variables from 2a and 2b above using validation subsets from Bipolar group 4 and ADHD Group 5

                                                    i.     Test models using variable selection at various criteria

1.      FDR corrected 0.05 (Correction using R statistical program)

2.      FDR corrected 0.01

                                                   ii.     K-sub validation.

 
group_name
group_id
patient_count
males
min_age
max_age
avg_age
STDEV_age
caucasians
Brain_Trauma
PTSD
Bipolar
Depressed
Anxiety
Schizo_psycho
dementia
ADHD
epilepsy
Substance_abuse
ADHD
1
125
58
18
73
38
16.12956412
98
0
0
0
0
0
0
0
125
0
0
Bipolar
2
125
58
18
73
38
15.54904001
78
0
0
125
8
0
0
0
0
0
0
Healthy_Controls
3
120
52
18
84
43
16.56464926
38
0
0
0
0
0
0
0
0
0
0
Bipolar_Comorbid
4
489
230
18
79
36
14.88397105
346
235
89
489
85
350
42
27
0
6
155
ADHD_Comorbid
5
489
332
18
84
38
15.30236257
353
244
39
0
197
304
10
25
489
5
93
 
 
