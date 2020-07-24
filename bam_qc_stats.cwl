class: Workflow
cwlVersion: v1.0
id: bam_qc_stats
label: bam_qc_stats
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: input
    type: File
    'sbg:x': -496.41986083984375
    'sbg:y': -282.843994140625
  - id: target_intervals
    type: File
    'sbg:x': -490.1000671386719
    'sbg:y': -133.69674682617188
  - id: bait_intervals
    type: File
    'sbg:x': -485.0442199707031
    'sbg:y': 11.658624649047852
  - id: reference
    type: File?
    secondaryFiles:
      - ^.fasta.fai
      - ^.dict
    'sbg:x': -504.0036315917969
    'sbg:y': -426.9353942871094
outputs:
  - id: histogram_file_out
    outputSource:
      - gatk_collect_insert_size_metrics_4_1_8_0/histogram_file_out
    type: File
    'sbg:x': 395.9356689453125
    'sbg:y': 146.90231323242188
  - id: insert_size_metrics
    outputSource:
      - gatk_collect_insert_size_metrics_4_1_8_0/insert_size_metrics
    type: File
    'sbg:x': 389.6158752441406
    'sbg:y': 17.978422164916992
  - id: hs_metrics
    outputSource:
      - gatk_collect_hs_metrics_4_1_8_0/hs_metrics
    type: File
    'sbg:x': 384.5600280761719
    'sbg:y': -112.20942687988281
  - id: per_base_coverage_out
    outputSource:
      - gatk_collect_hs_metrics_4_1_8_0/per_base_coverage_out
    type: File
    'sbg:x': 378.240234375
    'sbg:y': -244.92520141601562
  - id: per_target_coverage_out
    outputSource:
      - gatk_collect_hs_metrics_4_1_8_0/per_target_coverage_out
    type: File
    'sbg:x': 371.9204406738281
    'sbg:y': -373.8490905761719
  - id: alignment_summary_metrics
    outputSource:
      - gatk_collect_alignment_summary_metrics_4_1_3_0/alignment_summary_metrics
    type: File
    'sbg:x': 373.18438720703125
    'sbg:y': -520.4683837890625
steps:
  - id: gatk_collect_alignment_summary_metrics_4_1_3_0
    in:
      - id: input
        source: input
      - id: reference
        source: reference
    out:
      - id: alignment_summary_metrics
    run: >-
      command_line_tools/gatk_collect_alignment_summary_metrics_4.1.8.0/gatk_collect_alignment_summary_metrics_4.1.8.0.cwl
    label: GATK-CollectAlignmentSummaryMetrics
    'sbg:x': -63.445003509521484
    'sbg:y': -424.1755676269531
  - id: gatk_collect_hs_metrics_4_1_8_0
    in:
      - id: input
        source: input
      - id: bait_intervals
        source: bait_intervals
      - id: target_intervals
        source: target_intervals
      - id: reference
        source: reference
    out:
      - id: hs_metrics
      - id: per_base_coverage_out
      - id: per_target_coverage_out
    run: >-
      command_line_tools/gatk_collect_hs_metrics_4.1.8.0/gatk_collect_hs_metrics_4.1.8.0.cwl
    label: GATK-CollectHsMetrics
    'sbg:x': -61.321895599365234
    'sbg:y': -194.27346801757812
  - id: gatk_collect_insert_size_metrics_4_1_8_0
    in:
      - id: input
        source: input
      - id: histogram_file
        default: histogram.pdf
    out:
      - id: insert_size_metrics
      - id: histogram_file_out
    run: >-
      command_line_tools/gatk_collect_insert_size_metrics_4.1.8.0/gatk_collect_insert_size_metrics_4.1.8.0.cwl
    label: GATK-CollectInsertSizeMetrics
    'sbg:x': -52.185672760009766
    'sbg:y': 62.291622161865234
requirements: []
'dct:contributor':
  - class: 'foaf:Organization'
    'foaf:member':
      - class: 'foaf:Person'
        'foaf:mbox': 'mailto:murphyc4@mskcc.org'
        'foaf:name': Charles Murphy
    'foaf:name': Memorial Sloan Kettering Cancer Center
'dct:creator':
  - class: 'foaf:Organization'
    'foaf:member':
      - class: 'foaf:Person'
        'foaf:mbox': 'mailto:murphyc4@mskcc.org'
        'foaf:name': Charles Murphy
    'foaf:name': Memorial Sloan Kettering Cancer Center
'doap:release':
  - class: 'doap:Version'
    'doap:name': Tool Name
    'doap:revision': Tool Version
