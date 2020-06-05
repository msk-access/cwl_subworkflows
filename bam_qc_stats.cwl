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
    'sbg:x': 407.33837890625
    'sbg:y': -246.0542449951172
  - id: bait_bias_detail_metrics
    outputSource:
      - picard_collectmultiplemetrics_2_8_1/bait_bias_detail_metrics
    type: File?
    'sbg:x': 412.89154052734375
    'sbg:y': -347.9154052734375
  - id: bait_bias_summary_metrics
    outputSource:
      - picard_collectmultiplemetrics_2_8_1/bait_bias_summary_metrics
    type: File?
    'sbg:x': 406.8937072753906
    'sbg:y': -436.60736083984375
  - id: base_distribution_by_cycle_metrics
    outputSource:
      - picard_collectmultiplemetrics_2_8_1/base_distribution_by_cycle_metrics
    type: File?
    'sbg:x': 405.4989013671875
    'sbg:y': -519.9609375
  - id: error_summary_metrics
    outputSource:
      - picard_collectmultiplemetrics_2_8_1/error_summary_metrics
    type: File?
    'sbg:x': 404
    'sbg:y': -619.6095581054688
  - id: gc_bias_detail_metrics
    outputSource:
      - picard_collectmultiplemetrics_2_8_1/gc_bias_detail_metrics
    type: File?
    'sbg:x': 400.8343811035156
    'sbg:y': -748.3134155273438
  - id: gc_bias_pdf
    outputSource:
      - picard_collectmultiplemetrics_2_8_1/gc_bias_pdf
    type: File?
    'sbg:x': 399.7497863769531
    'sbg:y': -865.4500732421875
  - id: gc_bias_summary_metrics
    outputSource:
      - picard_collectmultiplemetrics_2_8_1/gc_bias_summary_metrics
    type: File?
    'sbg:x': 394.1788635253906
    'sbg:y': -1051.360107421875
  - id: insert_size_histogram_pdf
    outputSource:
      - picard_collectmultiplemetrics_2_8_1/insert_size_histogram_pdf
    type: File?
    'sbg:x': 768.39794921875
    'sbg:y': -240.84767150878906
  - id: insert_size_metrics
    outputSource:
      - picard_collectmultiplemetrics_2_8_1/insert_size_metrics
    type: File?
    'sbg:x': 769.39794921875
    'sbg:y': -351.4950256347656
  - id: pre_adapter_detail_metrics
    outputSource:
      - picard_collectmultiplemetrics_2_8_1/pre_adapter_detail_metrics
    type: File?
    'sbg:x': 770.9332275390625
    'sbg:y': -438.32501220703125
  - id: pre_adapter_summary_metrics
    outputSource:
      - picard_collectmultiplemetrics_2_8_1/pre_adapter_summary_metrics
    type: File?
    'sbg:x': 753.716552734375
    'sbg:y': -522.5025634765625
  - id: quality_by_cycle_metrics
    outputSource:
      - picard_collectmultiplemetrics_2_8_1/quality_by_cycle_metrics
    type: File?
    'sbg:x': 749.2518310546875
    'sbg:y': -622.7972412109375
  - id: quality_by_cycle_pdf
    outputSource:
      - picard_collectmultiplemetrics_2_8_1/quality_by_cycle_pdf
    type: File?
    'sbg:x': 760.6044311523438
    'sbg:y': -739.6561889648438
  - id: quality_distribution_metrics
    outputSource:
      - picard_collectmultiplemetrics_2_8_1/quality_distribution_metrics
    type: File?
    'sbg:x': 768.4923706054688
    'sbg:y': -855.4446411132812
  - id: quality_distribution_pdf
    outputSource:
      - picard_collectmultiplemetrics_2_8_1/quality_distribution_pdf
    type: File?
    'sbg:x': 761.4923706054688
    'sbg:y': -970.2330322265625
  - id: base_distribution_by_cycle_pdf
    outputSource:
      - picard_collectmultiplemetrics_2_8_1/base_distribution_by_cycle_pdf
    type: File?
    'sbg:x': 396.4320068359375
    'sbg:y': -957.953369140625
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
    'sbg:x': -17.31117057800293
    'sbg:y': 539.4144897460938
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
