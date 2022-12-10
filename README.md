# BIOF501A Project: Taxonomic Classification of the Microbiome in Surviving Colorectal Cancer Patients using the DADA2 Pipeline

#### By: Michael Yoon

#### Disclaimer
Sequence files were obtained from the NCBI SRA archive as part of the study "The local tumor microbiome is associated with survival in late-stage colorectal cancer patients" [1]. Metadata for patient info can be found here: https://www.ncbi.nlm.nih.gov/Traces/study/?acc=ERP142569&o=acc_s%3Aa

Primers used in this workflow were derived from the study and are as followed:

Forward: CCTACGGGNGGCWGCAG

Reverse: GGACTACHVGGGTATCTAAT

# Introduction:
In 2018, colorectal cancer was reported as one of the most common types of diagnosed cancers ranking 3rd in incidence and 2nd in mortality world wide [2]. Colorectal cancer can cause an array of negative symptoms including fatigue, blood in stool, and abdominal pain which can all negatively impact a patient's quality of life [3]. Generally, the disease is diagnosed by a colonoscopy exam to determine the location of the tumour, however, the technique is known to be fairly invasive and other methods of detection can be beneficial for compliance. In recent times, research has shown how the gut microbiome is associated with the tumour microenvironment within colorectal cancer patients 

where certain bacterial strains were identified to be potentially procarinogenic based on their role in producing harmful products during the metabolism [4]. For these reasons, identifying these bacterial strains related to colorectal cancer development is necessary in developing treatment methods targetting the gut microbiome.

# Workflow overview:

The objective of this project was to create a workflow that would take paired-end sequence files to process through the DADA2 pipeline as part of nf-core/Ampliseq:

https://nf-co.re/ampliseq

The main steps of the workflow include:
1) Unzipping the fastq.gz file
2) Splitting the fastq file into a separate forward (R1) and reverse (R2) file
3) Performing fastp to check for quality and determine a trimming length
4) Zipping the fastq.gz file
5) Running the DADA2 pipeline with parameters obtained from the fastp summary

# Setting up the environment




# Results:



# References:
1. Debelius, J. W. et al. The local tumor microbiome is associated with survival in late-stage colorectal cancer patients. 2022.09.16.22279353 Preprint at https://doi.org/10.1101/2022.09.16.22279353 (2022).
