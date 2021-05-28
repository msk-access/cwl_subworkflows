---
description: Specifications for generating counts from Duplex,Simplex and Standard/Unfiltered (Tumor/Normal) BAM
---

## Specifications for generating counts from Duplex,Simplex and Standard/Unfiltered (Tumor/Normal) BAM - gbcms_genotyping.cwl

### Tools used:

- [GetBaseCountsMultiSample](https://msk-access.gitbook.io/command-line-tools-cwl/getbasecountsmultisample/1.2.5)

### Usage

```bash
usage: gbcms_genotyping.cwl [-h] --duplex_bams DUPLEX_BAMS --normal_bams
                            NORMAL_BAMS --tumor_bams TUMOR_BAMS --simplex_bams
                            SIMPLEX_BAMS --maf MAF --ref_fasta REF_FASTA
                            --simplex_genotyping_bams_ids
                            SIMPLEX_GENOTYPING_BAMS_IDS [--generic_counting]
                            --normal_genotyping_bams_ids
                            NORMAL_GENOTYPING_BAMS_IDS
                            --tumor_genotyping_bams_ids
                            TUMOR_GENOTYPING_BAMS_IDS
                            --duplex_genotyping_bams_ids
                            DUPLEX_GENOTYPING_BAMS_IDS
                            [job_order]

positional arguments:
  job_order             Job input json file

optional arguments:
  -h, --help            show this help message and exit
  --duplex_bams DUPLEX_BAMS
  --normal_bams NORMAL_BAMS
  --tumor_bams TUMOR_BAMS
  --simplex_bams SIMPLEX_BAMS
  --maf MAF
  --ref_fasta REF_FASTA
  --simplex_genotyping_bams_ids SIMPLEX_GENOTYPING_BAMS_IDS
  --generic_counting
  --normal_genotyping_bams_ids NORMAL_GENOTYPING_BAMS_IDS
  --tumor_genotyping_bams_ids TUMOR_GENOTYPING_BAMS_IDS
  --duplex_genotyping_bams_ids DUPLEX_GENOTYPING_BAMS_IDS
```
