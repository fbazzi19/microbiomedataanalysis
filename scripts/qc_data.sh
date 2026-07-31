fastqc -o ./results/qc/ ./data/raw_fastq/*.fastq.gz
multiqc -o ./results/qc/ ./results/qc/