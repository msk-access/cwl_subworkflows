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
    secondaryFiles:
      - ^.bai
    'sbg:x': -570.2189331054688
    'sbg:y': 376.736328125
  - id: bait_intervals
    type: File
    label: bait_intervals
    'sbg:x': -583.9046020507812
    'sbg:y': -163.9043731689453
  - id: target_intervals
    type: File
    label: target_intervals
    'sbg:x': -581.4170532226562
    'sbg:y': -288.2825012207031
  - id: hsmetrics_minimum_mapping_quality
    type: int?
    'sbg:x': -585.7700805664062
    'sbg:y': -414.1761779785156
  - id: hsmetrics_minimum_base_quality
    type: int?
    'sbg:x': -590.94140625
    'sbg:y': -539.5800170898438
  - id: hsmetrics_coverage_cap
    type: int?
    'sbg:x': -595.156005859375
    'sbg:y': -670.54931640625
outputs:
  - id: gatk_collect_alignment_summary_metrics_txt
    outputSource:
      - bam_qc_stats/gatk_collect_alignment_summary_metrics_txt
    type: File
    label: gatk_collect_alignment_summary_metrics_txt
    'sbg:x': 420.07769775390625
    'sbg:y': -155.64930725097656
  - id: gatk_collect_hs_metrics_per_base_coverage_txt
    outputSource:
      - bam_qc_stats/gatk_collect_hs_metrics_per_base_coverage_txt
    type: File
    label: gatk_collect_hs_metrics_per_base_coverage_txt
    'sbg:x': 417.46673583984375
    'sbg:y': -274.4482727050781
  - id: gatk_collect_hs_metrics_per_target_coverage_txt
    outputSource:
      - bam_qc_stats/gatk_collect_hs_metrics_per_target_coverage_txt
    type: File
    label: gatk_collect_hs_metrics_per_target_coverage_txt
    'sbg:x': 414.85577392578125
    'sbg:y': -389.3307800292969
  - id: gatk_collect_hs_metrics_txt
    outputSource:
      - bam_qc_stats/gatk_collect_hs_metrics_txt
    type: File
    label: gatk_collect_hs_metrics_txt
    'sbg:x': 409.9451599121094
    'sbg:y': -498.08355712890625
  - id: gatk_collect_insert_size_metrics_histogram_pdf
    outputSource:
      - bam_qc_stats/gatk_collect_insert_size_metrics_histogram_pdf
    type: File
    label: gatk_collect_insert_size_metrics_histogram_pdf
    'sbg:x': 410.9393005371094
    'sbg:y': -621.7067260742188
  - id: gatk_collect_insert_size_metrics_txt
    outputSource:
      - bam_qc_stats/gatk_collect_insert_size_metrics_txt
    type: File
    label: gatk_collect_insert_size_metrics_txt
    'sbg:x': 400.4954528808594
    'sbg:y': -773.1427612304688
steps:
  - id: bam_qc_stats
    in:
      - id: input
        source:
          - simplex_bam
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
    'sbg:x': -114.38903045654297
    'sbg:y': -295.4621276855469
requirements:
  - class: SubworkflowFeatureRequirement
