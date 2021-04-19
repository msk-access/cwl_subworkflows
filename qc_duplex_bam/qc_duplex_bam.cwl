class: Workflow
cwlVersion: v1.0
id: qc_duplex
label: qc_duplex
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: reference
    type: File
    doc: 'Path to reference fasta, containing all regions in bed_file'
    secondaryFiles:
      - ^.fasta.fai
    'sbg:x': -1389.233154296875
    'sbg:y': -472.8433837890625
  - id: duplex_bam
    type:
      - File
      - type: array
        items: File
    label: duplex_bam
    secondaryFiles:
      - ^.bai
    'sbg:x': -1188.919921875
    'sbg:y': 746.09033203125
  - id: pool_a_target_intervals
    type: File
    label: pool_a_target_intervals
    'sbg:x': -1369.597900390625
    'sbg:y': -305.27490234375
  - id: pool_a_bait_intervals
    type: File
    label: pool_a_bait_intervals
    'sbg:x': -1376.3414306640625
    'sbg:y': -157
  - id: pool_b_target_intervals
    type: File
    label: pool_b_target_intervals
    'sbg:x': -1369.759765625
    'sbg:y': -12.322619438171387
  - id: pool_b_bait_intervals
    type: File
    label: pool_b_bait_intervals
    'sbg:x': -1365.1011962890625
    'sbg:y': 130.08450317382812
  - id: noise_sites_bed
    type: File
    label: noise_sites_bed
    doc: >-
      Path to BED file containing regions over which to calculate noise
      [required]
    'sbg:x': -1380.5565185546875
    'sbg:y': -635.455810546875
  - id: pool_b_bait_bed
    type: File?
    label: pool_b_bait_bed
    doc: BED file containing the intervals to be queried.
    'sbg:x': -1365.263916015625
    'sbg:y': 410.41717529296875
  - id: vcf_file
    type: File
    doc: VCF file containing the SNPs to be queried.
    'sbg:x': -1373.5452880859375
    'sbg:y': 274.6005859375
  - id: sample_type
    type:
      - 'null'
      - string
      - type: array
        items: string
    doc: 'Sample types: Normal or Tumor.'
    'sbg:x': -1181.2960205078125
    'sbg:y': 899.139404296875
  - id: sample_sex
    type:
      - 'null'
      - string
      - type: array
        items: string
    doc: Expected sample sex (i.e. M or F).
    'sbg:x': -1187.8372802734375
    'sbg:y': 1063.1763916015625
  - id: sample_name
    type:
      - 'null'
      - string
      - type: array
        items: string
    doc: >-
      Sample name. If not specified, sample name is automatically figured out
      from the BAM file.
    'sbg:x': -1184.7547607421875
    'sbg:y': 1249.0025634765625
  - id: sample_group
    type:
      - 'null'
      - string
      - type: array
        items: string
    doc: The sample group (e.g. the sample patient ID).
    'sbg:x': -1183.7547607421875
    'sbg:y': 1409.03955078125
  - id: min_mapping_quality
    type: int?
    doc: Minimum mapping quality of reads to be used for pileup.
    'sbg:x': -402.0198059082031
    'sbg:y': 972.8847045898438
  - id: min_homozygous_thresh
    type: float?
    doc: Minimum threshold to define homozygous.
    'sbg:x': -398.8325500488281
    'sbg:y': 1101.96923828125
  - id: min_coverage
    type: int?
    doc: Minimum coverage to count a site.
    'sbg:x': -387.6770935058594
    'sbg:y': 1226.272705078125
  - id: min_base_quality
    type: int?
    doc: Minimum base quality of reads to be used for pileup.
    'sbg:x': -382.89617919921875
    'sbg:y': 1347.3890380859375
outputs:
  - id: biometrics_minor_csv
    outputSource:
      - biometrics_minor/biometrics_minor_csv
    type:
      - File
      - type: array
        items: File
    'sbg:x': 800.5043334960938
    'sbg:y': 1475.69189453125
  - id: biometrics_minor_plot
    outputSource:
      - biometrics_minor/biometrics_minor_plot
    type:
      - 'null'
      - File
      - type: array
        items: File
    'sbg:x': 793.9630126953125
    'sbg:y': 1179.9027099609375
  - id: biometrics_minor_json
    outputSource:
      - biometrics_minor/biometrics_minor_json
    type:
      - 'null'
      - File
      - type: array
        items: File
    'sbg:x': 798.0455932617188
    'sbg:y': 1334.6092529296875
  - id: biometrics_minor_sites_plot
    outputSource:
      - biometrics_minor/biometrics_minor_sites_plot
    type:
      - 'null'
      - File
      - type: array
        items: File
    'sbg:x': 788.9630126953125
    'sbg:y': 1020.7374877929688
  - id: biometrics_major_csv
    outputSource:
      - biometrics_major/biometrics_major_csv
    type:
      - File
      - type: array
        items: File
    'sbg:x': 768.3390502929688
    'sbg:y': 872.6092529296875
  - id: biometrics_major_json
    outputSource:
      - biometrics_major/biometrics_major_json
    type:
      - 'null'
      - File
      - type: array
        items: File
    'sbg:x': 779.9630126953125
    'sbg:y': 721.8201293945312
  - id: biometrics_major_plot
    outputSource:
      - biometrics_major/biometrics_major_plot
    type:
      - 'null'
      - File
      - type: array
        items: File
    'sbg:x': 773.4216918945312
    'sbg:y': 582.1961669921875
  - id: sequence_qc_noise_positions
    outputSource:
      - calculate_noise_0_1_16/sequence_qc_noise_positions
    type:
      - File
      - type: array
        items: File
    'sbg:x': 307.75909423828125
    'sbg:y': -1031.4013671875
  - id: sequence_qc_noise_n
    outputSource:
      - calculate_noise_0_1_16/sequence_qc_noise_n
    type:
      - File
      - type: array
        items: File
    'sbg:x': 312.423828125
    'sbg:y': -913.6166381835938
  - id: sequence_qc_noise_del
    outputSource:
      - calculate_noise_0_1_16/sequence_qc_noise_del
    type:
      - File
      - type: array
        items: File
    'sbg:x': 313.5899963378906
    'sbg:y': -794.6656494140625
  - id: sequence_qc_noise_acgt
    outputSource:
      - calculate_noise_0_1_16/sequence_qc_noise_acgt
    type:
      - File
      - type: array
        items: File
    'sbg:x': 312.423828125
    'sbg:y': -669.8837280273438
  - id: sequence_qc_figures
    outputSource:
      - calculate_noise_0_1_16/sequence_qc_figures
    type:
      - File
      - type: array
        items: File
    'sbg:x': 311.25762939453125
    'sbg:y': -539.2709350585938
  - id: biometrics_extract_pickle
    outputSource:
      - biometrics_extract/biometrics_extract_pickle
    type:
      - File
      - type: array
        items: File
    'sbg:x': 804.253662109375
    'sbg:y': 1651.220947265625
  - id: gatk_collect_alignment_summary_metrics_txt_pool_b
    outputSource:
      - bam_qc_stats_pool_b/gatk_collect_alignment_summary_metrics_txt
    type:
      - File
      - type: array
        items: File
    label: gatk_collect_alignment_summary_metrics_txt_pool_b
    'sbg:x': 335.32611083984375
    'sbg:y': 490.64373779296875
  - id: gatk_collect_hs_metrics_per_base_coverage_txt_pool_b
    outputSource:
      - bam_qc_stats_pool_b/gatk_collect_hs_metrics_per_base_coverage_txt
    type:
      - File
      - type: array
        items: File
    label: gatk_collect_hs_metrics_per_base_coverage_txt_pool_b
    'sbg:x': 333.6207580566406
    'sbg:y': 371.2675476074219
  - id: gatk_collect_hs_metrics_per_target_coverage_txt_pool_b
    outputSource:
      - bam_qc_stats_pool_b/gatk_collect_hs_metrics_per_target_coverage_txt
    type:
      - File
      - type: array
        items: File
    label: gatk_collect_hs_metrics_per_target_coverage_txt_pool_b
    'sbg:x': 330.7894287109375
    'sbg:y': 255.84107971191406
  - id: gatk_collect_hs_metrics_txt_pool_b
    outputSource:
      - bam_qc_stats_pool_b/gatk_collect_hs_metrics_txt
    type:
      - File
      - type: array
        items: File
    label: gatk_collect_hs_metrics_txt_pool_b
    'sbg:x': 334.6937255859375
    'sbg:y': 138.71177673339844
  - id: gatk_collect_insert_size_metrics_histogram_pdf_pool_b
    outputSource:
      - bam_qc_stats_pool_b/gatk_collect_insert_size_metrics_histogram_pdf
    type:
      - File
      - type: array
        items: File
    label: gatk_collect_insert_size_metrics_histogram_pdf_pool_b
    'sbg:x': 337.2966003417969
    'sbg:y': 20.281023025512695
  - id: gatk_collect_insert_size_metrics_txt_pool_b
    outputSource:
      - bam_qc_stats_pool_b/gatk_collect_insert_size_metrics_txt
    type:
      - File
      - type: array
        items: File
    label: gatk_collect_insert_size_metrics_txt_pool_b
    'sbg:x': 329.48797607421875
    'sbg:y': -99.45116424560547
  - id: gatk_collect_alignment_summary_metrics_txt_pool_a
    outputSource:
      - bam_qc_stats_pool_a/gatk_collect_alignment_summary_metrics_txt
    type:
      - File
      - type: array
        items: File
    label: gatk_collect_alignment_summary_metrics_txt_pool_a
    'sbg:x': 732.9334106445312
    'sbg:y': 143.91751098632812
  - id: gatk_collect_hs_metrics_per_base_coverage_txt_pool_a
    outputSource:
      - bam_qc_stats_pool_a/gatk_collect_hs_metrics_per_base_coverage_txt
    type:
      - File
      - type: array
        items: File
    label: gatk_collect_hs_metrics_per_base_coverage_txt_pool_a
    'sbg:x': 725.124755859375
    'sbg:y': 25.486770629882812
  - id: gatk_collect_hs_metrics_per_target_coverage_txt_pool_a
    outputSource:
      - bam_qc_stats_pool_a/gatk_collect_hs_metrics_per_target_coverage_txt
    type:
      - File
      - type: array
        items: File
    label: gatk_collect_hs_metrics_per_target_coverage_txt_pool_a
    'sbg:x': 710.8089599609375
    'sbg:y': -92.94397735595703
  - id: gatk_collect_hs_metrics_txt_pool_a
    outputSource:
      - bam_qc_stats_pool_a/gatk_collect_hs_metrics_txt
    type:
      - File
      - type: array
        items: File
    label: gatk_collect_hs_metrics_txt_pool_a
    'sbg:x': 723.8233032226562
    'sbg:y': -208.7718505859375
  - id: gatk_collect_insert_size_metrics_histogram_pdf_pool_a
    outputSource:
      - bam_qc_stats_pool_a/gatk_collect_insert_size_metrics_histogram_pdf
    type:
      - File
      - type: array
        items: File
    label: gatk_collect_insert_size_metrics_histogram_pdf_pool_a
    'sbg:x': 712.1104125976562
    'sbg:y': -325.9011535644531
  - id: gatk_collect_insert_size_metrics_txt_pool_a
    outputSource:
      - bam_qc_stats_pool_a/gatk_collect_insert_size_metrics_txt
    type:
      - File
      - type: array
        items: File
    label: gatk_collect_insert_size_metrics_txt_pool_a
    'sbg:x': 712.1104125976562
    'sbg:y': -446.9347839355469
steps:
  - id: bam_qc_stats_pool_a
    in:
      - id: input
        source: duplex_bam
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
    'sbg:x': -201.51846313476562
    'sbg:y': -271.1477355957031
  - id: calculate_noise_0_1_16
    in:
      - id: reference
        source: reference
      - id: bam_file
        source: duplex_bam
      - id: bed_file
        source: noise_sites_bed
      - id: sample_id
        source: sample_name
    out:
      - id: sequence_qc_pileup
      - id: sequence_qc_noise_positions
      - id: sequence_qc_noise_acgt
      - id: sequence_qc_noise_n
      - id: sequence_qc_noise_del
      - id: sequence_qc_figures
    run: ../command_line_tools/sequence_qc/0.1.19/sequence_qc_0.1.19.cwl
    'sbg:x': -205.99472045898438
    'sbg:y': -716.7506103515625
  - id: bam_qc_stats_pool_b
    in:
      - id: input
        source: duplex_bam
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
    'sbg:x': -200.22406005859375
    'sbg:y': 144.43153381347656
  - id: biometrics_extract
    in:
      - id: sample_bam
        linkMerge: merge_nested
        source:
          - duplex_bam
      - id: sample_type
        linkMerge: merge_nested
        source:
          - sample_type
      - id: sample_sex
        linkMerge: merge_nested
        source:
          - sample_sex
      - id: sample_group
        linkMerge: merge_nested
        source:
          - sample_group
      - id: sample_name
        linkMerge: merge_nested
        source:
          - sample_name
      - id: fafile
        source: reference
      - id: vcf_file
        source: vcf_file
      - id: bed_file
        source: pool_b_bait_bed
      - id: min_mapping_quality
        source: min_mapping_quality
      - id: min_base_quality
        source: min_base_quality
      - id: min_coverage
        source: min_coverage
      - id: min_homozygous_thresh
        source: min_homozygous_thresh
    out:
      - id: biometrics_extract_pickle
    run: ../command_line_tools/biometrics_extract/0.2.8/biometrics_extract_0.2.8.cwl
    'sbg:x': -176.97422790527344
    'sbg:y': 734.6185302734375
  - id: biometrics_minor
    in:
      - id: input
        source:
          - biometrics_extract/biometrics_extract_pickle
      - id: plot
        default: true
      - id: json
        default: true
    out:
      - id: biometrics_minor_csv
      - id: biometrics_minor_json
      - id: biometrics_minor_plot
      - id: biometrics_minor_sites_plot
    run: ../command_line_tools/biometrics_minor/0.2.8/biometrics_minor_0.2.8.cwl
    'sbg:x': 464.28485107421875
    'sbg:y': 1208.646240234375
  - id: biometrics_major
    in:
      - id: input
        source:
          - biometrics_extract/biometrics_extract_pickle
      - id: plot
        default: true
      - id: json
        default: true
    out:
      - id: biometrics_major_csv
      - id: biometrics_major_json
      - id: biometrics_major_plot
    run: ../command_line_tools/biometrics_major/0.2.8/biometrics_major_0.2.8.cwl
    'sbg:x': 413.70654296875
    'sbg:y': 681.5068969726562
requirements:
  - class: SubworkflowFeatureRequirement
  - class: InlineJavascriptRequirement
  - class: StepInputExpressionRequirement
