# Analysis of 16S rRNA Microbial Community Sequencing Data
An end-to-end microbiome study analyzing publicly available 16S rRNA sequencing data comparing the gut microbiota of children from Europe and rural Burkina Faso. The report to go with this project is available here in pdf format.

## Environment Retrieval
All packages and session information was documented using Conda. The environment is available here as `microbiomeenv.yml`, and can be created using `conda create --file microbiomeenv.yml`

## Data Availability
The data used in this project is publicly available [here.](https://www.ebi.ac.uk/ena/browser/view/ERP000133?show=publications)
It can be downloaded by running `./scripts/download_raw_data.sh` from the command line, although it has already been downloaded and is located in the `data/raw_fastq/` folder.

## Workflow
To begin the analysis, qc the data by running  
`./scripts/qc_data.sh`,  
which will save the qc results in `results/qc/`. To unzip the data, run  
`./scripts/unzip_data.sh`,  
which will save the unzipped files in `data/raw_fastq/unzipped`.

For the rest of the workflow, the R markdown files can be knit in this order:  
```
dada2_pipeline.rmd
phyloseq_setup.rmd
exploratory_analyses.rmd
alpha_diversity_analysis.rmd
beta_diversity_analysis.rmd
diff_abund_analysis.rmd  
```  

Any resulting figures, tables, and R objects will be save to the `results/` folder, overwriting the results I already have produced there.
