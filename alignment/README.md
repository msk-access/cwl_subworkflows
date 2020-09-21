---
description: Specifications for performing alignment on pair-end FASTQ files.
---

## Alignment sub-workflow specification - alignment.cwl

### Tools used:

-   BWA mem
-   [Picard Tools - AddOrReplaceReadGroups](https://msk-access.gitbook.io/command-line-tools-cwl/picard-tools/picard_add_or_replace_read_groups_4.1.8.1)

### Usage

```bash

usage: alignment.cwl [-h] [--create_bam_index]
                     [--output_file_name OUTPUT_FILE_NAME]
                     [--read_group_description READ_GROUP_DESCRIPTION]
                     --read_group_identifier READ_GROUP_IDENTIFIER
                     --read_group_library READ_GROUP_LIBRARY
                     --read_group_platform_unit READ_GROUP_PLATFORM_UNIT
                     [--read_group_run_date READ_GROUP_RUN_DATE]
                     --read_group_sample_name READ_GROUP_SAMPLE_NAME
                     --read_group_sequencing_center
                     READ_GROUP_SEQUENCING_CENTER
                     --read_group_sequencing_platform
                     READ_GROUP_SEQUENCING_PLATFORM [--sort_order SORT_ORDER]
                     [--validation_stringency VALIDATION_STRINGENCY]
                     --reference REFERENCE --reads READS [--output OUTPUT]
                     [-P] [-M] [--bam_compression_level BAM_COMPRESSION_LEVEL]
                     --sample_id SAMPLE_ID
                     [job_order]

positional arguments:
  job_order             Job input json file

optional arguments:
  -h, --help            show this help message and exit
  --create_bam_index
  --output_file_name OUTPUT_FILE_NAME
  --read_group_description READ_GROUP_DESCRIPTION
  --read_group_identifier READ_GROUP_IDENTIFIER
  --read_group_library READ_GROUP_LIBRARY
  --read_group_platform_unit READ_GROUP_PLATFORM_UNIT
  --read_group_run_date READ_GROUP_RUN_DATE
  --read_group_sample_name READ_GROUP_SAMPLE_NAME
  --read_group_sequencing_center READ_GROUP_SEQUENCING_CENTER
  --read_group_sequencing_platform READ_GROUP_SEQUENCING_PLATFORM
  --sort_order SORT_ORDER
  --validation_stringency VALIDATION_STRINGENCY
  --reference REFERENCE
  --reads READS
  --output OUTPUT
  -P
  -M
  --bam_compression_level BAM_COMPRESSION_LEVEL
  --sample_id SAMPLE_ID

```
