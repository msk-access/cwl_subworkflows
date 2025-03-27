---
description: Specifications for merging and max length trimming of FASTQ file.
---

## Merge and Trim FASTQ sub-workflow specification - merge_trim_fastq.cwl

### Tools used:

-   [merge_fastq](https://cmo-ci.gitbook.io/command-line-tools-cwl/merge_fastq_0.1.7/README.md)
-   [fastp](https://cmo-ci.gitbook.io/command-line-tools-cwl/fastp_0.24.0/README.md)

### Usage

```bash

usage: ./merge_trim_fastq.cwl [-h] --merge_fastq_fastq1 MERGE_FASTQ_FASTQ1 --merge_fastq_fastq2 MERGE_FASTQ_FASTQ2 [--fastp_dont_eval_duplication] [--fastp_disable_trim_poly_g] [--fastp_disable_quality_filtering]
                              [--fastp_disable_length_filtering] [--fastp_disable_adapter_trimming] [--fastp_unpaired2_output_file_name FASTP_UNPAIRED2_OUTPUT_FILE_NAME]
                              [--fastp_unpaired1_output_file_name FASTP_UNPAIRED1_OUTPUT_FILE_NAME] [--fastp_read2_output_file_name FASTP_READ2_OUTPUT_FILE_NAME] [--fastp_read1_output_file_name FASTP_READ1_OUTPUT_FILE_NAME]
                              [--fastp_max_len_read2 FASTP_MAX_LEN_READ2] [--fastp_max_len_read1 FASTP_MAX_LEN_READ1]
                              [job_order]

merge_trim_fastq

positional arguments:
  job_order             Job input json file

options:
  -h, --help            show this help message and exit
  --merge_fastq_fastq1 MERGE_FASTQ_FASTQ1
                        Read 1 FASTQ Files that needs to merged, make sure to maintain the array order with Read 2 FASTQ files
  --merge_fastq_fastq2 MERGE_FASTQ_FASTQ2
                        Read 2 FASTQ Files that needs to merged, make sure to maintain the array order with Read 1 FASTQ files
  --fastp_dont_eval_duplication
                        Disable Evaluation of Duplication (default:True)
  --fastp_disable_trim_poly_g
                        Disable Trim PolyG (default:True)
  --fastp_disable_quality_filtering
                        Disable Quality Filtering (default:True)
  --fastp_disable_length_filtering
                        Disable Length Trimming (default:True)
  --fastp_disable_adapter_trimming
                        Disable Adapter Trimming (default:True)
  --fastp_unpaired2_output_file_name FASTP_UNPAIRED2_OUTPUT_FILE_NAME
  --fastp_unpaired1_output_file_name FASTP_UNPAIRED1_OUTPUT_FILE_NAME
  --fastp_read2_output_file_name FASTP_READ2_OUTPUT_FILE_NAME
  --fastp_read1_output_file_name FASTP_READ1_OUTPUT_FILE_NAME
  --fastp_max_len_read2 FASTP_MAX_LEN_READ2
                        Max Lenght for Read 2 (default:95)
  --fastp_max_len_read1 FASTP_MAX_LEN_READ1
                        Max Legth for READ 1 (default:95)

```
