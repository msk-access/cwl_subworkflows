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
    'sbg:x': -573
    'sbg:y': 247.2935333251953
  - id: uncollapsed_bam
    type:
      - File
      - type: array
        items: File
    label: uncollapsed_bam
    'sbg:x': -714.6541137695312
    'sbg:y': 563.10693359375
  - id: pool_b_target_intervals
    type: File
    label: pool_b_target_intervals
    'sbg:x': -583.1691284179688
    'sbg:y': -23.069652557373047
  - id: pool_b_bait_intervals
    type: File
    label: pool_b_bait_intervals
    'sbg:x': -579.8407592773438
    'sbg:y': 105.95523071289062
  - id: pool_a_bait_intervals
    type: File
    label: pool_a_bait_intervals
    'sbg:x': -583.9046020507812
    'sbg:y': -163.9043731689453
  - id: pool_a_target_intervals
    type: File
    label: pool_a_target_intervals
    'sbg:x': -581.4170532226562
    'sbg:y': -288.2825012207031
  - id: uncollapsed_bam_base_recal
    type:
      - File
      - type: array
        items: File
    label: uncollapsed_bam_base_recal
    doc: An aligned SAM or BAM file.  Required.
    'sbg:x': -711.8302001953125
    'sbg:y': 724.0377197265625
outputs:
  - id: gatk_collect_alignment_summary_metrics_txt
    outputSource:
      - bam_qc_stats_1/gatk_collect_alignment_summary_metrics_txt
    type: File
    'sbg:x': 429.216064453125
    'sbg:y': 559.75537109375
  - id: gatk_collect_hs_metrics_per_base_coverage_txt
    outputSource:
      - bam_qc_stats_1/gatk_collect_hs_metrics_per_base_coverage_txt
    type: File
    'sbg:x': 420.07769775390625
    'sbg:y': 442.26190185546875
  - id: gatk_collect_hs_metrics_per_target_coverage_txt
    outputSource:
      - bam_qc_stats_1/gatk_collect_hs_metrics_per_target_coverage_txt
    type: File
    'sbg:x': 427.91058349609375
    'sbg:y': 323.46295166015625
  - id: gatk_collect_hs_metrics_txt
    outputSource:
      - bam_qc_stats_1/gatk_collect_hs_metrics_txt
    type: File
    'sbg:x': 427.91058349609375
    'sbg:y': 204.66400146484375
  - id: gatk_collect_insert_size_metrics_histogram_pdf
    outputSource:
      - bam_qc_stats_1/gatk_collect_insert_size_metrics_histogram_pdf
    type: File
    'sbg:x': 422.68865966796875
    'sbg:y': 80.64311218261719
  - id: gatk_collect_insert_size_metrics_txt
    outputSource:
      - bam_qc_stats_1/gatk_collect_insert_size_metrics_txt
    type: File
    'sbg:x': 430.52154541015625
    'sbg:y': -34.2393913269043
  - id: gatk_collect_alignment_summary_metrics_txt_1
    outputSource:
      - bam_qc_stats/gatk_collect_alignment_summary_metrics_txt
    type: File
    'sbg:x': 420.07769775390625
    'sbg:y': -155.64930725097656
  - id: gatk_collect_hs_metrics_per_base_coverage_txt_1
    outputSource:
      - bam_qc_stats/gatk_collect_hs_metrics_per_base_coverage_txt
    type: File
    'sbg:x': 417.46673583984375
    'sbg:y': -274.4482727050781
  - id: gatk_collect_hs_metrics_per_target_coverage_txt_1
    outputSource:
      - bam_qc_stats/gatk_collect_hs_metrics_per_target_coverage_txt
    type: File
    'sbg:x': 414.85577392578125
    'sbg:y': -389.3307800292969
  - id: gatk_collect_hs_metrics_txt_1
    outputSource:
      - bam_qc_stats/gatk_collect_hs_metrics_txt
    type: File
    'sbg:x': 409.9451599121094
    'sbg:y': -498.08355712890625
  - id: gatk_collect_insert_size_metrics_histogram_pdf_1
    outputSource:
      - bam_qc_stats/gatk_collect_insert_size_metrics_histogram_pdf
    type: File
    'sbg:x': 410.9393005371094
    'sbg:y': -621.7067260742188
  - id: gatk_collect_insert_size_metrics_txt_1
    outputSource:
      - bam_qc_stats/gatk_collect_insert_size_metrics_txt
    type: File
    'sbg:x': 400.4954528808594
    'sbg:y': -773.1427612304688
  - id: gatk_mean_quality_by_cycle_output
    outputSource:
      - gatk_mean_quality_by_cycle_4_1_8_0/gatk_mean_quality_by_cycle_output
    type: File
    'sbg:x': 419.18060302734375
    'sbg:y': 776.599609375
  - id: gatk_mean_quality_by_cycle_chart_output
    outputSource:
      - >-
        gatk_mean_quality_by_cycle_4_1_8_0/gatk_mean_quality_by_cycle_chart_output
    type: File
    'sbg:x': 419.18060302734375
    'sbg:y': 929.2159423828125
  - id: gatk_mean_quality_by_cycle_output_1
    outputSource:
      - gatk_mean_quality_by_cycle_4_1_8_1/gatk_mean_quality_by_cycle_output
    type: File
    'sbg:x': 417.72711181640625
    'sbg:y': 1129.79736328125
  - id: gatk_mean_quality_by_cycle_chart_output_1
    outputSource:
      - >-
        gatk_mean_quality_by_cycle_4_1_8_1/gatk_mean_quality_by_cycle_chart_output
    type: File
    'sbg:x': 424.99456787109375
    'sbg:y': 1283.8670654296875
steps:
  - id: bam_qc_stats
    in:
      - id: input
        source: uncollapsed_bam
      - id: target_intervals
        source: pool_a_target_intervals
      - id: bait_intervals
        source: pool_a_bait_intervals
      - id: reference
        source: reference
    out:
      - id: gatk_collect_insert_size_metrics_histogram_pdf
      - id: gatk_collect_insert_size_metrics_txt
      - id: gatk_collect_hs_metrics_txt
      - id: gatk_collect_hs_metrics_per_base_coverage_txt
      - id: gatk_collect_hs_metrics_per_target_coverage_txt
      - id: gatk_collect_alignment_summary_metrics_txt
    run: ../bam_qc_stats/bam_qc_stats.cwl
    label: bam_qc_stats
    'sbg:x': -114.38903045654297
    'sbg:y': -295.4621276855469
  - id: bam_qc_stats_1
    in:
      - id: input
        source: uncollapsed_bam
      - id: target_intervals
        source: pool_b_target_intervals
      - id: bait_intervals
        source: pool_b_bait_intervals
      - id: reference
        source: reference
    out:
      - id: gatk_collect_insert_size_metrics_histogram_pdf
      - id: gatk_collect_insert_size_metrics_txt
      - id: gatk_collect_hs_metrics_txt
      - id: gatk_collect_hs_metrics_per_base_coverage_txt
      - id: gatk_collect_hs_metrics_per_target_coverage_txt
      - id: gatk_collect_alignment_summary_metrics_txt
    run: ../bam_qc_stats/bam_qc_stats.cwl
    label: bam_qc_stats
    'sbg:x': -116.60113525390625
    'sbg:y': 139.5
  - id: gatk_mean_quality_by_cycle_4_1_8_0
    in:
      - id: input
        source: uncollapsed_bam
      - id: reference
        source: reference
    out:
      - id: gatk_mean_quality_by_cycle_output
      - id: gatk_mean_quality_by_cycle_chart_output
    run: >-
      ../command_line_tools/gatk_mean_quality_by_cycle/4.1.8.0/gatk_mean_quality_by_cycle_4.1.8.0.cwl
    label: GATK-MeanQualityByCycle
    'sbg:x': -80.24418640136719
    'sbg:y': 861.4418334960938
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
    label: GATK-MeanQualityByCycle
    'sbg:x': -78.6744155883789
    'sbg:y': 1229.6976318359375
requirements:
  - class: SubworkflowFeatureRequirement
  - class: InlineJavascriptRequirement
  - class: StepInputExpressionRequirement
