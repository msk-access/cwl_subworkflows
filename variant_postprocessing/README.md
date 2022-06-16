### Introduction

The sub-workflow calls the variant from single sample bam and the returned variants are processed. The main outputs are the following:

1. Variant calls from VarDict.
2. Above variant calls are filtered and separated into simple and complex.
3. bgziped VCF files.
4. simple and complex concat VCF file.

### Tools used:

- [bcftools_1.15.1](../command_line_tools/bcftools_1.15.1/README.md)
- [Vardict](../vardictjava/README.md)

### Usage 

```bash
usage: qc_uncollapsed_bam.cwl [-h] --reference REFERENCE
                              --pool_b_target_intervals
                              POOL_B_TARGET_INTERVALS --pool_b_bait_intervals
                              POOL_B_BAIT_INTERVALS --pool_a_bait_intervals
                              POOL_A_BAIT_INTERVALS --pool_a_target_intervals
                              POOL_A_TARGET_INTERVALS
                              [--hsmetrics_minimum_mapping_quality HSMETRICS_MINIMUM_MAPPING_QUALITY]
                              [--hsmetrics_minimum_base_quality HSMETRICS_MINIMUM_BASE_QUALITY]
                              [--hsmetrics_coverage_cap HSMETRICS_COVERAGE_CAP]
                              [job_order]

positional arguments:
  job_order             Job input json file

optional arguments:
  -h, --help            show this help message and exit
  --reference REFERENCE
  --pool_b_target_intervals POOL_B_TARGET_INTERVALS
  --pool_b_bait_intervals POOL_B_BAIT_INTERVALS
  --pool_a_bait_intervals POOL_A_BAIT_INTERVALS
  --pool_a_target_intervals POOL_A_TARGET_INTERVALS
  --hsmetrics_minimum_mapping_quality HSMETRICS_MINIMUM_MAPPING_QUALITY
  --hsmetrics_minimum_base_quality HSMETRICS_MINIMUM_BASE_QUALITY
  --hsmetrics_coverage_cap HSMETRICS_COVERAGE_CAP
```

