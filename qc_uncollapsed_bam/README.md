### Introduction
The sub-workflow calculates quality control metrics for uncollapsed BAMs. The main outputs are the following:

1. Targeted capture metrics.
2. Insert size metrics.
3. Alignment metrics.
4. Mean base quality by cycle.

**Note:** This sub-workflow was originally designed for MSK-ACCESS data. Hence, in addition to the collapsed BAM, it expects two sets of bait/target regions (referred to as pool A and pool B for MSK-ACCESS).

### Tools used:

- [GATK-MeanQualityByCycle](../command_line_tools/gatk_mean_quality_by_cycle/README.md)
- [bam_qc_stats](../bam_qc_stats/README.md)

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
