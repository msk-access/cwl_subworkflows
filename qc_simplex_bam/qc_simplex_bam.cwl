class: Workflow
cwlVersion: v1.0
id: qc_simplex_bam
label: qc_simplex_bam
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
  - id: simplex_bam
    type: File
    label: simplex_bam
    'sbg:x': -570.2189331054688
    'sbg:y': 376.736328125
    secondaryFiles:
      - ^.bai
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
outputs:
  - id: gatk_collect_alignment_summary_metrics_txt_pool_b
    outputSource:
      - bam_qc_stats_pool_b/gatk_collect_alignment_summary_metrics_txt
    type: File
    label: gatk_collect_alignment_summary_metrics_txt_pool_b
    'sbg:x': 429.216064453125
    'sbg:y': 559.75537109375
  - id: gatk_collect_hs_metrics_per_base_coverage_txt_pool_b
    outputSource:
      - bam_qc_stats_pool_b/gatk_collect_hs_metrics_per_base_coverage_txt
    type: File
    label: gatk_collect_hs_metrics_per_base_coverage_txt_pool_b
    'sbg:x': 420.07769775390625
    'sbg:y': 442.26190185546875
  - id: gatk_collect_hs_metrics_per_target_coverage_txt_pool_b
    outputSource:
      - bam_qc_stats_pool_b/gatk_collect_hs_metrics_per_target_coverage_txt
    type: File
    label: gatk_collect_hs_metrics_per_target_coverage_txt_pool_b
    'sbg:x': 427.91058349609375
    'sbg:y': 323.46295166015625
  - id: gatk_collect_hs_metrics_txt_pool_b
    outputSource:
      - bam_qc_stats_pool_b/gatk_collect_hs_metrics_txt
    type: File
    label: gatk_collect_hs_metrics_txt_pool_b
    'sbg:x': 427.91058349609375
    'sbg:y': 204.66400146484375
  - id: gatk_collect_insert_size_metrics_histogram_pdf_pool_b
    outputSource:
      - bam_qc_stats_pool_b/gatk_collect_insert_size_metrics_histogram_pdf
    type: File
    label: gatk_collect_insert_size_metrics_histogram_pdf_pool_b
    'sbg:x': 422.68865966796875
    'sbg:y': 80.64311218261719
  - id: gatk_collect_insert_size_metrics_txt_pool_b
    outputSource:
      - bam_qc_stats_pool_b/gatk_collect_insert_size_metrics_txt
    type: File
    label: gatk_collect_insert_size_metrics_txt_pool_b
    'sbg:x': 430.52154541015625
    'sbg:y': -34.2393913269043
  - id: gatk_collect_alignment_summary_metrics_txt_pool_a
    outputSource:
      - bam_qc_stats_pool_a/gatk_collect_alignment_summary_metrics_txt
    type: File
    label: gatk_collect_alignment_summary_metrics_txt_pool_a
    'sbg:x': 420.07769775390625
    'sbg:y': -155.64930725097656
  - id: gatk_collect_hs_metrics_per_base_coverage_txt_pool_a
    outputSource:
      - bam_qc_stats_pool_a/gatk_collect_hs_metrics_per_base_coverage_txt
    type: File
    label: gatk_collect_hs_metrics_per_base_coverage_txt_pool_a
    'sbg:x': 417.46673583984375
    'sbg:y': -274.4482727050781
  - id: gatk_collect_hs_metrics_per_target_coverage_txt_pool_a
    outputSource:
      - bam_qc_stats_pool_a/gatk_collect_hs_metrics_per_target_coverage_txt
    type: File
    label: gatk_collect_hs_metrics_per_target_coverage_txt_pool_a
    'sbg:x': 414.85577392578125
    'sbg:y': -389.3307800292969
  - id: gatk_collect_hs_metrics_txt_pool_a
    outputSource:
      - bam_qc_stats_pool_a/gatk_collect_hs_metrics_txt
    type: File
    label: gatk_collect_hs_metrics_txt_pool_a
    'sbg:x': 409.9451599121094
    'sbg:y': -498.08355712890625
  - id: gatk_collect_insert_size_metrics_histogram_pdf_pool_a
    outputSource:
      - bam_qc_stats_pool_a/gatk_collect_insert_size_metrics_histogram_pdf
    type: File
    label: gatk_collect_insert_size_metrics_histogram_pdf_pool_a
    'sbg:x': 410.9393005371094
    'sbg:y': -621.7067260742188
  - id: gatk_collect_insert_size_metrics_txt_pool_a
    outputSource:
      - bam_qc_stats_pool_a/gatk_collect_insert_size_metrics_txt
    type: File
    label: gatk_collect_insert_size_metrics_txt_pool_a
    'sbg:x': 400.4954528808594
    'sbg:y': -773.1427612304688
steps:
  - id: bam_qc_stats_pool_a
    in:
      - id: input
        source: simplex_bam
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
    label: bam_qc_stats_pool_a
    'sbg:x': -114.38903045654297
    'sbg:y': -295.4621276855469
  - id: bam_qc_stats_pool_b
    in:
      - id: input
        source: simplex_bam
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
    label: bam_qc_stats_pool_b
    'sbg:x': -116.60113525390625
    'sbg:y': 139.5
requirements:
  - class: SubworkflowFeatureRequirement
  - class: InlineJavascriptRequirement
  - class: StepInputExpressionRequirement
