# <img src="https://github.com/user-attachments/assets/49c0e903-0586-4d10-b2c5-117bc4bd99dd" width="100">3DisoGalaxy
# <img src="https://github.com/user-attachments/assets/d02384b5-b85f-4716-b657-7a122ca92d02" width="100">3DisoGalaxy
![3DisoGalaxy_2](https://github.com/user-attachments/assets/d02384b5-b85f-4716-b657-7a122ca92d02)


This Repository contains the complete software and documentation to execute the Long-Read-translation-structomics Workflow.

## Digital Object Identifiers

For the [Journal Name] Manuscript: [Paper Title]

| DOI | Description |
|-----|-------------|
| [![DOI](badge_url)](doi_link) | Contains... |
| [![DOI](badge_url)](doi_link) | Contains... |

| Sequence Read Archive (SRA) Project Reference | Description |
|---------------------------------------------|-------------|
| PRJNA000000 | Description... |
| PRJNA000000 | Description... |

# 3DisoGalaxy
The second pipeline, called "TranStructomics," was used to evaluate translation ORFs and predict isoform structures across transcriptome-identified transcripts, ultimately constructing a protein structural similarity network, “3DisoGalaxy,” based on multiple structure alignment scores comparing isoform structures. Specifically, the predicted ORFs from the master transcriptome were retained only if identified by Ribo-seq analysis, supporting their participation in the translation process.  
![Atlas_plan](https://github.com/user-attachments/assets/32d0ddfd-540f-49fb-aab3-fd657c5e5d14)


By combining BLASTP and HMMER methods, ORF sequences were predicted using TransDecoder and machine learning. After filtering out low-confidence and short ORFs, the longest ORF sequence was kept for each isoform, and AlphaFold-2.3 was utilized to predict protein structures. Structural similarity was then calculated using the TMalign method, collecting pairwise isoform similarities to construct a “protein universe.” Additionally, functional domains and GO term pathway annotations were assigned to the network based on UniProtKB databases.  

Through the final network, the landscape of cancer-specific alternative splicing-induced protein isoforms becomes available, allowing for the screening and validation of subtype-specific isoforms for therapeutic applications. A case study version of the final network, “3DisoGalaxy,” can be accessed at [http://hkwanglab-compbio.com:3831/](http://hkwanglab-compbio.com:3831/), and the “TranStructomics” pipeline for analyzing all data is available at [https://github.com/CityUHK-CompBio/TranStructomics](https://github.com/CityUHK-CompBio/TranStructomics).
![DOI Badge](badge_url)

We acknowledge [acknowledgement details].

We acknowledge [additional acknowledgements].

## How to use this repository and Quick Start

This workflow [brief workflow description]. To orient users [documentation overview].

### How to use this repository

This repository is organized into [organization description]. The workflow is written in [technology], allowing [benefits]. The visitor is encouraged to [contribution guidelines].

### Quick Start

This quick start and steps were performed on [system specifications].

#### Prerequisites

1. **[Software 1]**
   - Download and install from [link]
   - Configuration steps...

2. **[Software 2]**
   - Installation instructions
   - Setup details...

#### Installation Steps

```bash
# Create environment
conda create -n env_name
conda activate env_name

# Install dependencies
conda install package_name

# Clone repository
git clone https://github.com/username/repository
cd repository
```

#### Running the Pipeline

```bash
nextflow run main.nf --config config_file
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

## Workflow Overview
![image](https://github.com/user-attachments/assets/d0837471-63ab-4c45-a08f-7454ffe03624)

![Workflow Diagram](diagram_url)

[Workflow description]

## Using Data Resources

[Data usage description]

## Contributors

- [Name 1]
- [Name 2]
- [Name 3]

This is a joint project between [collaborating organizations].

## Citation

If you use this pipeline, please cite:

```
Citation details
```
