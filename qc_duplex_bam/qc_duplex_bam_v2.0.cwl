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
    'sbg:y': 903.75
  - id: duplex_bam
    type:
      - File
      - type: array
        items: File
    label: duplex_bam
    secondaryFiles:
      - ^.bai
    'sbg:x': 0
    'sbg:y': 2399.5625
  - id: target_intervals
    type: File
    label: target_intervals
    'sbg:x': 0
    'sbg:y': 1331.125
  - id: bait_intervals
    type: File
    label: bait_intervals
    'sbg:x': 0
    'sbg:y': 1437.96875
  - id: noise_sites_bed
    type: File
    label: noise_sites_bed
    doc: >-
      Path to BED file containing regions over which to calculate noise
      [required]
    'sbg:x': 0
    'sbg:y': 1651.65625
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
    'sbg:y': 690.0625
  - id: plot
    type: boolean?
    doc: Also output plots of the data.
    'sbg:x': 0
    'sbg:y': 1544.8125
  - id: json
    type: boolean?
    doc: Also output data in JSON format.
    'sbg:x': 0
    'sbg:y': 1972.1875
  - id: sequence_qc_min_basq
    type: int?
    'sbg:x': 0
    'sbg:y': 476.375
  - id: sequence_qc_min_mapq
    type: int?
    'sbg:x': 0
    'sbg:y': 369.53125
  - id: sequence_qc_threshold
    type: float?
    'sbg:x': 0
    'sbg:y': 262.6875
  - id: sequence_qc_truncate
    type: int?
    'sbg:x': 0
    'sbg:y': 155.84375
  - id: hsmetrics_minimum_mapping_quality
    type: int?
    'sbg:x': 0
    'sbg:y': 2079.03125
  - id: hsmetrics_minimum_base_quality
    type: int?
    'sbg:x': 0
    'sbg:y': 2185.875
  - id: hsmetrics_coverage_cap
    type: int?
    'sbg:x': 0
    'sbg:y': 2292.71875
  - id: prefix
    type: string?
    'sbg:x': 0
    'sbg:y': 1010.59375
  - id: major_threshold
    type: float?
    'sbg:x': 0
    'sbg:y': 1758.5
  - id: vcf_file
    type: File
    'sbg:x': 0
    'sbg:y': 49
  - id: sample_sex
    type: string?
    'sbg:x': 0
    'sbg:y': 583.21875
  - id: sample_group
    type: string?
    'sbg:x': 0
    'sbg:y': 796.90625
  - id: maf
    type: File
    'sbg:x': 0
    'sbg:y': 1865.34375
outputs:
  - id: sequence_qc_noise_positions
    outputSource:
      - calculate_noise/sequence_qc_noise_positions
    type:
      - File
      - type: array
        items: File
    'sbg:x': 982.1435546875
    'sbg:y': 106.84375
  - id: sequence_qc_noise_n
    outputSource:
      - calculate_noise/sequence_qc_noise_n
    type:
      - File
      - type: array
        items: File
    'sbg:x': 982.1435546875
    'sbg:y': 213.6875
  - id: sequence_qc_noise_del
    outputSource:
      - calculate_noise/sequence_qc_noise_del
    type:
      - File
      - type: array
        items: File
    'sbg:x': 982.1435546875
    'sbg:y': 320.53125
  - id: sequence_qc_noise_acgt
    outputSource:
      - calculate_noise/sequence_qc_noise_acgt
    type:
      - File
      - type: array
        items: File
    'sbg:x': 982.1435546875
    'sbg:y': 534.21875
  - id: sequence_qc_figures
    outputSource:
      - calculate_noise/sequence_qc_figures
    type:
      - File
      - type: array
        items: File
    'sbg:x': 982.1435546875
    'sbg:y': 641.0625
  - id: gatk_collect_alignment_summary_metrics_txt
    outputSource:
      - bam_qc_stats/gatk_collect_alignment_summary_metrics_txt
    type:
      - File
      - type: array
        items: File
    label: gatk_collect_alignment_summary_metrics_txt
    'sbg:x': 982.1435546875
    'sbg:y': 1923.1875
  - id: gatk_collect_hs_metrics_per_base_coverage_txt
    outputSource:
      - bam_qc_stats/gatk_collect_hs_metrics_per_base_coverage_txt
    type:
      - File
      - type: array
        items: File
    label: gatk_collect_hs_metrics_per_base_coverage_txt
    'sbg:x': 982.1435546875
    'sbg:y': 1709.5
  - id: gatk_collect_hs_metrics_per_target_coverage_txt
    outputSource:
      - bam_qc_stats/gatk_collect_hs_metrics_per_target_coverage_txt
    type:
      - File
      - type: array
        items: File
    label: gatk_collect_hs_metrics_per_target_coverage_txt
    'sbg:x': 982.1435546875
    'sbg:y': 1495.8125
  - id: gatk_collect_hs_metrics_txt
    outputSource:
      - bam_qc_stats/gatk_collect_hs_metrics_txt
    type:
      - File
      - type: array
        items: File
    label: gatk_collect_hs_metrics_txt
    'sbg:x': 982.1435546875
    'sbg:y': 1282.125
  - id: gatk_collect_insert_size_metrics_histogram_pdf
    outputSource:
      - bam_qc_stats/gatk_collect_insert_size_metrics_histogram_pdf
    type:
      - File
      - type: array
        items: File
    label: gatk_collect_insert_size_metrics_histogram_pdf
    'sbg:x': 982.1435546875
    'sbg:y': 1068.4375
  - id: gatk_collect_insert_size_metrics_txt
    outputSource:
      - bam_qc_stats/gatk_collect_insert_size_metrics_txt
    type:
      - File
      - type: array
        items: File
    label: gatk_collect_insert_size_metrics_txt
    'sbg:x': 982.1435546875
    'sbg:y': 854.75
  - id: sequence_qc_pileup
    outputSource:
      - calculate_noise/sequence_qc_pileup
    type:
      - File
      - type: array
        items: File
    'sbg:x': 982.1435546875
    'sbg:y': 0
  - id: sequence_qc_noise_by_substitution
    outputSource:
      - calculate_noise/sequence_qc_noise_by_substitution
    type: File
    'sbg:x': 982.1435546875
    'sbg:y': 427.375
  - id: biometrics_major_plot
    outputSource:
      - biometrics_major_0_2_13/biometrics_major_plot
    type: File?
    'sbg:x': 1495.5341796875
    'sbg:y': 1331.125
  - id: biometrics_major_json
    outputSource:
      - biometrics_major_0_2_13/biometrics_major_json
    type: File?
    'sbg:x': 1495.5341796875
    'sbg:y': 1437.96875
  - id: biometrics_major_csv
    outputSource:
      - biometrics_major_0_2_13/biometrics_major_csv
    type: File
    'sbg:x': 1495.5341796875
    'sbg:y': 1544.8125
  - id: biometrics_extract_pickle
    outputSource:
      - biometrics_extract_0_2_13/biometrics_extract_pickle
    type: File
    'sbg:x': 982.1435546875
    'sbg:y': 2448.5625
  - id: biometrics_minor_sites_plot
    outputSource:
      - biometrics_minor_0_2_13/biometrics_minor_sites_plot
    type: File?
    'sbg:x': 1495.5341796875
    'sbg:y': 903.75
  - id: biometrics_minor_plot
    outputSource:
      - biometrics_minor_0_2_13/biometrics_minor_plot
    type: File?
    'sbg:x': 1495.5341796875
    'sbg:y': 1010.59375
  - id: biometrics_minor_json
    outputSource:
      - biometrics_minor_0_2_13/biometrics_minor_json
    type: File?
    'sbg:x': 1495.5341796875
    'sbg:y': 1117.4375
  - id: biometrics_minor_csv
    outputSource:
      - biometrics_minor_0_2_13/biometrics_minor_csv
    type: File
    'sbg:x': 1495.5341796875
    'sbg:y': 1224.28125
  - id: fillout_maf
    outputSource:
      - getbasecountsmultisample_1_2_5/fillout
    type: File
    'sbg:x': 982.1435546875
    'sbg:y': 2030.03125
steps:
  - id: bam_qc_stats
    in:
      - id: input
        source:
          - duplex_bam
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
    'sbg:x': 351.4375
    'sbg:y': 1563.96875
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
    'sbg:x': 351.4375
    'sbg:y': 998.4375
  - id: biometrics_major_0_2_13
    in:
      - id: input
        linkMerge: merge_nested
        source:
          - biometrics_extract_0_2_13/biometrics_extract_pickle
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
    run: ../command_line_tools/biometrics_major/0.2.13/biometrics_major.cwl
    'sbg:x': 982.1435546875
    'sbg:y': 2313.71875
  - id: biometrics_extract_0_2_13
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
    run: ../command_line_tools/biometrics_extract/0.2.13/biometrics_extract.cwl
    'sbg:x': 351.4375
    'sbg:y': 1189.28125
  - id: biometrics_minor_0_2_13
    in:
      - id: input
        linkMerge: merge_nested
        source:
          - biometrics_extract_0_2_13/biometrics_extract_pickle
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
    run: ../command_line_tools/biometrics_minor/0.2.13/biometrics_minor.cwl
    'sbg:x': 982.1435546875
    'sbg:y': 2157.875
  - id: getbasecountsmultisample_1_2_5
    in:
      - id: genotyping_bams
        source:
          - duplex_bam
      - id: genotyping_bams_ids
        source:
          - sample_name
      - id: filter_duplicate
        default: 0
      - id: fragment_count
        default: 1
      - id: maf
        source: maf
      - id: output
        source: sample_name
        valueFrom: $(self + '_duplex_hotspots_fillout.maf')
      - id: ref_fasta
        source: reference
    out:
      - id: fillout
    run: >-
      ../command_line_tools/getbasecountsmultisample/1.2.5/getbasecountsmultisample_1.2.5.cwl
    label: getbasecountsmultisample_1.2.5
    'sbg:x': 351.4375
    'sbg:y': 814.59375
requirements:
  - class: SubworkflowFeatureRequirement
  - class: InlineJavascriptRequirement
