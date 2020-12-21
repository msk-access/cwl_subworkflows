---
description: Specifications for performing Base Quality Score Recalibration on a BAM file
---

## Base Quality Score Recalibration sub-workflow specification - base_quality_recalibration.cwl

### Tools used:

-   [GATK - BaseRecalibrator](https://msk-access.gitbook.io/command-line-tools-cwl/gatk/gatk_base_recalibrator_4.1.8.1)
-   [GATK - ApplyBQSR](https://msk-access.gitbook.io/command-line-tools-cwl/gatk/gatk_apply_bqsr_4.1.8.1)

### Usage

```bash
usage: base_quality_recalibration.cwl [-h] --input INPUT --reference REFERENCE
                                      [--read_filter READ_FILTER]
                                      --known_sites KNOWN_SITES
                                      [--base_recalibrator_output_file_name BASE_RECALIBRATOR_OUTPUT_FILE_NAME]
                                      [--add_output_sam_program_record]
                                      [--disable_read_filter DISABLE_READ_FILTER]
                                      [--lenient]
                                      [--apply_bqsr_create_output_bam_index]
                                      [--apply_bqsr_output_file_name APPLY_BQSR_OUTPUT_FILE_NAME]
                                      [job_order]

positional arguments:
  job_order             Job input json file

optional arguments:
  -h, --help            show this help message and exit
  --input INPUT
  --reference REFERENCE
  --read_filter READ_FILTER
  --known_sites KNOWN_SITES
  --base_recalibrator_output_file_name BASE_RECALIBRATOR_OUTPUT_FILE_NAME
  --add_output_sam_program_record
  --disable_read_filter DISABLE_READ_FILTER
  --lenient
  --apply_bqsr_create_output_bam_index
  --apply_bqsr_output_file_name APPLY_BQSR_OUTPUT_FILE_NAME
```
