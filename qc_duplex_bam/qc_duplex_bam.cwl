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
  - id: plot
    type: boolean?
    doc: Also output plots of the data.
    'sbg:x': -376.41387939453125
    'sbg:y': 1510.7532958984375
  - id: minor_threshold
    type: float?
    doc: Minor contamination threshold for bad sample.
    'sbg:x': -375.43487548828125
    'sbg:y': 1803.476806640625
  - id: json
    type: boolean?
    doc: Also output data in JSON format.
    'sbg:x': -375.43487548828125
    'sbg:y': 1945.246826171875
  - id: sequence_qc_min_basq
    type: int?
    'sbg:x': -1374.6207275390625
    'sbg:y': -798.4012451171875
  - id: sequence_qc_min_mapq
    type: int?
    'sbg:x': -1380.14501953125
    'sbg:y': -951.69873046875
  - id: sequence_qc_threshold
    type: float?
    'sbg:x': -1384.2880859375
    'sbg:y': -1102.2271728515625
  - id: sequence_qc_truncate
    type: int?
    'sbg:x': -1382.9071044921875
    'sbg:y': -1252.7550048828125
  - id: hsmetrics_minimum_mapping_quality
    type: int?
    'sbg:x': -1369.7769775390625
    'sbg:y': 395.4126281738281
  - id: hsmetrics_minimum_base_quality
    type: int?
    'sbg:x': -1380.285400390625
    'sbg:y': 511.57122802734375
  - id: hsmetrics_coverage_cap
    type: int?
    'sbg:x': -1378.1395263671875
    'sbg:y': 628.438232421875
  - id: prefix
    type: string?
    'sbg:x': -375.210205078125
    'sbg:y': 2084.396728515625
  - id: vcf_file
    type: File
    'sbg:x': -1391.8258056640625
    'sbg:y': 991.7987670898438
  - id: sample_sex
    type:
      - 'null'
      - type: array
        items: string
        inputBinding:
          position: 0
          prefix: '--sample-sex'
    'sbg:x': -1041.0224609375
    'sbg:y': 1003.9751586914062
  - id: sample_group
    type:
      - 'null'
      - type: array
        items: string
        inputBinding:
          position: 0
          prefix: '--sample-group'
    'sbg:x': -840.3492431640625
    'sbg:y': 1296.849609375
  - id: major_threshold
    type: float?
    'sbg:x': -107.41658782958984
    'sbg:y': 713.9224853515625
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
  - id: sequence_qc_noise_positions
    outputSource:
      - calculate_noise/sequence_qc_noise_positions
    type:
      - File
      - type: array
        items: File
    'sbg:x': 307.75909423828125
    'sbg:y': -1031.4013671875
  - id: sequence_qc_noise_n
    outputSource:
      - calculate_noise/sequence_qc_noise_n
    type:
      - File
      - type: array
        items: File
    'sbg:x': 312.423828125
    'sbg:y': -913.6166381835938
  - id: sequence_qc_noise_del
    outputSource:
      - calculate_noise/sequence_qc_noise_del
    type:
      - File
      - type: array
        items: File
    'sbg:x': 313.5899963378906
    'sbg:y': -794.6656494140625
  - id: sequence_qc_noise_acgt
    outputSource:
      - calculate_noise/sequence_qc_noise_acgt
    type:
      - File
      - type: array
        items: File
    'sbg:x': 312.423828125
    'sbg:y': -669.8837280273438
  - id: sequence_qc_figures
    outputSource:
      - calculate_noise/sequence_qc_figures
    type:
      - File
      - type: array
        items: File
    'sbg:x': 311.25762939453125
    'sbg:y': -539.2709350585938
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
  - id: sequence_qc_pileup
    outputSource:
      - calculate_noise/sequence_qc_pileup
    type:
      - File
      - type: array
        items: File
    'sbg:x': 303.6086120605469
    'sbg:y': -1159.51220703125
  - id: sequence_qc_noise_by_substitution
    outputSource:
      - calculate_noise/sequence_qc_noise_by_substitution
    type: File
    'sbg:x': 686.90771484375
    'sbg:y': -695.8947143554688
  - id: biometrics_extract_pickle
    outputSource:
      - biometrics_extract_0_2_11/biometrics_extract_pickle
    type: File
    'sbg:x': -268.1592712402344
    'sbg:y': 1079.905517578125
  - id: biometrics_major_plot
    outputSource:
      - biometrics_major_0_2_11/biometrics_major_plot
    type: File?
    'sbg:x': 489.82940673828125
    'sbg:y': 697.122314453125
  - id: biometrics_major_json
    outputSource:
      - biometrics_major_0_2_11/biometrics_major_json
    type: File?
    'sbg:x': 691.9446411132812
    'sbg:y': 820.0875244140625
  - id: biometrics_major_csv
    outputSource:
      - biometrics_major_0_2_11/biometrics_major_csv
    type: File
    'sbg:x': 441.7740478515625
    'sbg:y': 886.5169677734375
steps:
  - id: bam_qc_stats_pool_a
    in:
      - id: input
        source:
          - duplex_bam
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
    'sbg:x': -201.51846313476562
    'sbg:y': -271.1477355957031
  - id: calculate_noise
    in:
      - id: reference
        source: reference
      - id: bam_file
        source: duplex_bam
      - id: bed_file
        source: noise_sites_bed
      - id: sample_id
        source: sample_name
      - id: threshold
        source: sequence_qc_threshold
      - id: truncate
        source: sequence_qc_truncate
      - id: min_mapq
        source: sequence_qc_min_mapq
      - id: min_basq
        source: sequence_qc_min_basq
    out:
      - id: sequence_qc_pileup
      - id: sequence_qc_noise_positions
      - id: sequence_qc_noise_by_substitution
      - id: sequence_qc_noise_acgt
      - id: sequence_qc_noise_n
      - id: sequence_qc_noise_del
      - id: sequence_qc_figures
    run: ../command_line_tools/sequence_qc/0.2.3/sequence_qc_0.2.3.cwl
    'sbg:x': -205.99472045898438
    'sbg:y': -716.7506103515625
  - id: bam_qc_stats_pool_b
    in:
      - id: input
        source:
          - duplex_bam
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
    'sbg:x': -200.22406005859375
    'sbg:y': 144.43153381347656
  - id: biometrics_minor
    in:
      - id: input
        source:
          - biometrics_extract_0_2_11/biometrics_extract_pickle
      - id: minor_threshold
        source: minor_threshold
      - id: prefix
        default: duplex
        source: prefix
      - id: plot
        default: false
        source: plot
      - id: json
        default: true
        source: json
    out:
      - id: biometrics_minor_csv
      - id: biometrics_minor_json
      - id: biometrics_minor_plot
      - id: biometrics_minor_sites_plot
    run: ../command_line_tools/biometrics_minor/0.2.11/biometrics_minor.cwl
    'sbg:x': 464.28485107421875
    'sbg:y': 1208.646240234375
  - id: biometrics_extract_0_2_11
    in:
      - id: sample_bam
        source:
          - duplex_bam
      - id: sample_sex
        source:
          - sample_sex
      - id: sample_group
        source:
          - sample_group
      - id: sample_name
        source:
          - sample_name
      - id: fafile
        source: reference
      - id: vcf_file
        source: vcf_file
    out:
      - id: biometrics_extract_pickle
    run: >-
      ../../cwl-commandlinetools/biometrics_extract/0.2.11/biometrics_extract.cwl
    'sbg:x': -375.4969177246094
    'sbg:y': 820.4859008789062
  - id: biometrics_major_0_2_11
    in:
      - id: input
        source:
          - biometrics_extract_0_2_11/biometrics_extract_pickle
      - id: major_threshold
        source: major_threshold
      - id: prefix
        source: prefix
      - id: plot
        source: plot
      - id: json
        source: json
    out:
      - id: biometrics_major_csv
      - id: biometrics_major_json
      - id: biometrics_major_plot
    run: ../command_line_tools/biometrics_major/0.2.11/biometrics_major.cwl
    'sbg:x': 245.3122100830078
    'sbg:y': 773.4448852539062
requirements:
  - class: SubworkflowFeatureRequirement
