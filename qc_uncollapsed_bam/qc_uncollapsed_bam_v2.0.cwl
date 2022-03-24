class: Workflow
cwlVersion: v1.0
id: qc_uncollapsed_bam
doc: Calcualte Quality Control Metrics from Standard/Uncollapsed BAM
label: qc_uncollapsed_bam
$namespaces:
  s: 'https://schema.org/'
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: reference
    type: File
    secondaryFiles:
      - ^.fasta.fai
      - ^.dict
    'sbg:x': 0
    'sbg:y': 267.2265625
  - id: uncollapsed_bam_base_recal
    type:
      - File
      - type: array
        items: File
    label: uncollapsed_bam_base_recal
    secondaryFiles:
      - ^.bai
    'sbg:x': 0
    'sbg:y': 160.3359375
  - id: bait_intervals
    type: File
    label: bait_intervals
    'sbg:x': 0
    'sbg:y': 694.7890625
  - id: target_intervals
    type: File
    label: target_intervals
    'sbg:x': 0
    'sbg:y': 587.8984375
  - id: hsmetrics_minimum_mapping_quality
    type: int?
    'sbg:x': 0
    'sbg:y': 801.6796875
  - id: hsmetrics_minimum_base_quality
    type: int?
    'sbg:x': 0
    'sbg:y': 908.5703125
  - id: hsmetrics_coverage_cap
    type: int?
    'sbg:x': 0
    'sbg:y': 1015.4609375
outputs:
  - id: gatk_collect_alignment_summary_metrics_txt
    outputSource:
      - bam_qc_stats/gatk_collect_alignment_summary_metrics_txt
    type:
      - File
      - type: array
        items: File
    label: gatk_collect_alignment_summary_metrics_txt
    'sbg:x': 1369.4512939453125
    'sbg:y': 1175.796875
  - id: gatk_collect_hs_metrics_per_base_coverage_txt
    outputSource:
      - bam_qc_stats/gatk_collect_hs_metrics_per_base_coverage_txt
    type:
      - File
      - type: array
        items: File
    label: gatk_collect_hs_metrics_per_base_coverage_txt
    'sbg:x': 1369.4512939453125
    'sbg:y': 962.015625
  - id: gatk_collect_hs_metrics_per_target_coverage_txt
    outputSource:
      - bam_qc_stats/gatk_collect_hs_metrics_per_target_coverage_txt
    type:
      - File
      - type: array
        items: File
    label: gatk_collect_hs_metrics_per_target_coverage_txt
    'sbg:x': 1369.4512939453125
    'sbg:y': 748.234375
  - id: gatk_collect_hs_metrics_txt
    outputSource:
      - bam_qc_stats/gatk_collect_hs_metrics_txt
    type:
      - File
      - type: array
        items: File
    label: gatk_collect_hs_metrics_txt
    'sbg:x': 1369.4512939453125
    'sbg:y': 534.453125
  - id: gatk_collect_insert_size_metrics_histogram_pdf
    outputSource:
      - bam_qc_stats/gatk_collect_insert_size_metrics_histogram_pdf
    type:
      - File
      - type: array
        items: File
    label: gatk_collect_insert_size_metrics_histogram_pdf
    'sbg:x': 1369.4512939453125
    'sbg:y': 320.671875
  - id: gatk_collect_insert_size_metrics_txt
    outputSource:
      - bam_qc_stats/gatk_collect_insert_size_metrics_txt
    type:
      - File
      - type: array
        items: File
    label: gatk_collect_insert_size_metrics_txt
    'sbg:x': 1369.4512939453125
    'sbg:y': 106.890625
  - id: gatk_mean_quality_by_cycle_output_base_recal
    outputSource:
      - gatk_mean_quality_by_cycle_4_1_8_1/gatk_mean_quality_by_cycle_output
    type:
      - File
      - type: array
        items: File
    label: gatk_mean_quality_by_cycle_output_base_recal
    'sbg:x': 738.7452392578125
    'sbg:y': 343.5625
  - id: gatk_mean_quality_by_cycle_chart_output_base_recal
    outputSource:
      - >-
        gatk_mean_quality_by_cycle_4_1_8_1/gatk_mean_quality_by_cycle_chart_output
    type:
      - File
      - type: array
        items: File
    label: gatk_mean_quality_by_cycle_chart_output_base_recal
    'sbg:x': 738.7452392578125
    'sbg:y': 450.453125
steps:
  - id: bam_qc_stats
    in:
      - id: input
        source:
          - gatk_revert_sam_4_1_8_0/gatk_revert_sam_output
      - id: target_intervals
        source: target_intervals
      - id: bait_intervals
        source: bait_intervals
      - id: reference
        source: reference
      - id: hsmetrics_minimum_mapping_quality
        source: hsmetrics_minimum_mapping_quality
      - id: hsmetrics_minimum_base_quality
        source: hsmetrics_minimum_base_quality
      - id: hsmetrics_coverage_cap
        source: hsmetrics_coverage_cap
    out:
      - id: gatk_collect_insert_size_metrics_histogram_pdf
      - id: gatk_collect_insert_size_metrics_txt
      - id: gatk_collect_hs_metrics_txt
      - id: gatk_collect_hs_metrics_per_base_coverage_txt
      - id: gatk_collect_hs_metrics_per_target_coverage_txt
      - id: gatk_collect_alignment_summary_metrics_txt
    run: ../bam_qc_stats/bam_qc_stats.cwl
    label: bam_qc_stats
    'sbg:x': 738.7452392578125
    'sbg:y': 790.234375
  - id: gatk_mean_quality_by_cycle_4_1_8_1
    in:
      - id: input
        source: uncollapsed_bam_base_recal
      - id: reference
        source: reference
    out:
      - id: gatk_mean_quality_by_cycle_output
      - id: gatk_mean_quality_by_cycle_chart_output
    run: >-
      ../command_line_tools/gatk_mean_quality_by_cycle/4.1.8.0/gatk_mean_quality_by_cycle_4.1.8.0.cwl
    label: GATK-MeanQualityByCycle_base_recal
    'sbg:x': 351.4375
    'sbg:y': 701.7890625
  - id: gatk_revert_sam_4_1_8_0
    in:
      - id: input
        source: uncollapsed_bam_base_recal
      - id: remove_alignment_information
        default: 'false'
      - id: remove_duplicate_information
        default: 'true'
      - id: restore_hardclips
        default: 'false'
      - id: restore_original_qualities
        default: 'false'
      - id: sort_order
        default: unsorted
      - id: validation_stringency
        default: SILENT
    out:
      - id: gatk_revert_sam_output
      - id: gatk_revert_sam_output_map
    run: ../command_line_tools/gatk_revert_sam/4.1.8.0/gatk_revert_sam_4.1.8.0.cwl
    label: GATK-RevertSam
    'sbg:x': 351.4375
    'sbg:y': 580.8984375
requirements:
  - class: SubworkflowFeatureRequirement
$schemas:
  - 'http://schema.org/version/latest/schemaorg-current-http.rdf'
's:author':
  - class: 's:Person'
    's:email': 'mailto:charalk@mskcc.org'
    's:identifier': ''
    's:name': Carmelina Charalambous
's:citation': ''
's:codeRepository': 'https://github.com/msk-access/uncollapsed_bam_generation'
's:contributor':
  - class: 's:Person'
    's:email': 'mailto:shahr2@mskcc.org'
    's:identifier': 'https://orcid.org/0000-0001-9042-6213'
    's:name': Ronak Shah
's:dateCreated': '2022-03-23'
's:license': 'https://spdx.org/licenses/Apache-2.0'
