# <img src="https://github.com/user-attachments/assets/d02384b5-b85f-4716-b657-7a122ca92d02" width="100">3DisoGalaxy

This Repository contains the complete software and documentation to execute the Long-Read-translation-structomics Workflow.
The breast cancer version of the final network, **“3DisoGalaxy”**, can be accessed at  

</a>  (http://hkwanglab-compbio.com:3831)<a href="http://hkwanglab-compbio.com:3831/">
    <img src="https://github.com/user-attachments/assets/d02384b5-b85f-4716-b657-7a122ca92d02" width="100">

## 1.Breast cancer alternative splicing landscape with protein isoform structure
![image](https://github.com/user-attachments/assets/4429c7c6-8382-457b-bb00-bbc22bf8b3fe)

## 2. Screening subtype-specific target
![image](https://github.com/user-attachments/assets/b51f9134-de44-4a82-a0ee-d3fe9f88c90f)

## 3. Search target
![image](https://github.com/user-attachments/assets/b3d61430-bc01-4d85-b222-c7d47179cb06)

## 4. About
![image](https://github.com/user-attachments/assets/25c318a8-cffe-4993-8db8-6af0685e5d1e)


## Usage tutorial



https://github.com/user-attachments/assets/ab669a3c-8670-448c-a235-6a9529bfa75d
<video width="600" autoplay loop muted>
  <source src="https://github.com/user-attachments/assets/ab669a3c-8670-448c-a235-6a9529bfa75d" type="video/mp4">
</video>


## Abstract
When the alternative splicing event result in different mature mRNA translated in the cell and diverse protein isoforms produced, they tend to affect disordered protein domains, which are often involved in functionally important protein–protein interactions304,310,311. Protein isoforms can also have differences in stability, localization, enzymatic activity and protein–nucleic acid interactions. The extent to which alternative splicing affects protein and/or cell function or, rather, represents a by-product of transcriptome noise is unclear. Breast cancer is one of the most prevalent cancer for women worldwide. Current studies categorize the breast cancer into several subtypes according to different receptors and will treat with different clinical methods. The heterogeneity of the breast cancer causes this distinct survival outcome difference, and alternative splicing is one of the mechanisms of the heterogeneity. In this study, a comprehensive survey of protein isoform structures in breast cancer tissue was conducted by integrating multiple omics. 90298 was annotated and filtered by integrating long-read RNAseq transcriptome analysis and short-read RNAseq. 79815 ORFs were identified using Ribosome profiling in total. Ultimately, 46202 protein isoforms were kept and predicted structures with AlphaFold2. The "3Diso-TransFold" pipeline constructing the “3DisoGalaxy” protein structural similarity network based on multiple structure alignment scores with evaluated translated ORFs and obtained isoform structures. ORFs from the master transcriptome were retained only if identified by Ribo-seq, supporting their translation. The network reveals breast cancer and TNBC-specific isoforms, enabling subtype-specific therapeutic screening and validation. 
![Atlas_plan](https://github.com/user-attachments/assets/32d0ddfd-540f-49fb-aab3-fd657c5e5d14)

## Digital Object Identifiers



| Categories3 Dataset | Project No.        | Type              | Sample Size | Subtypes                      | Sequencing Method               | Sequencing Platform    | Additional Information                     |
|----------------------|--------------------|-------------------|-------------|-------------------------------|----------------------------------|------------------------|--------------------------------------------|
| Assembly             | PacBio (in-house)  | BC Tissue         | 35          | Basal, Her2, LumA, LumB, NAT  | PacBio long-read mRNA-seq        | PacBio Sequel 2        | Clinical info                               |
| Discovery set        | PRJNA975550        | BC Tissue         | 86          | TNBC, Her2, LumA, LumB, NAT   | mRNA-seq                        | Illumina HiSeq 4000    | Clinical info cannot match, no RFS          |
| Microbial            | PRJNA839244        | BC Tissue         | 23          | TNBC, Her2, LumA, LumB, NAT   | mRNA-seq                        | NextSeq 550            | Clinical info, no RFS                       |
| Validation set       | PRJNA486023        | BC Tissue         | 90          | TNBC, NAT                     | mRNA-seq                        | Illumina HiSeq         | Clinical info, RFS                          |
| Fusion               | PRJNA251383        | BC Tissue         | 140         | TNBC, ER, NAT                 | mRNA-seq                        | Illumina HiSeq 2000    | Clinical information                        |
| Her2                 | PRJNA1018108       | BC Tissue         | 156         | Her2, NAT                     | mRNA-seq                        | NovaSeq 6000           | -                                           |
| Ribosome profiling   |PRJNA898352 | BC Cell line      | 24          | -                             | Ribo-seq & mRNA-seq             | Illumina HiSeq 2500    | -                                           |
| Ribosome profiling   | PRJNA523167 | BC Cell line      | 18          | -                             | Ribo-seq                        | Illumina HiSeq 4000    | -                                           |




# 3DisoGalaxy & 3DisoTranFold
The pipeline "3Diso-TransFold" [https://github.com/CityUHK-CompBio/TranStructomics](https://github.com/CityUHK-CompBio/3Diso-TransFold), was used to evaluate translation ORFs and predict isoform structures across transcriptome-identified transcripts, ultimately constructing a protein structural similarity network, “3DisoGalaxy,” based on multiple structure alignment scores comparing isoform structures. Specifically, the predicted ORFs from the master transcriptome were retained only if identified by Ribo-seq analysis, supporting their participation in the translation process.  



By combining BLASTP and HMMER methods, ORF sequences were predicted using TransDecoder and machine learning. After filtering out low-confidence and short ORFs, the longest ORF sequence was kept for each isoform, and AlphaFold-2.3 was utilized to predict protein structures. Structural similarity was then calculated using the TMalign method, collecting pairwise isoform similarities to construct a “protein universe.” Additionally, functional domains and GO term pathway annotations were assigned to the network based on UniProtKB databases.  

Through the final network, the landscape of cancer-specific alternative splicing-induced protein isoforms becomes available, allowing for the screening and validation of subtype-specific isoforms for therapeutic applications. 

A case study version of the final network, **“3DisoGalaxy”**, can be accessed at  
<a href="http://hkwanglab-compbio.com:3831/">
    <img src="https://github.com/user-attachments/assets/d02384b5-b85f-4716-b657-7a122ca92d02" width="100">
</a>  
and the **“3DisoTransFold”** pipeline for analyzing all data is available at  
<a href="https://github.com/CityUHK-CompBio/3Diso-TransFold">
    <img src="https://github.com/user-attachments/assets/fc44d469-1204-4611-9de2-44664116f54b" width="100">
</a>



## Workflow Overview
![image](https://github.com/user-attachments/assets/d0837471-63ab-4c45-a08f-7454ffe03624)

![Workflow Diagram](diagram_url)

[Workflow description]

## How to use this repository and Quick Start

TORFs from the master transcriptome were retained only if identified by Ribo-seq, supporting their translation. Using BLASTP, HMMER, and machine learning, ORFs were predicted with TransDecoder, and after filtering low-confidence and short ORFs, the longest sequence per isoform was kept. AlphaFold-2.3 predicted protein structures, and TMalign calculated pairwise isoform similarities to build a “protein universe,” with functional domains and GO terms annotated from UniProtKB. The network reveals cancer-specific isoforms, enabling subtype-specific therapeutic screening and validation. To orient users [documentation overview].

### How to use this repository

This repository is organized into [organization description]. The workflow is written in [technology], allowing [benefits]. The visitor is encouraged to [contribution guidelines].

### Quick Start

This quick start and steps were performed on oython version 3.10 and CUDA version 11.6.

#### Prerequisites

1. **[AlphaFold2.3]**
   - Download and install from [link]
   - Configuration steps...

2. **[PacBio]**
   - Installation instructions
   - Setup details...

3. **[TransDecoder]**
   - Installation instructions
   - Setup details...

4. **[TALON]**
   - Installation instructions
   - Setup details...
  
5. **[RSEM]**
   - Installation instructions
   - Setup details...

6. **[STAR]**
   - Installation instructions
   - Setup details...

7. **[ProteinVec]**
   - Installation instructions
   - Setup details...

8. **[DeepLoc]**
   - Installation instructions
   - Setup details...
9. **[Autodock]**
   - Installation instructions
   - Setup details...
10. **[Foldseek]**
   - Installation instructions
   - Setup details...
11. **[ColabFold]**
   - Installation instructions
   - Setup details...
#### Installation Steps

```bash
# Create environment
conda create -n 3disotf
conda activate 3disotf

# Install dependencies
conda install 3DisoTransFold

# Clone repository
git clone https://github.com/CityUHK-CompBio/3Diso-TransFold
or git clone https://github.com/TJiangBio/3DisoGalaxy
cd 3DisoGalaxy
```

#### Running the Pipeline

```bash
bash main.sh
```

## Documentation and Workflow

The pipeline comes with detailed documentation in the Wiki, including:

- Third-party tools
- Input parameters
- Output files
- Pipeline processes descriptions
- Vignettes:
  - [Vignette 1]
  - [Vignette 2]



## Using Data Resources

Integrating multi-omics and AI methods to analyze alterative splicing-driven proteoform workflow generated with all the data listed as previous are available on Zenodo (10.5281/zenodo14865747). 

## Contributors

- Tao Jiang
- Justin
- Hao Hao

This is a joint project between [collaborating organizations].

## Acknowledge

We would like to extend our sincere gratitude to Cosmograph: GPU-accelerated Force Graph Layout and Rendering [Computer software]. Rokotyan, N., Stukova, O., Kolmakova D. & Ovsyannikov, D. (2022) for providing an intuitive and efficient platform for visualizing protein similarity networks, enabling us to rapidly explore complex topologies and cluster associations within our study. The ability to present these networks clearly played a crucial role in interpreting the relationships between protein structures and functions. We are also thankful to Mol for its advanced capabilities in visualizing protein structures in three dimensions. This tool allowed us to explore structural details and interactions with precision, offering critical insights into the underlying mechanisms of protein similarity and their biological relevance in the context of metastasis prediction. These visualization tools have been invaluable for data interpretation and for presenting our findings in an accessible, clear manner..

## Citation

If you use this pipeline, please cite:

```
Jiang, T., et al. (2025). The Structural Code of Breast Cancer Heterogeneity: Alternative Splicing-driven Proteoform Variation and Functional Diversification.
```
For the [Journal Name] Manuscript: [Paper Title]

| DOI | Description |
|-----|-------------|
| [![DOI](badge_url)](doi_link) | Contains... |
| [![DOI](badge_url)](doi_link) | Contains... |
