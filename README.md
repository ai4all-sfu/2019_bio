# ai4all2019_bio

invent the future ai4all is a 2 week summer enrichment program for grad 10 & 11 girls

links:
- challenge site: https://www.synapse.org/#!Synapse:syn18380862
- ai4all sfu site: https://www.sfu.ca/computing/inventthefuture.html

scripts:
- bio2019_script.Rmd: R notebook with data processing, feature extraction, model selection and prediction of final results.  

## schedule

Day 1: Explore the challenge, work on the data and learn about feature extraction 

Day 2: Work on Machine Learning Models and Prediction 

Day 3: Work on the presentation of the final results 

## project: sub-challenge 1 - gestational age prediction

Preterm birth (birth on or before 37 weeks of gestation) affects 15 million neonates per year and is the leading cause of infant morbidity and mortality. To understand whether or not a woman and her child is at risk of and design interventions to prevent preterm birth, clinicians require two key information points: gestational age and the condition of the fetus in relation to that gestational age. These help to time care, schedule/interpret antepartum tests, and evaluate fetal growth, and thus possibly prevent preterm birth. 

Gestational age is currently determined by timing a woman’s last menstrual period or by ultrasound. The former is the most reliable metric thus far, but can be inaccurate and subjective based on how a patient self manages her pregnancy. The latter is objective but is costly and less accurate if done prior to 14 weeks of pregnancy. An objective, noninvasive and less costly method to determine gestational age is by analyzing maternal whole-blood transcriptomics.

Transcriptomics is a technology that studies an organism’s transcriptome. The transcriptome encompassess all the RNA transcripts (more specifically messenger or mRNA’s) created by replicating different genes in the genome. These RNA fragments are subsequently translated into proteins used to perform biological functions. In other words, transcriptomics is a study of how active each gene is in contribution to a biological state based on how many times mRNA fragments mapping to each gene occur within a sample.

The clinical question here is then: what maternal whole-blood mRNA genes/probe/isoforms can be used to accurately determine gestational age. This result can guide more practical and less expensive whole-blood transcriptomic tests that target specific genes and their expression profiles. Computationally, the questions is then to determine what model can best produce accurate results while maintaining interpretability of which genes or features contribute to those results.

This project is based on sub-challenge 1 of the preterm birth prediction (transcriptomics) challenge ([link](https://www.synapse.org/#!Synapse:syn18380862)). It expands on a previous paper (GSE113966 DOI: 10.1126/science.aar3819 [pdf](GSE113966.pdf), [supplement](GSE113966_supp.pdf)) by utilizing a larger data set with heterogeneous patients (samples from women who 1. gave normal birth, 2. had early preeclampsia, and 3. spontaneous preterm delivery or rupture membrane; versus normal birth subjects only), genome-wide (versus targeted gene), whole-blood (versus cell-free mRNA) transcriptomics etc.

The students will be familiarized with the transcriptomics data type, how they can be preprocessed and used to predict a continuous outcome. Students will be able to learn about how machine learning pipelines are engineered, broad machine learning algorithms, and how they can be used in application to real world problems -- in this case to create equal and inclusive quality care for women whom we may not have gestational age information on.

Key Learning Opportunities
- Data preprocessing: feature selection, dimensionality reduction, de-noising
- Model construction: for predicting continuous value gestational age in weeks
- Model evaluation: root mean-square error etc.
- Interpretation techniques: extract important features and visualize their inter-relations and relation with results

Deliverables
- Domain knowledge: demonstrate ability to understand and communicate purpose, methods, results, implications, and possible extensions of the project
- Computational knowledge: recognize generalizability of each method used in pipeline and how they can be engineered and customized for specific data sets
- Project results: good feels

## Data
Link for download: https://drive.google.com/file/d/1Wqzze4Si2ieT_qyK4MyirG4K7y9jkztN/view?usp=sharing

### drive/data/01_features

this folder contains features transformed from ```HTA20_RMA.RData```

### drive/data/02_models

all models tested are saved here organized by feature used; these are loaded back into scripts to generate visualizations and tables

### drive/data/03_results

resulting visualizations and tables are saved here

### drive/data/cvinds.Rdata

indices used for cross validation in training, and testing



