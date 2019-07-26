# Predicting Gestational Age Using Maternal Whole-blood Transcriptomics

aya43@sfu.ca; raoki@sfu.ca

invent the future ai4all @ simon fraser university is a 2 week summer enrichment program for grade 10 & 11 girls

presentation: https://docs.google.com/presentation/d/1AYxSCHaQXXQxSZWGXAcj0TgDn0HZGFLHXGVC1Avlrf0/edit?usp=sharing

website: https://sites.google.com/view/ai4allbio/

to-do:
- download [data](https://drive.google.com/file/d/1hZZ8zRbnqXG2uOmq6Pwzx8eTw_EKQrSp/view?usp=sharing) to your "project directory"
  - `00_input`/: input data (see [below](#00_input))
  - `01_features`/: contains features transformed from `00_input`/`HTA20_RMA.RData`
  - `02_models`/: all models tested are saved here organized by feature used; these are loaded back into scripts to generate visualizations and tables
  - `03_results`/: resulting visualizations and tables are saved here
  - `cvinds.Rdata`: indices used for cross validation in training, and testing
- download this github repository
- open and work on [bio2019_script.Rmd](bio2019_script.Rmd): R notebook with data processing, feature extraction, model selection and prediction of final results.  
  - input: `HTA20_RMA.RData` (32830 genes x 367+368 train+test samples) matrix
  - output: `TeamX_SC1_prediction.csv` (368 predicted GA result for test samples; GAs are continuous values 8-42 weeks rounded to 1 decimal); can submit max 5 results to leaderboard, and 1 final result as submission + code + write-up

links:
- challenge site: https://www.synapse.org/#!Synapse:syn18380862
- ai4all sfu site: https://www.sfu.ca/computing/inventthefuture.html

## schedule

see [program schedule](2019_ITF_Booklet_Digital-8_6421.pdf)

see [lecture slides](https://docs.google.com/presentation/d/1sWky9xHY-KBqZ-GmGf7OIDZPgAjZlGrMq-ixtWTpkT4/edit?usp=sharing)

Day 1: Explore the challenge, work on the data and learn about feature extraction 

Day 2: Work on Machine Learning Models and Prediction 

Day 3: Work on the presentation of the final results 

Day 4: Presentation Friday
- 10:30-11am pitch practice in the stadium
- 1pm re-rehersal
- 2-3pm pitch
- 3-4pm demo time
- 4-5pm closing ceremonies

## project: sub-challenge 1 - gestational age prediction

Preterm birth (birth on or before 37 weeks of gestation) affects 15 million neonates per year and is the leading cause of infant morbidity and mortality. To understand whether or not a woman and her child is at risk of and design interventions to prevent preterm birth, clinicians require two key information points: gestational age (GA) and the condition of the fetus in relation to its GA. These help to time care, schedule/interpret antepartum tests, evaluate fetal growth, and thus possibly prevent preterm birth. 

GA is currently determined by timing a woman¡¯s last menstrual period or by ultrasound. The former is the most reliable metric but can be inaccurate and subjective based on how a patient self manages her pregnancy. The latter is objective but is costly and less accurate if done prior to 14 weeks of pregnancy. An objective, noninvasive and less costly method to determine GA is by analyzing maternal whole-blood transcriptomics.

Transcriptomics is a technology that studies an organism¡¯s transcriptome. The transcriptome encompasses all the RNA (ribonucleic acid) transcripts (more specifically messenger or mRNA¡¯s) created by replicating different genes in the genome. These RNA fragments are subsequently translated into proteins used to perform biological functions. In other words, transcriptomics is a study of how active each gene is, in contribution to a biological state, based on how many times the mRNA fragments in a sample map to each gene.

The clinical question here is: what maternal whole-blood mRNA genes/probe/isoforms can be used to accurately determine gestational age. This result can guide more practical and less expensive whole-blood transcriptomic tests that target specific genes and their expression profiles. Computationally, the questions are then to determine what model can best produce accurate results while maintaining interpretability of which genes or features contribute to those results.

This project is based on sub-challenge 1 of the preterm birth prediction (transcriptomics) challenge ([link](https://www.synapse.org/#!Synapse:syn18380862), [webinar](https://drive.google.com/file/d/1O1ESxtGLoKHPRJI9HIY5SSNNUBKrlUx-/view?usp=sharing)). It expands on a previous paper (GSE113966 DOI: 10.1126/science.aar3819 [pdf](GSE113966.pdf), [supplement](GSE113966_supp.pdf)) by utilizing a larger data set with heterogeneous patients (samples from women who 1. gave normal birth, 2. had early preeclampsia, and 3. spontaneous preterm delivery or rupture membrane; versus normal birth subjects only), genome-wide (versus targeted gene), whole-blood (versus cell-free mRNA) transcriptomics, etc.

The students will be familiarized with the transcriptomics data type and how this can be preprocessed and used to predict a continuous outcome GA. Students will be able to learn about how machine learning algorithms can be engineered into pipelines in application to real-world problems -- in this case to create equal and inclusive quality care for women of all birth condition whom we may not have GA information on.

Key Learning Opportunities
- Data preprocessing: feature selection, dimensionality reduction, de-noising
- Model construction: for predicting continuous value gestational age in weeks
- Model evaluation: CV (cross validation) experiments, RMSE (root mean square error) scoring
- Interpretation techniques: extract important features and visualize their inter-relations and relation with results

Deliverables
- Domain knowledge: demonstrate the ability to understand and communicate purpose, methods, results, implications, and possible extensions of the project
- Computational knowledge: recognize generalizability of each method used in pipeline and how they can be engineered and customized for specific data sets
- Project results: good feels
