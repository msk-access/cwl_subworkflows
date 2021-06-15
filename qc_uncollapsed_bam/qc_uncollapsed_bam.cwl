class: Workflow
cwlVersion: v1.0
id: qc_uncollapsed_bam
label: qc_uncollapsed_bam
$namespaces:
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
  - id: pool_b_target_intervals
    type: File
    label: pool_b_target_intervals
    'sbg:x': 0
    'sbg:y': 374.1171875
  - id: pool_b_bait_intervals
    type: File
    label: pool_b_bait_intervals
    'sbg:x': 0
    'sbg:y': 481.0078125
  - id: pool_a_bait_intervals
    type: File
    label: pool_a_bait_intervals
    'sbg:x': 0
    'sbg:y': 694.7890625
  - id: pool_a_target_intervals
    type: File
    label: pool_a_target_intervals
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
  - id: gatk_collect_alignment_summary_metrics_txt_pool_b
    outputSource:
      - bam_qc_stats_pool_b/gatk_collect_alignment_summary_metrics_txt
    type:
      - File
      - type: array
        items: File
    label: gatk_collect_alignment_summary_metrics_txt_pool_b
    'sbg:x': 1369.4512939453125
    'sbg:y': 1068.90625
  - id: gatk_collect_hs_metrics_per_base_coverage_txt_pool_b
    outputSource:
      - bam_qc_stats_pool_b/gatk_collect_hs_metrics_per_base_coverage_txt
    type:
      - File
      - type: array
        items: File
    label: gatk_collect_hs_metrics_per_base_coverage_txt_pool_b
    'sbg:x': 1369.4512939453125
    'sbg:y': 855.125
  - id: gatk_collect_hs_metrics_per_target_coverage_txt_pool_b
    outputSource:
      - bam_qc_stats_pool_b/gatk_collect_hs_metrics_per_target_coverage_txt
    type:
      - File
      - type: array
        items: File
    label: gatk_collect_hs_metrics_per_target_coverage_txt_pool_b
    'sbg:x': 1369.4512939453125
    'sbg:y': 641.34375
  - id: gatk_collect_hs_metrics_txt_pool_b
    outputSource:
      - bam_qc_stats_pool_b/gatk_collect_hs_metrics_txt
    type:
      - File
      - type: array
        items: File
    label: gatk_collect_hs_metrics_txt_pool_b
    'sbg:x': 1369.4512939453125
    'sbg:y': 427.5625
  - id: gatk_collect_insert_size_metrics_histogram_pdf_pool_b
    outputSource:
      - bam_qc_stats_pool_b/gatk_collect_insert_size_metrics_histogram_pdf
    type:
      - File
      - type: array
        items: File
    label: gatk_collect_insert_size_metrics_histogram_pdf_pool_b
    'sbg:x': 1369.4512939453125
    'sbg:y': 213.78125
  - id: gatk_collect_insert_size_metrics_txt_pool_b
    outputSource:
      - bam_qc_stats_pool_b/gatk_collect_insert_size_metrics_txt
    type:
      - File
      - type: array
        items: File
    label: gatk_collect_insert_size_metrics_txt_pool_b
    'sbg:x': 1369.4512939453125
    'sbg:y': 0
  - id: gatk_collect_alignment_summary_metrics_txt_pool_a
    outputSource:
      - bam_qc_stats_pool_a/gatk_collect_alignment_summary_metrics_txt
    type:
      - File
      - type: array
        items: File
    label: gatk_collect_alignment_summary_metrics_txt_pool_a
    'sbg:x': 1369.4512939453125
    'sbg:y': 1175.796875
  - id: gatk_collect_hs_metrics_per_base_coverage_txt_pool_a
    outputSource:
      - bam_qc_stats_pool_a/gatk_collect_hs_metrics_per_base_coverage_txt
    type:
      - File
      - type: array
        items: File
    label: gatk_collect_hs_metrics_per_base_coverage_txt_pool_a
    'sbg:x': 1369.4512939453125
    'sbg:y': 962.015625
  - id: gatk_collect_hs_metrics_per_target_coverage_txt_pool_a
    outputSource:
      - bam_qc_stats_pool_a/gatk_collect_hs_metrics_per_target_coverage_txt
    type:
      - File
      - type: array
        items: File
    label: gatk_collect_hs_metrics_per_target_coverage_txt_pool_a
    'sbg:x': 1369.4512939453125
    'sbg:y': 748.234375
  - id: gatk_collect_hs_metrics_txt_pool_a
    outputSource:
      - bam_qc_stats_pool_a/gatk_collect_hs_metrics_txt
    type:
      - File
      - type: array
        items: File
    label: gatk_collect_hs_metrics_txt_pool_a
    'sbg:x': 1369.4512939453125
    'sbg:y': 534.453125
  - id: gatk_collect_insert_size_metrics_histogram_pdf_pool_a
    outputSource:
      - bam_qc_stats_pool_a/gatk_collect_insert_size_metrics_histogram_pdf
    type:
      - File
      - type: array
        items: File
    label: gatk_collect_insert_size_metrics_histogram_pdf_pool_a
    'sbg:x': 1369.4512939453125
    'sbg:y': 320.671875
  - id: gatk_collect_insert_size_metrics_txt_pool_a
    outputSource:
      - bam_qc_stats_pool_a/gatk_collect_insert_size_metrics_txt
    type:
      - File
      - type: array
        items: File
    label: gatk_collect_insert_size_metrics_txt_pool_a
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
  - id: bam_qc_stats_pool_a
    in:
      - id: input
        source:
          - gatk_revert_sam_4_1_8_0/gatk_revert_sam_output
      - id: target_intervals
        source: pool_a_target_intervals
      - id: bait_intervals
        source: pool_a_bait_intervals
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
    label: bam_qc_stats_pool_a
    'sbg:x': 738.7452392578125
    'sbg:y': 790.234375
  - id: bam_qc_stats_pool_b
    in:
      - id: input
        source:
          - gatk_revert_sam_4_1_8_1/gatk_revert_sam_output
      - id: target_intervals
        source: pool_b_target_intervals
      - id: bait_intervals
        source: pool_b_bait_intervals
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
    label: bam_qc_stats_pool_b
    'sbg:x': 738.7452392578125
    'sbg:y': 599.34375
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
    label: GATK-CollectHsMetrics
    'sbg:x': 351.4375
    'sbg:y': 580.8984375
  - id: gatk_revert_sam_4_1_8_1
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
    label: GATK-CollectHsMetrics
    'sbg:x': 351.4375
    'sbg:y': 460.0078125
requirements:
  - class: SubworkflowFeatureRequirement
