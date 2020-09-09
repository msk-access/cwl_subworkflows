---
description: Specifications for generating Duplex and Simplex BAM from Unfiltered BAM
---

## Generate SIMPLEX and DUPLEX sub-workflow specification - fgbio_separate_bams.cwl

### Tools used:

-   [Fgbio - FilterConsensusReads](https://msk-access.gitbook.io/command-line-tools-cwl/fgbio/fgbio_filter_consensus_reads_1.2.0)
-   [Fgbio postprocessing - simplex_filter](https://msk-access.gitbook.io/command-line-tools-cwl/fgbio/fgbio_postprocessing_simplex_filter_0.1.8)
-   [GATK4 CollectAlignmentSummaryMetrics](https://msk-access.gitbook.io/command-line-tools-cwl/gatk/gatk_collect_alignment_summary_metrics_4.1.8.0)

### Usage

```bash
usage: fgbio_separate_bams.cwl [-h] --reference_fasta REFERENCE_FASTA --input
                               INPUT [--reverse_per_base_tags_simplex_duplex]
                               [--require_single_strand_agreement_simplex_duplex]
                               [--output_file_name_simplex_duplex OUTPUT_FILE_NAME_SIMPLEX_DUPLEX]
                               [--number_of_threads NUMBER_OF_THREADS]
                               [--min_reads_simplex_duplex MIN_READS_SIMPLEX_DUPLEX]
                               [--min_mean_base_quality_simplex_duplex MIN_MEAN_BASE_QUALITY_SIMPLEX_DUPLEX]
                               [--max_base_error_rate_simplex_duplex MAX_BASE_ERROR_RATE_SIMPLEX_DUPLEX]
                               [--max_no_call_fraction_simplex_duplex MAX_NO_CALL_FRACTION_SIMPLEX_DUPLEX]
                               [--min_base_quality_simplex_duplex MIN_BASE_QUALITY_SIMPLEX_DUPLEX]
                               [--memory_per_job MEMORY_PER_JOB]
                               [--memory_overhead MEMORY_OVERHEAD]
                               [--max_read_error_rate_simplex_duplex MAX_READ_ERROR_RATE_SIMPLEX_DUPLEX]
                               [--reverse_per_base_tags_duplex]
                               [--require_single_strand_agreement_duplex]
                               [--output_file_name_duplex OUTPUT_FILE_NAME_DUPLEX]
                               [--min_reads_duplex MIN_READS_DUPLEX]
                               [--min_mean_base_quality_duplex MIN_MEAN_BASE_QUALITY_DUPLEX]
                               [--min_base_quality_duplex MIN_BASE_QUALITY_DUPLEX]
                               [--max_read_error_rate_duplex MAX_READ_ERROR_RATE_DUPLEX]
                               [--max_no_call_fraction_duplex MAX_NO_CALL_FRACTION_DUPLEX]
                               [--max_base_error_rate_duplex MAX_BASE_ERROR_RATE_DUPLEX]
                               [--validation_stringency VALIDATION_STRINGENCY]
                               [--use_jdk_inflater] [--use_jdk_deflater]
                               [--output_file_name_duplex_aln_metrics OUTPUT_FILE_NAME_DUPLEX_ALN_METRICS]
                               [--create_index] [--assume_sorted]
                               [--output_file_name_simplex_aln_metrics OUTPUT_FILE_NAME_SIMPLEX_ALN_METRICS]
                               [--output_file_name_simpex OUTPUT_FILE_NAME_SIMPEX]
                               [--min_simplex_reads MIN_SIMPLEX_READS]
                               [job_order]

positional arguments:
  job_order             Job input json file

optional arguments:
  -h, --help            show this help message and exit
  --reference_fasta REFERENCE_FASTA
  --input INPUT
  --reverse_per_base_tags_simplex_duplex
  --require_single_strand_agreement_simplex_duplex
  --output_file_name_simplex_duplex OUTPUT_FILE_NAME_SIMPLEX_DUPLEX
  --number_of_threads NUMBER_OF_THREADS
  --min_reads_simplex_duplex MIN_READS_SIMPLEX_DUPLEX
  --min_mean_base_quality_simplex_duplex MIN_MEAN_BASE_QUALITY_SIMPLEX_DUPLEX
  --max_base_error_rate_simplex_duplex MAX_BASE_ERROR_RATE_SIMPLEX_DUPLEX
  --max_no_call_fraction_simplex_duplex MAX_NO_CALL_FRACTION_SIMPLEX_DUPLEX
  --min_base_quality_simplex_duplex MIN_BASE_QUALITY_SIMPLEX_DUPLEX
  --memory_per_job MEMORY_PER_JOB
  --memory_overhead MEMORY_OVERHEAD
  --max_read_error_rate_simplex_duplex MAX_READ_ERROR_RATE_SIMPLEX_DUPLEX
  --reverse_per_base_tags_duplex
  --require_single_strand_agreement_duplex
  --output_file_name_duplex OUTPUT_FILE_NAME_DUPLEX
  --min_reads_duplex MIN_READS_DUPLEX
  --min_mean_base_quality_duplex MIN_MEAN_BASE_QUALITY_DUPLEX
  --min_base_quality_duplex MIN_BASE_QUALITY_DUPLEX
  --max_read_error_rate_duplex MAX_READ_ERROR_RATE_DUPLEX
  --max_no_call_fraction_duplex MAX_NO_CALL_FRACTION_DUPLEX
  --max_base_error_rate_duplex MAX_BASE_ERROR_RATE_DUPLEX
  --validation_stringency VALIDATION_STRINGENCY
  --use_jdk_inflater
  --use_jdk_deflater
  --output_file_name_duplex_aln_metrics OUTPUT_FILE_NAME_DUPLEX_ALN_METRICS
  --create_index
  --assume_sorted
  --output_file_name_simplex_aln_metrics OUTPUT_FILE_NAME_SIMPLEX_ALN_METRICS
  --output_file_name_simpex OUTPUT_FILE_NAME_SIMPEX
  --min_simplex_reads MIN_SIMPLEX_READS
```
