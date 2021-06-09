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
    'sbg:x': 0
    'sbg:y': 902.734375
  - id: duplex_bam
    type:
      - File
      - type: array
        items: File
    label: duplex_bam
    secondaryFiles:
      - ^.bai
    'sbg:x': 0
    'sbg:y': 2290
  - id: pool_a_target_intervals
    type: File
    label: pool_a_target_intervals
    'sbg:x': 0
    'sbg:y': 1329.5546875
  - id: pool_a_bait_intervals
    type: File
    label: pool_a_bait_intervals
    'sbg:x': 0
    'sbg:y': 1436.265625
  - id: pool_b_target_intervals
    type: File
    label: pool_b_target_intervals
    'sbg:x': 0
    'sbg:y': 1116.1328125
  - id: pool_b_bait_intervals
    type: File
    label: pool_b_bait_intervals
    'sbg:x': 0
    'sbg:y': 1222.84375
  - id: noise_sites_bed
    type: File
    label: noise_sites_bed
    doc: >-
      Path to BED file containing regions over which to calculate noise
      [required]
    'sbg:x': 0
    'sbg:y': 1649.640625
  - id: sample_name
    type:
      - 'null'
      - string
      - type: array
        items: string
    doc: >-
      Sample name. If not specified, sample name is automatically figured out
      from the BAM file.
    'sbg:x': 0
    'sbg:y': 689.3125
  - id: plot
    type: boolean?
    doc: Also output plots of the data.
    'sbg:x': 0
    'sbg:y': 1542.953125
  - id: json
    type: boolean?
    doc: Also output data in JSON format.
    'sbg:x': 0
    'sbg:y': 1863.0859375
  - id: sequence_qc_min_basq
    type: int?
    'sbg:x': 0
    'sbg:y': 475.9375
  - id: sequence_qc_min_mapq
    type: int?
    'sbg:x': 0
    'sbg:y': 369.25
  - id: sequence_qc_threshold
    type: float?
    'sbg:x': 0
    'sbg:y': 262.5625
  - id: sequence_qc_truncate
    type: int?
    'sbg:x': 0
    'sbg:y': 155.875
  - id: hsmetrics_minimum_mapping_quality
    type: int?
    'sbg:x': 0
    'sbg:y': 1969.8203125
  - id: hsmetrics_minimum_base_quality
    type: int?
    'sbg:x': 0
    'sbg:y': 2076.5546875
  - id: hsmetrics_coverage_cap
    type: int?
    'sbg:x': 0
    'sbg:y': 2183.2890625
  - id: prefix
    type: string?
    'sbg:x': 0
    'sbg:y': 1009.421875
  - id: major_threshold
    type: float?
    'sbg:x': 0
    'sbg:y': 1756.3515625
  - id: vcf_file
    type: File
    'sbg:x': 0
    'sbg:y': 49.1875
  - id: sample_sex
    type: string?
    'sbg:x': 0
    'sbg:y': 582.625
  - id: sample_group
    type: string?
    'sbg:x': 0
    'sbg:y': 796.0234375
outputs:
  - id: sequence_qc_noise_positions
    outputSource:
      - calculate_noise/sequence_qc_noise_positions
    type:
      - File
      - type: array
        items: File
    'sbg:x': 982.1279296875
    'sbg:y': 106.6875
  - id: sequence_qc_noise_n
    outputSource:
      - calculate_noise/sequence_qc_noise_n
    type:
      - File
      - type: array
        items: File
    'sbg:x': 982.1279296875
    'sbg:y': 213.375
  - id: sequence_qc_noise_del
    outputSource:
      - calculate_noise/sequence_qc_noise_del
    type:
      - File
      - type: array
        items: File
    'sbg:x': 982.1279296875
    'sbg:y': 320.0625
  - id: sequence_qc_noise_acgt
    outputSource:
      - calculate_noise/sequence_qc_noise_acgt
    type:
      - File
      - type: array
        items: File
    'sbg:x': 982.1279296875
    'sbg:y': 533.5078125
  - id: sequence_qc_figures
    outputSource:
      - calculate_noise/sequence_qc_figures
    type:
      - File
      - type: array
        items: File
    'sbg:x': 982.1279296875
    'sbg:y': 640.2421875
  - id: gatk_collect_alignment_summary_metrics_txt_pool_b
    outputSource:
      - bam_qc_stats_pool_b/gatk_collect_alignment_summary_metrics_txt
    type:
      - File
      - type: array
        items: File
    label: gatk_collect_alignment_summary_metrics_txt_pool_b
    'sbg:x': 982.1279296875
    'sbg:y': 1814.3203125
  - id: gatk_collect_hs_metrics_per_base_coverage_txt_pool_b
    outputSource:
      - bam_qc_stats_pool_b/gatk_collect_hs_metrics_per_base_coverage_txt
    type:
      - File
      - type: array
        items: File
    label: gatk_collect_hs_metrics_per_base_coverage_txt_pool_b
    'sbg:x': 982.1279296875
    'sbg:y': 1600.8515625
  - id: gatk_collect_hs_metrics_per_target_coverage_txt_pool_b
    outputSource:
      - bam_qc_stats_pool_b/gatk_collect_hs_metrics_per_target_coverage_txt
    type:
      - File
      - type: array
        items: File
    label: gatk_collect_hs_metrics_per_target_coverage_txt_pool_b
    'sbg:x': 982.1279296875
    'sbg:y': 1387.3828125
  - id: gatk_collect_hs_metrics_txt_pool_b
    outputSource:
      - bam_qc_stats_pool_b/gatk_collect_hs_metrics_txt
    type:
      - File
      - type: array
        items: File
    label: gatk_collect_hs_metrics_txt_pool_b
    'sbg:x': 982.1279296875
    'sbg:y': 1173.9140625
  - id: gatk_collect_insert_size_metrics_histogram_pdf_pool_b
    outputSource:
      - bam_qc_stats_pool_b/gatk_collect_insert_size_metrics_histogram_pdf
    type:
      - File
      - type: array
        items: File
    label: gatk_collect_insert_size_metrics_histogram_pdf_pool_b
    'sbg:x': 982.1279296875
    'sbg:y': 960.4453125
  - id: gatk_collect_insert_size_metrics_txt_pool_b
    outputSource:
      - bam_qc_stats_pool_b/gatk_collect_insert_size_metrics_txt
    type:
      - File
      - type: array
        items: File
    label: gatk_collect_insert_size_metrics_txt_pool_b
    'sbg:x': 982.1279296875
    'sbg:y': 746.9765625
  - id: gatk_collect_alignment_summary_metrics_txt_pool_a
    outputSource:
      - bam_qc_stats_pool_a/gatk_collect_alignment_summary_metrics_txt
    type:
      - File
      - type: array
        items: File
    label: gatk_collect_alignment_summary_metrics_txt_pool_a
    'sbg:x': 982.1279296875
    'sbg:y': 1921.0546875
  - id: gatk_collect_hs_metrics_per_base_coverage_txt_pool_a
    outputSource:
      - bam_qc_stats_pool_a/gatk_collect_hs_metrics_per_base_coverage_txt
    type:
      - File
      - type: array
        items: File
    label: gatk_collect_hs_metrics_per_base_coverage_txt_pool_a
    'sbg:x': 982.1279296875
    'sbg:y': 1707.5859375
  - id: gatk_collect_hs_metrics_per_target_coverage_txt_pool_a
    outputSource:
      - bam_qc_stats_pool_a/gatk_collect_hs_metrics_per_target_coverage_txt
    type:
      - File
      - type: array
        items: File
    label: gatk_collect_hs_metrics_per_target_coverage_txt_pool_a
    'sbg:x': 982.1279296875
    'sbg:y': 1494.1171875
  - id: gatk_collect_hs_metrics_txt_pool_a
    outputSource:
      - bam_qc_stats_pool_a/gatk_collect_hs_metrics_txt
    type:
      - File
      - type: array
        items: File
    label: gatk_collect_hs_metrics_txt_pool_a
    'sbg:x': 982.1279296875
    'sbg:y': 1280.6484375
  - id: gatk_collect_insert_size_metrics_histogram_pdf_pool_a
    outputSource:
      - bam_qc_stats_pool_a/gatk_collect_insert_size_metrics_histogram_pdf
    type:
      - File
      - type: array
        items: File
    label: gatk_collect_insert_size_metrics_histogram_pdf_pool_a
    'sbg:x': 982.1279296875
    'sbg:y': 1067.1796875
  - id: gatk_collect_insert_size_metrics_txt_pool_a
    outputSource:
      - bam_qc_stats_pool_a/gatk_collect_insert_size_metrics_txt
    type:
      - File
      - type: array
        items: File
    label: gatk_collect_insert_size_metrics_txt_pool_a
    'sbg:x': 982.1279296875
    'sbg:y': 853.7109375
  - id: sequence_qc_pileup
    outputSource:
      - calculate_noise/sequence_qc_pileup
    type:
      - File
      - type: array
        items: File
    'sbg:x': 982.1279296875
    'sbg:y': 0
  - id: sequence_qc_noise_by_substitution
    outputSource:
      - calculate_noise/sequence_qc_noise_by_substitution
    type: File
    'sbg:x': 982.1279296875
    'sbg:y': 426.7734375
  - id: biometrics_major_plot
    outputSource:
      - biometrics_major_0_2_12/biometrics_major_plot
    type: File?
    'sbg:x': 1495.4873046875
    'sbg:y': 1276.2578125
  - id: biometrics_major_json
    outputSource:
      - biometrics_major_0_2_12/biometrics_major_json
    type: File?
    'sbg:x': 1495.4873046875
    'sbg:y': 1382.9921875
  - id: biometrics_major_csv
    outputSource:
      - biometrics_major_0_2_12/biometrics_major_csv
    type: File
    'sbg:x': 1495.4873046875
    'sbg:y': 1489.7265625
  - id: biometrics_extract_pickle
    outputSource:
      - biometrics_extract_0_2_12/biometrics_extract_pickle
    type: File
    'sbg:x': 982.1279296875
    'sbg:y': 2339.1875
  - id: biometrics_minor_sites_plot
    outputSource:
      - biometrics_minor_0_2_12/biometrics_minor_sites_plot
    type: File?
    'sbg:x': 1495.4873046875
    'sbg:y': 849.4375
  - id: biometrics_minor_plot
    outputSource:
      - biometrics_minor_0_2_12/biometrics_minor_plot
    type: File?
    'sbg:x': 1495.4873046875
    'sbg:y': 956.125
  - id: biometrics_minor_json
    outputSource:
      - biometrics_minor_0_2_12/biometrics_minor_json
    type: File?
    'sbg:x': 1495.4873046875
    'sbg:y': 1062.8359375
  - id: biometrics_minor_csv
    outputSource:
      - biometrics_minor_0_2_12/biometrics_minor_csv
    type: File
    'sbg:x': 1495.4873046875
    'sbg:y': 1169.546875
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
    'sbg:x': 351.421875
    'sbg:y': 1406.625
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
    'sbg:x': 351.421875
    'sbg:y': 841.5625
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
    'sbg:x': 351.421875
    'sbg:y': 1215.9375
  - id: biometrics_major_0_2_12
    in:
      - id: input
        linkMerge: merge_nested
        source:
          - biometrics_extract_0_2_12/biometrics_extract_pickle
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
    run: ../command_line_tools/biometrics_major/0.2.12/biometrics_major.cwl
    'sbg:x': 982.1279296875
    'sbg:y': 2204.4765625
  - id: biometrics_extract_0_2_12
    in:
      - id: sample_bam
        source: duplex_bam
      - id: sample_sex
        source: sample_sex
      - id: sample_group
        source: sample_group
      - id: sample_name
        source: sample_name
      - id: fafile
        source: reference
      - id: vcf_file
        source: vcf_file
      - id: min_coverage
        default: 200
    out:
      - id: biometrics_extract_pickle
    run: ../command_line_tools/biometrics_extract/0.2.12/biometrics_extract.cwl
    'sbg:x': 351.421875
    'sbg:y': 1032.25
  - id: biometrics_minor_0_2_12
    in:
      - id: input
        linkMerge: merge_nested
        source:
          - biometrics_extract_0_2_12/biometrics_extract_pickle
      - id: prefix
        source: prefix
      - id: plot
        source: plot
      - id: json
        source: json
    out:
      - id: biometrics_minor_csv
      - id: biometrics_minor_json
      - id: biometrics_minor_plot
      - id: biometrics_minor_sites_plot
    run: ../command_line_tools/biometrics_minor/0.2.12/biometrics_minor.cwl
    'sbg:x': 982.1279296875
    'sbg:y': 2048.765625
requirements:
  - class: SubworkflowFeatureRequirement
