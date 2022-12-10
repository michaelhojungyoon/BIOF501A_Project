# BIOF501A Project: Taxonomic Classification of the Microbiome in Surviving Colorectal Cancer Patients using the DADA2 Pipeline

#### By: Michael Yoon

#### Disclaimer
Sequence files were obtained from the NCBI SRA archive as part of the study "The local tumor microbiome is associated with survival in late-stage colorectal cancer patients" [1]. Experimental samples chosen were obtained from late-stage (III & IV) colorectal cancer patients. Metadata for patient info can be found here: https://www.ncbi.nlm.nih.gov/Traces/study/?acc=ERP142569&o=acc_s%3Aa

Primers used in this workflow were derived from the study and are as followed:

Forward: CCTACGGGNGGCWGCAG

Reverse: GGACTACHVGGGTATCTAAT

# Introduction:
In 2018, colorectal cancer was reported as one of the most common types of diagnosed cancers ranking 3rd in incidence and 2nd in mortality world wide [2]. Colorectal cancer can cause an array of negative symptoms including fatigue, blood in stool, and abdominal pain which can all negatively impact a patient's quality of life [3]. Generally, the disease is diagnosed by a colonoscopy exam to determine the location of the tumour, however, the technique is known to be fairly invasive and other methods of detection can be beneficial for compliance. In recent times, research has shown how the gut microbiome is associated with colorectal cancer development where certain bacterial strains were identified to be procarcinogenic through the conversion of diestary metabolites into harmful microbial products [4]. Based on this relationship between gut microbiome metabolism and colorectal cancer, there is potential for certain strains to act as biomarkers for the disease. In particular, strains including: _Prevotella, Porphyromonas, Peptostreptococcus, Fusobacterium nucleatum, Parvimonas, Bacteroides fragilis, Streptococcus gallolyticus, Enterococcus faecalis_ and _Escherichia coli_ to name a few [4][5]. For these reasons, investigating the presence and abundance of these strains are relevant in determining colorectal cancer development.

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

Deactivate current environment
```sh
conda deactivate
```

Download this repository
```sh
git clone https://github.com/michaelhojungyoon/BIOF501A_Project
```


# Results:



# References:
1. Debelius, J. W. et al. The local tumor microbiome is associated with survival in late-stage colorectal cancer patients. 2022.09.16.22279353 Preprint at https://doi.org/10.1101/2022.09.16.22279353 (2022).
2. Bray, F. et al. Global cancer statistics 2018: GLOBOCAN estimates of incidence and mortality worldwide for 36 cancers in 185 countries. CA. Cancer J. Clin. 68, 394–424 (2018).
3. Kuipers, E. J. et al. COLORECTAL CANCER. Nat. Rev. Dis. Primer 1, 15065 (2015).
4. Rebersek, M. Gut microbiome and its role in colorectal cancer. BMC Cancer 21, 1325 (2021).
5. Veziant, J., Villéger, R., Barnich, N. & Bonnet, M. Gut Microbiota as Potential Biomarker and/or Therapeutic Target to Improve the Management of Cancer: Focus on Colibactin-Producing Escherichia coli in Colorectal Cancer. Cancers 13, 2215 (2021).
