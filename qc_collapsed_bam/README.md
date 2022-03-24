### Introduction
The sub-workflow calculates quality control metrics for collapsed BAMs. The main outputs are the following:

1. Targeted capture metrics.
2. Insert size metrics.
3. Alignment metrics.
4. Duplex sequencing metrics (via Fgbio).
5. Extracted genotype information used for fingerprinting and contamination estimation.
6. Genotype metrics to be used for hotspot mutation metrics.

### Tools used:

- [GetBaseCountsMultiSample](../command_line_tools/getbasecountsmultisample/1.2.5)
- [Fgbio-CollectDuplexSeqMetrics](https://msk-access.gitbook.io/command-line-tools-cwl/bedtools/bedtools_merge_v2.28.0_cv2)
- [bam_qc_stats](../bam_qc_stats/README.md)
- [Biometrics](https://msk-access.gitbook.io/biometrics/)

### Two versions of this subworkflow:
### v1.0 qc_collapsed_bam.cwl

This sub-workflow was originally designed for MSK-ACCESS data. Hence, in addition to the collapsed BAM, it expects two sets of bait/target regions (referred to as pool A and pool B for MSK-ACCESS).

### Usage v1.0

```bash
usage: qc_collapsed_bam.cwl [-h] --reference REFERENCE
                            --pool_b_target_intervals POOL_B_TARGET_INTERVALS
                            --pool_a_target_intervals POOL_A_TARGET_INTERVALS
                            [--pool_a_bait_intervals POOL_A_BAIT_INTERVALS]
                            [--pool_b_bait_intervals POOL_B_BAIT_INTERVALS]
                            [--json] [--plot]
                            [--minor_threshold MINOR_THRESHOLD]
                            [--coverage_threshold COVERAGE_THRESHOLD]
                            [--hsmetrics_minimum_mapping_quality HSMETRICS_MINIMUM_MAPPING_QUALITY]
                            [--hsmetrics_minimum_base_quality HSMETRICS_MINIMUM_BASE_QUALITY]
                            [--hsmetrics_coverage_cap HSMETRICS_COVERAGE_CAP]
                            [--prefix PREFIX]
                            [--major_threshold MAJOR_THRESHOLD] [--json_1]
                            --vcf_file VCF_FILE --sample_name SAMPLE_NAME
                            [--sample_sex SAMPLE_SEX]
                            [--sample_group SAMPLE_GROUP] --maf MAF
                            [job_order]

positional arguments:
  job_order             Job input json file

optional arguments:
  -h, --help            show this help message and exit
  --reference REFERENCE
  --pool_b_target_intervals POOL_B_TARGET_INTERVALS
  --pool_a_target_intervals POOL_A_TARGET_INTERVALS
  --pool_a_bait_intervals POOL_A_BAIT_INTERVALS
                        Optional set of intervals over which to restrict
                        analysis. [Optional].
  --pool_b_bait_intervals POOL_B_BAIT_INTERVALS
                        Optional set of intervals over which to restrict
                        analysis. [Optional].
  --json                Also output data in JSON format.
  --plot                Also output plots of the data.
  --minor_threshold MINOR_THRESHOLD
                        Minor contamination threshold for bad sample.
  --coverage_threshold COVERAGE_THRESHOLD
                        Samples with Y chromosome above this value will be
                        considered male.
  --hsmetrics_minimum_mapping_quality HSMETRICS_MINIMUM_MAPPING_QUALITY
  --hsmetrics_minimum_base_quality HSMETRICS_MINIMUM_BASE_QUALITY
  --hsmetrics_coverage_cap HSMETRICS_COVERAGE_CAP
  --prefix PREFIX
  --major_threshold MAJOR_THRESHOLD
  --json_1
  --vcf_file VCF_FILE
  --sample_name SAMPLE_NAME
  --sample_sex SAMPLE_SEX
  --sample_group SAMPLE_GROUP
  --maf MAF
```

### v2.0 qc_collapsed_bam_v2.0.cwl

This sub-workflow was designed for MSK-ACCESS and CMO-CH data. The updated v2.0 of this sub-workflow expects a single set of bait/target regions as opposed to two in v1.0.

### Usage v2.0

```bash
usage: qc_collapsed_bam_v2.0.cwl [-h] --reference REFERENCE
                            --target_intervals TARGET_INTERVALS
                            [--bait_intervals BAIT_INTERVALS]
                            [--json] [--plot]
                            [--minor_threshold MINOR_THRESHOLD]
                            [--coverage_threshold COVERAGE_THRESHOLD]
                            [--hsmetrics_minimum_mapping_quality HSMETRICS_MINIMUM_MAPPING_QUALITY]
                            [--hsmetrics_minimum_base_quality HSMETRICS_MINIMUM_BASE_QUALITY]
                            [--hsmetrics_coverage_cap HSMETRICS_COVERAGE_CAP]
                            [--prefix PREFIX]
                            [--major_threshold MAJOR_THRESHOLD] [--json_1]
                            --vcf_file VCF_FILE --sample_name SAMPLE_NAME
                            [--sample_sex SAMPLE_SEX]
                            [--sample_group SAMPLE_GROUP] --maf MAF
                            [job_order]

positional arguments:
  job_order             Job input json file

optional arguments:
  -h, --help            show this help message and exit
  --reference REFERENCE
  --pool_b_target_intervals POOL_B_TARGET_INTERVALS
  --pool_a_target_intervals POOL_A_TARGET_INTERVALS
  --pool_a_bait_intervals POOL_A_BAIT_INTERVALS
                        Optional set of intervals over which to restrict
                        analysis. [Optional].
  --pool_b_bait_intervals POOL_B_BAIT_INTERVALS
                        Optional set of intervals over which to restrict
                        analysis. [Optional].
  --json                Also output data in JSON format.
  --plot                Also output plots of the data.
  --minor_threshold MINOR_THRESHOLD
                        Minor contamination threshold for bad sample.
  --coverage_threshold COVERAGE_THRESHOLD
                        Samples with Y chromosome above this value will be
                        considered male.
  --hsmetrics_minimum_mapping_quality HSMETRICS_MINIMUM_MAPPING_QUALITY
  --hsmetrics_minimum_base_quality HSMETRICS_MINIMUM_BASE_QUALITY
  --hsmetrics_coverage_cap HSMETRICS_COVERAGE_CAP
  --prefix PREFIX
  --major_threshold MAJOR_THRESHOLD
  --json_1
  --vcf_file VCF_FILE
  --sample_name SAMPLE_NAME
  --sample_sex SAMPLE_SEX
  --sample_group SAMPLE_GROUP
  --maf MAF
```