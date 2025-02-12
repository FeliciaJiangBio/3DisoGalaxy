#!/bin/bash
#SBATCH --job-name=mmseqs
#SBATCH --ntasks=112 
#SBATCH --nodes=1 
#SBATCH --ntasks-per-node=112 
#SBATCH --output=003.mmseqs2_search.log 
#SBATCH --partition=normal 
#SBATCH --exclude=gpu1
#SBATCH -t 240:00:00 

module purge
CONDA_DIR="/master/jiang_tao/0.software/miniconda3/"
source "${CONDA_DIR}/etc/profile.d/conda.sh"
ENV="foldseek"
conda activate ${CONDA_DIR}/envs/${ENV}
cd $SLURM_SUBMIT_DIR

thread=112

## configure
query="../../../transcripts_brca_1miC_1miS.fa.transdecoder.pep"
mkdir databases
# pro_refer="/cpu2/jiang_tao/05.proteomcis_uniprot_database/uniprot/uniprot_human_proteome.fasta"
pro_refer="./uniprot_all_protein.fasta"
## mmseqs2 search
# QueryDB
mmseqs createdb $query databases/queryDB
mmseqs createdb $pro_refer databases/targetDB

mmseqs createindex databases/targetDB databases/tmp

mkdir tmp

# Search
mmseqs search databases/queryDB databases/targetDB databases/resultDB tmp -s 7.0

# An awk script which takes an alignment result entry from stdin and prints out all lines
# with an e-value <0.00001 to stdout (Hint: the filterdb module can also solve this problem, but with
# less overhead):
# mmseqs apply databases/resultDB databases/filteredResultDB -- awk '$4 < 0.00001 { print; }'

mmseqs convertalis databases/queryDB databases/targetDB databases/resultDB result2.outfmt6  --format-mode 4