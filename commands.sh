# Day 1

# Shorten the command prompt
echo "PS1='\w $ '" >> .bashrc

# Check if environment setup was successful:
samtools --version

# Running a rule
snakemake -p map_reads -j2
snakemake -p download_data -j2


# Next, let's run more rules sequentially:
snakemake -p download_data -j2
snakemake -p download_genome -j2
snakemake -p uncompress_genome -j2
snakemake -p index_genome_bwa -j2
snakemake -p map_reads -j2

# Day 2
