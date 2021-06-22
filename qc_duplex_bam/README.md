### Introduction
The sub-workflow calculates quality control metrics for duplex BAMs. The main outputs are the following:

1. Targeted capture metrics.
2. Insert size metrics.
3. Alignment metrics.
4. Extracted genotype information used for fingerprinting and contamination estimation.
5. Genotype metrics to be used for hotspot mutation metrics.

**Note:** This sub-workflow was originally designed for MSK-ACCESS data. Hence, in addition to the collapsed BAM, it expects two sets of bait/target regions (referred to as pool A and pool B for MSK-ACCESS).

### Tools used:

- [GetBaseCountsMultiSample](../command_line_tools/getbasecountsmultisample/1.2.5)
- [bam_qc_stats](../bam_qc_stats/README.md)
- [sequence_qc](https://msk-access.gitbook.io/sequence-qc/)
- [Biometrics](https://msk-access.gitbook.io/biometrics/)

### Usage

```bash
usage: qc_duplex_bam.cwl [-h] --reference REFERENCE --pool_a_target_intervals
                         POOL_A_TARGET_INTERVALS --pool_a_bait_intervals
                         POOL_A_BAIT_INTERVALS --pool_b_target_intervals
                         POOL_B_TARGET_INTERVALS --pool_b_bait_intervals
                         POOL_B_BAIT_INTERVALS --noise_sites_bed
                         NOISE_SITES_BED [--plot] [--json]
                         [--sequence_qc_min_basq SEQUENCE_QC_MIN_BASQ]
                         [--sequence_qc_min_mapq SEQUENCE_QC_MIN_MAPQ]
                         [--sequence_qc_threshold SEQUENCE_QC_THRESHOLD]
                         [--sequence_qc_truncate SEQUENCE_QC_TRUNCATE]
                         [--hsmetrics_minimum_mapping_quality HSMETRICS_MINIMUM_MAPPING_QUALITY]
                         [--hsmetrics_minimum_base_quality HSMETRICS_MINIMUM_BASE_QUALITY]
                         [--hsmetrics_coverage_cap HSMETRICS_COVERAGE_CAP]
                         [--prefix PREFIX] [--major_threshold MAJOR_THRESHOLD]
                         --vcf_file VCF_FILE [--sample_sex SAMPLE_SEX]
                         [--sample_group SAMPLE_GROUP] --maf MAF
                         [job_order]

positional arguments:
  job_order             Job input json file

optional arguments:
  -h, --help            show this help message and exit
  --reference REFERENCE
                        Path to reference fasta, containing all regions in
                        bed_file
  --pool_a_target_intervals POOL_A_TARGET_INTERVALS
  --pool_a_bait_intervals POOL_A_BAIT_INTERVALS
  --pool_b_target_intervals POOL_B_TARGET_INTERVALS
  --pool_b_bait_intervals POOL_B_BAIT_INTERVALS
  --noise_sites_bed NOISE_SITES_BED
                        Path to BED file containing regions over which to
                        calculate noise [required]
  --plot                Also output plots of the data.
  --json                Also output data in JSON format.
  --sequence_qc_min_basq SEQUENCE_QC_MIN_BASQ
  --sequence_qc_min_mapq SEQUENCE_QC_MIN_MAPQ
  --sequence_qc_threshold SEQUENCE_QC_THRESHOLD
  --sequence_qc_truncate SEQUENCE_QC_TRUNCATE
  --hsmetrics_minimum_mapping_quality HSMETRICS_MINIMUM_MAPPING_QUALITY
  --hsmetrics_minimum_base_quality HSMETRICS_MINIMUM_BASE_QUALITY
  --hsmetrics_coverage_cap HSMETRICS_COVERAGE_CAP
  --prefix PREFIX
  --major_threshold MAJOR_THRESHOLD
  --vcf_file VCF_FILE
  --sample_sex SAMPLE_SEX
  --sample_group SAMPLE_GROUP
  --maf MAF
```
