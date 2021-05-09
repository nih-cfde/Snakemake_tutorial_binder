# Day 1

# Shorten the command prompt
echo "PS1='\w $ '" >> .bashrc

# Check if environment setup was successful:
samtools --version

# Running a rule
snakemake -p map_reads
snakemake -p download_data


# Next, let's run more rules sequentially:
snakemake -p download_data
snakemake -p download_genome
snakemake -p uncompress_genome
snakemake -p index_genome_bwa
snakemake -p map_reads

# Day 2
