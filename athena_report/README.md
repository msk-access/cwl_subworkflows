### Introduction
The sub-workflow runs all steps required to generate an [athena](https://github.com/msk-access/athena) coverage report:

1. Annotate BED file.
2. Generating Coverage statistics 
3. Generating Coverage Report 


## CWL athena_report.cwl

- CWL specification 1.2
- Use example_inputs.yaml to see the inputs to the cwl
- Example Command using [toil](https://toil.readthedocs.io):

```bash
    > cwl-runner athena_report/athena_report.cwl athena_report/example_inputs_juno.yaml
```
**If at MSK, using the JUNO cluster having installed toil-msk version 3.21.1 you can use the following command**

### Using toil-cwl-runner

```bash
#Using CWLTOOL
> toil-cwl-runner --singularity athena_report/athena_report.cwl athena_report/example_inputs_juno.yaml 
```


### Usage: 

```
Usage: qc_collapsed_bam.cwl  [OPTIONS]

  This tool runs all steps associated with generating an athena coverage report.

Options:

-p / --panel_bed : Input panel bed file; must have ONLY the following 4 columns chromosome, start position, end position, gene/transcript

-t / --transcript_file : Transcript annotation file, contains required gene and exon information. Must have ONLY the following 6 columns:
chromosome, start, end, gene, transcript, exon

-c / --coverage_file : Per base coverage file (output from mosdepth or similar)

-s / -chunk_size : (optional) nrows to split per-base coverage file for intersecting, with <16GB RAM can lead to bedtools intersect failing. Reccomended values: 16GB RAM -> 20000000; 8GB RAM -> 10000000

-n / --output_name : (optional) Prefix for naming output file, if not given will use name from per base coverage file

--file: annotated bed file on which to generate report from

--build: text file with build number used for alignment, output from mosdepth (optional)

--outfile: output file name prefix, if not given the input file name will be used as the name prefix

--thresholds: threshold values to calculate coverage for as comma seperated integers (default: 10, 20, 30, 50, 100)

--flagstat: flagstat file for sample, required for generating run statistics (in development)

--cores: Number of CPU cores to utilise, for larger numbers of genes this will drastically reduce run time. If not given will use maximum available

-s / --snps: VCF(s) of known SNPs to check coverage of (optional; i.e. HGMD, ClinVar)

-t / --threshold: threshold value defining sub-optimal coverage (optional; default if not given: 20)

-n / --sample_name: name for title of report (optional; gene_stats file name will be used if not given)

-o / --output: name for output report (optional; sample name will be used if not given)

-p / --panel: panel bed file used for initial annotation, name will be displayed in summary of report (optional)

-l / --limit: number of genes at which to limit including full gene plots, large numbers of genes may take a long time to generate the plots (optional)

-m / --summary: boolean flag to add clinical report summary text in summary section, includes list of all genes with transcripts (optional; default False)

``` 
