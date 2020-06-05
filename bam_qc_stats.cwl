class: Workflow
cwlVersion: v1.0
id: bam_qc_stats
label: bam_qc_stats
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: input
    type: File
    'sbg:x': -654.76123046875
    'sbg:y': -419.1558532714844
  - id: referece_fasta
    type: File
    'sbg:x': -649.5545043945312
    'sbg:y': 696.1437377929688
  - id: gene_list
    type: File
    'sbg:x': -652.7678833007812
    'sbg:y': 162.7410888671875
  - id: target_intervals
    type: File?
    'sbg:x': -655.9135131835938
    'sbg:y': -267.00360107421875
  - id: bait_intervals_1
    type: File
    'sbg:x': -656.9841918945312
    'sbg:y': -118.12298583984375
  - id: bed_file
    type: File
    'sbg:x': -653.0328979492188
    'sbg:y': 30.3909912109375
  - id: coverage_threshold
    type: int
    'sbg:x': -650.0853881835938
    'sbg:y': 286.525390625
  - id: min_map_quality
    type: int
    'sbg:x': -649.2180786132812
    'sbg:y': 547.4801635742188
  - id: minimum_base_quality
    type: int?
    'sbg:x': -648.0210571289062
    'sbg:y': 419.6796875
  - id: program_list
    type: 'string[]?'
    'sbg:exposed': true
outputs:
  - id: hs_metrics_file
    outputSource:
      - picard_hsmetrics_2_8_1/hs_metrics_file
    type: File?
    'sbg:x': 410.7783508300781
    'sbg:y': -69.20183563232422
  - id: alignment_summary_metrics
    outputSource:
      - picard_collectmultiplemetrics_2_8_1/alignment_summary_metrics
    type: File?
    'sbg:x': 766.4902954101562
    'sbg:y': -1252.3756103515625
  - id: bait_bias_detail_metrics
    outputSource:
      - picard_collectmultiplemetrics_2_8_1/bait_bias_detail_metrics
    type: File?
    'sbg:x': 427.6467590332031
    'sbg:y': -622.5969848632812
  - id: bait_bias_summary_metrics
    outputSource:
      - picard_collectmultiplemetrics_2_8_1/bait_bias_summary_metrics
    type: File?
    'sbg:x': 420.8084716796875
    'sbg:y': -766.6268310546875
  - id: base_distribution_by_cycle_metrics
    outputSource:
      - picard_collectmultiplemetrics_2_8_1/base_distribution_by_cycle_metrics
    type: File?
    'sbg:x': 762.4103393554688
    'sbg:y': -260.4105529785156
  - id: error_summary_metrics
    outputSource:
      - picard_collectmultiplemetrics_2_8_1/error_summary_metrics
    type: File?
    'sbg:x': 416.6467590332031
    'sbg:y': -901.1367797851562
  - id: gc_bias_detail_metrics
    outputSource:
      - picard_collectmultiplemetrics_2_8_1/gc_bias_detail_metrics
    type: File?
    'sbg:x': 417.3233947753906
    'sbg:y': -1029.97509765625
  - id: gc_bias_pdf
    outputSource:
      - picard_collectmultiplemetrics_2_8_1/gc_bias_pdf
    type: File?
    'sbg:x': 417
    'sbg:y': -1159.2984619140625
  - id: gc_bias_summary_metrics
    outputSource:
      - picard_collectmultiplemetrics_2_8_1/gc_bias_summary_metrics
    type: File?
    'sbg:x': 406.39764404296875
    'sbg:y': -1303.6019287109375
  - id: insert_size_histogram_pdf
    outputSource:
      - picard_collectmultiplemetrics_2_8_1/insert_size_histogram_pdf
    type: File?
    'sbg:x': 766.485107421875
    'sbg:y': -395.5248107910156
  - id: insert_size_metrics
    outputSource:
      - picard_collectmultiplemetrics_2_8_1/insert_size_metrics
    type: File?
    'sbg:x': 760.8084716796875
    'sbg:y': -536.0397338867188
  - id: pre_adapter_detail_metrics
    outputSource:
      - picard_collectmultiplemetrics_2_8_1/pre_adapter_detail_metrics
    type: File?
    'sbg:x': 421.13641357421875
    'sbg:y': -328.93975830078125
  - id: pre_adapter_summary_metrics
    outputSource:
      - picard_collectmultiplemetrics_2_8_1/pre_adapter_summary_metrics
    type: File?
    'sbg:x': 420.8131103515625
    'sbg:y': -469.0354309082031
  - id: quality_by_cycle_metrics
    outputSource:
      - picard_collectmultiplemetrics_2_8_1/quality_by_cycle_metrics
    type: File?
    'sbg:x': 766.0000610351562
    'sbg:y': -820.8134155273438
  - id: quality_by_cycle_pdf
    outputSource:
      - picard_collectmultiplemetrics_2_8_1/quality_by_cycle_pdf
    type: File?
    'sbg:x': 759.9999389648438
    'sbg:y': -670.0671997070312
  - id: quality_distribution_metrics
    outputSource:
      - picard_collectmultiplemetrics_2_8_1/quality_distribution_metrics
    type: File?
    'sbg:x': 763
    'sbg:y': -961.251708984375
  - id: quality_distribution_pdf
    outputSource:
      - picard_collectmultiplemetrics_2_8_1/quality_distribution_pdf
    type: File?
    'sbg:x': 762
    'sbg:y': -1094.481689453125
  - id: base_distribution_by_cycle_pdf
    outputSource:
      - picard_collectmultiplemetrics_2_8_1/base_distribution_by_cycle_pdf
    type: File?
    'sbg:x': 779.8233032226562
    'sbg:y': -127.81122589111328
  - id: read_counts
    outputSource:
      - waltz_count_reads/read_counts
    type: File
    'sbg:x': 409.0119323730469
    'sbg:y': 82.19341278076172
  - id: fragment_sizes
    outputSource:
      - waltz_count_reads/fragment_sizes
    type: File
    'sbg:x': 407.8551025390625
    'sbg:y': 197.87574768066406
  - id: covered_regions
    outputSource:
      - waltz_count_reads/covered_regions
    type: File
    'sbg:x': 406.69830322265625
    'sbg:y': 321.6558532714844
  - id: pileup_without_duplicates
    outputSource:
      - waltz_pileupmetrics/pileup_without_duplicates
    type: File
    'sbg:x': 408.73077392578125
    'sbg:y': 487.15863037109375
  - id: pileup
    outputSource:
      - waltz_pileupmetrics/pileup
    type: File
    'sbg:x': 405.4356689453125
    'sbg:y': 631.0457153320312
  - id: intervals_without_duplicates
    outputSource:
      - waltz_pileupmetrics/intervals_without_duplicates
    type: File
    'sbg:x': 398.84539794921875
    'sbg:y': 768.342529296875
  - id: intervals
    outputSource:
      - waltz_pileupmetrics/intervals
    type: File
    'sbg:x': 406.5340270996094
    'sbg:y': 915.5183715820312
steps:
  - id: picard_collectmultiplemetrics_2_8_1
    in:
      - id: input
        source: input
      - id: program_list
        linkMerge: merge_nested
        default:
          - CollectGcBiasMetrics
        source:
          - program_list
      - id: intervals_file
        source: target_intervals
    out:
      - id: alignment_summary_metrics
      - id: bait_bias_detail_metrics
      - id: bait_bias_summary_metrics
      - id: base_distribution_by_cycle_metrics
      - id: base_distribution_by_cycle_pdf
      - id: error_summary_metrics
      - id: gc_bias_detail_metrics
      - id: gc_bias_pdf
      - id: gc_bias_summary_metrics
      - id: insert_size_histogram_pdf
      - id: insert_size_metrics
      - id: pre_adapter_detail_metrics
      - id: pre_adapter_summary_metrics
      - id: quality_by_cycle_metrics
      - id: quality_by_cycle_pdf
      - id: quality_distribution_metrics
      - id: quality_distribution_pdf
    run: >-
      command_line_tools/picard_collectmultiplemetric_2.8.1/picard_collectmultiplemetrics_2-8-1.cwl
    label: picard_collectmultiplemetrices_2.8.1
    'sbg:x': -52.132652282714844
    'sbg:y': -440.153076171875
  - id: picard_hsmetrics_2_8_1
    in:
      - id: bait_intervals
        source: bait_intervals_1
      - id: minimum_mapping_quality
        source: min_map_quality
      - id: minimum_base_quality
        source: minimum_base_quality
      - id: target_intervals
        source: target_intervals
      - id: input
        source: input
    out:
      - id: hs_metrics_file
    run: command_line_tools/picard_hsmetrics_2.8.1/picard_hsmetrics_2.8.1.cwl
    label: picard_hsmetrics_2.8.1
    scatter:
      - per_target_coverage
    'sbg:x': -47.9211311340332
    'sbg:y': -87
  - id: waltz_pileupmetrics
    in:
      - id: bam
        source: input
      - id: referece_fasta
        source: referece_fasta
      - id: min_map_quality
        source: min_map_quality
      - id: bed_file
        source: bed_file
    out:
      - id: pileup
      - id: pileup_without_duplicates
      - id: intervals
      - id: intervals_without_duplicates
    run: >-
      command_line_tools/waltz_pileupmatrices_3.1.1/waltz_pileupmatrices_3.1.1.cwl
    label: waltz_pileupmetrics
    'sbg:x': -30.37705421447754
    'sbg:y': 542.822021484375
  - id: waltz_count_reads
    in:
      - id: bam
        source: input
      - id: gene_list
        source: gene_list
      - id: coverage_threshold
        source: coverage_threshold
      - id: bed_file
        source: bed_file
    out:
      - id: covered_regions
      - id: fragment_sizes
      - id: read_counts
    run: command_line_tools/waltz_count_reads_3.1.1/waltz_count_reads_3.1.1.cwl
    label: waltz_count_reads
    'sbg:x': -41.6377067565918
    'sbg:y': 224.30157470703125
requirements:
  - class: ScatterFeatureRequirement
