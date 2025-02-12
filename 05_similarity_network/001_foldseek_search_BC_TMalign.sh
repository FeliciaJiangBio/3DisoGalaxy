#!/bin/bash
#SBATCH --job-name=foldseek
#SBATCH --ntasks=96
#SBATCH --nodes=1 
#SBATCH --ntasks-per-node=96 
#SBATCH --output=001.log_BC_search_FS.log 
#SBATCH --partition=normal 
#SBATCH --exclude=gpu1
#SBATCH -t 240:00:00 
module purge # 清除之前挂载的所有模块，我们可以使用conda进行包管理

# 环境参数
export PATH=/master/jiang_tao/0.software/RSEM/bin:$PATH
CONDA_DIR="/master/jiang_tao/0.software/miniconda3/"
ENV="/master/jiang_tao/0.software/miniconda3/envs/foldseek"
source "${CONDA_DIR}/etc/profile.d/conda.sh"
conda activate ${ENV}

cd $SLURM_SUBMIT_DIR

# PDBdir="../01.structures_prepare/01_human_proteomes/"
PDBdir="/cpu2/jiang_tao/13.3Disoform/14_3DisoGalaxy_reinvent_20241217/04_protein_structure/02_pdb_over70"


start_time=$(date +%s)
###############################################################
# --alignment-type 1 align with TMalign (global)
# Skip prefilter and perform an exhaustive alignment (slower but more sensitive)
foldseek easy-search \
  $PDBdir \
  $PDBdir \
  TMalign_results.tsv tmpFolder \
  --alignment-type 1 \
  --cluster-search 0 \
  --tmalign-fast 1 \
  --format-output "query,target,fident,alnlen,mismatch,gapopen,qstart,qend,tstart,tend,evalue,bits,qca,tca,alntmscore,qtmscore,ttmscore,u,t,lddt,lddtfull,prob"
###############################################################

# End the timer
end_time=$(date +%s)

# Calculate the elapsed time
time1=$((end_time - start_time))
hours=$(bc <<< "scale=2; $time1 / 3600")

# Display the elapsed time
echo "Finish. Foldseek running time: $hours seconds"


# ADD COLUMN NAMES
echo -e "query\ttarget\tfident\talnlen\tmismatch\tgapopen\tqstart\tqend\ttstart\ttend\tevalue\tbits\tqca\ttca\talntmscore\tqtmscore\tttmscore\tu\tt\tlddt\tlddtfull\tprob" | cat - BC > TMalign_results.tsv

# choose the key column
less TMalign_results.tsv | cut -f 1,2,4,11,15,20  > BC_key_column.tsv

# Filter the TMscore > 0.9
awk -F '\t' ' $4 > 9.000E-01' TMalign_results.tsv >  01_protein_universe/BC_key_column_tmscore_0.9_2nd.tsv

