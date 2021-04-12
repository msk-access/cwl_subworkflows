class: Workflow
cwlVersion: v1.0
id: access_bam_qc
label: access_bam_qc
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: reference
    type: File
    secondaryFiles:
      - ^.fasta.fai
      - ^.dict
    'sbg:x': -1367.075439453125
    'sbg:y': -170.63369750976562
  - id: simplex_bam
    type:
      - File
      - type: array
        items: File
    label: simplex_bam
    'sbg:x': -808.21337890625
    'sbg:y': -400.70538330078125
  - id: input
    type:
      - File
      - type: array
        items: File
    label: duplex_bam
    'sbg:x': -808.21337890625
    'sbg:y': -258.8006591796875
  - id: collapsed_bam
    type:
      - File
      - type: array
        items: File
    label: collapsed_bam
    'sbg:x': -810.0906372070312
    'sbg:y': -123.79762268066406
  - id: group_reads_by_umi_bam
    type:
      - File
      - type: array
        items: File
    label: group_reads_by_umi_bam
    doc: Input BAM file generated by GroupReadByUmi.
    'sbg:x': -811.8580322265625
    'sbg:y': 27.081497192382812
  - id: uncollapsed_bam
    type:
      - File
      - type: array
        items: File
    label: uncollapsed_bam
    'sbg:x': -810.2417602539062
    'sbg:y': 164.8699493408203
  - id: uncollapsed_bam_base_recal
    type:
      - File
      - type: array
        items: File
    label: uncollapsed_bam_base_recal
    doc: An aligned SAM or BAM file.  Required.
    'sbg:x': -813.2417602539062
    'sbg:y': 310.27471923828125
  - id: pool_b_target_intervals
    type: File
    label: pool_b_target_intervals
    'sbg:x': -1362.9149169921875
    'sbg:y': 304.2558288574219
  - id: pool_b_bait_intervals
    type: File
    label: pool_b_bait_intervals
    'sbg:x': -1362.1119384765625
    'sbg:y': 466.5614929199219
  - id: pool_a_target_intervals
    type: File
    label: pool_a_target_intervals
    'sbg:x': -1358.999755859375
    'sbg:y': -23.60011863708496
  - id: pool_a_baits_intervals
    type: File
    label: pool_a_baits_intervals
    'sbg:x': -1366.56494140625
    'sbg:y': 126.96497344970703
  - id: bed_file
    type: File?
    doc: BED file containing the intervals to be queried.
    'sbg:x': -1356.0794677734375
    'sbg:y': 652.2377319335938
  - id: vcf_file
    type: File
    doc: VCF file containing the SNPs to be queried.
    'sbg:x': -1345.8929443359375
    'sbg:y': 834.68603515625
  - id: noise_sites_bed
    type: File
    label: noise_sites_bed
    doc: >-
      Path to BED file containing regions over which to calculate noise
      [required]
    'sbg:x': -1351.35888671875
    'sbg:y': 982.7118530273438
  - id: sample_type
    type: 'string[]?'
    doc: 'Sample types: Normal or Tumor.'
    'sbg:x': -820.0021362304688
    'sbg:y': -904.2953491210938
  - id: sample_sex
    type: 'string[]?'
    doc: Expected sample sex (i.e. M or F).
    'sbg:x': -811.90576171875
    'sbg:y': -766.7771606445312
  - id: sample_name
    type: 'string[]'
    doc: >-
      Sample name. If not specified, sample name is automatically figured out
      from the BAM file.
    'sbg:x': -807.0020751953125
    'sbg:y': -645.0062255859375
  - id: sample_group
    type: 'string[]'
    doc: The sample group (e.g. the sample patient ID).
    'sbg:x': -813.4239501953125
    'sbg:y': -524.909912109375
outputs: []
steps:
  - id: qc_collapsed_bam
    in:
      - id: reference
        source: reference
      - id: pool_b_target_intervals
        source: pool_b_target_intervals
      - id: pool_a_targets_intervals
        source: pool_a_target_intervals
      - id: vcf_file
        source: vcf_file
      - id: collapsed_bam
        source:
          - collapsed_bam
      - id: sample_type
        source:
          - sample_type
      - id: sample_sex
        source:
          - sample_sex
      - id: sample_name
        source:
          - sample_name
      - id: sample_group
        source:
          - sample_group
      - id: group_reads_by_umi_bam
        source:
          - group_reads_by_umi_bam
      - id: pool_a_baits_intervals
        source: pool_a_baits_intervals
      - id: pool_b_baits_intervals
        source: pool_b_bait_intervals
      - id: bed_file
        source: bed_file
    out:
      - id: biometrics_extract_pickle
      - id: fgbio_collect_duplex_seq_metrics_duplex_family_size
      - id: fgbio_collect_duplex_seq_metrics_duplex_qc
      - id: fgbio_collect_duplex_seq_metrics_duplex_umi_counts
      - id: fgbio_collect_duplex_seq_metrics_duplex_yield_metrics
      - id: fgbio_collect_duplex_seq_metrics_family_size
      - id: fgbio_collect_duplex_seq_metrics_umi_counts
      - id: fgbio_collect_duplex_seq_metrics_duplex_family_size_1
      - id: fgbio_collect_duplex_seq_metrics_duplex_qc_1
      - id: fgbio_collect_duplex_seq_metrics_duplex_umi_counts_1
      - id: fgbio_collect_duplex_seq_metrics_duplex_yield_metrics_1
      - id: fgbio_collect_duplex_seq_metrics_family_size_1
      - id: fgbio_collect_duplex_seq_metrics_umi_counts_1
      - id: biometrics_minor_csv
      - id: biometrics_minor_json
      - id: biometrics_minor_plot
      - id: biometrics_minor_sites_plot
      - id: biometrics_major_csv
      - id: biometrics_major_json
      - id: biometrics_major_plot
      - id: biometrics_sexmismatch_json
      - id: biometrics_sexmismatch_csv
      - id: gatk_collect_insert_size_metrics_txt
      - id: gatk_collect_insert_size_metrics_histogram_pdf
      - id: gatk_collect_hs_metrics_txt
      - id: gatk_collect_hs_metrics_per_target_coverage_txt
      - id: gatk_collect_hs_metrics_per_base_coverage_txt
      - id: gatk_collect_alignment_summary_metrics_txt
      - id: gatk_collect_insert_size_metrics_txt_1
      - id: gatk_collect_insert_size_metrics_histogram_pdf_1
      - id: gatk_collect_hs_metrics_txt_1
      - id: gatk_collect_hs_metrics_per_target_coverage_txt_1
      - id: gatk_collect_hs_metrics_per_base_coverage_txt_1
      - id: gatk_collect_alignment_summary_metrics_txt_1
      - id: biometrics_genotype_plot_input_database
      - id: biometrics_genotype_plot_input
      - id: biometrics_genotype_comparisons
      - id: biometrics_genotype_cluster_input_database
      - id: biometrics_genotype_cluster_input
    run: ../qc_collapsed_bam/qc_collapsed_bam.cwl
    label: qc_collapsed_bam
    'sbg:x': 19.285715103149414
    'sbg:y': 193.85714721679688
  - id: qc_uncollapsed_bam
    in:
      - id: reference
        source: reference
      - id: uncollapsed_bam
        source:
          - uncollapsed_bam
      - id: pool_b_target_intervals
        source: pool_b_target_intervals
      - id: pool_b_bait_intervals
        source: pool_b_bait_intervals
      - id: pool_a_bait_intervals
        source: pool_a_baits_intervals
      - id: pool_a_target_intervals
        source: pool_a_target_intervals
      - id: uncollapsed_bam_base_recal
        source:
          - uncollapsed_bam_base_recal
    out:
      - id: gatk_collect_alignment_summary_metrics_txt
      - id: gatk_collect_hs_metrics_per_base_coverage_txt
      - id: gatk_collect_hs_metrics_per_target_coverage_txt
      - id: gatk_collect_hs_metrics_txt
      - id: gatk_collect_insert_size_metrics_histogram_pdf
      - id: gatk_collect_insert_size_metrics_txt
      - id: gatk_collect_alignment_summary_metrics_txt_1
      - id: gatk_collect_hs_metrics_per_base_coverage_txt_1
      - id: gatk_collect_hs_metrics_per_target_coverage_txt_1
      - id: gatk_collect_hs_metrics_txt_1
      - id: gatk_collect_insert_size_metrics_histogram_pdf_1
      - id: gatk_collect_insert_size_metrics_txt_1
      - id: gatk_mean_quality_by_cycle_output
      - id: gatk_mean_quality_by_cycle_chart_output
      - id: gatk_mean_quality_by_cycle_output_1
      - id: gatk_mean_quality_by_cycle_chart_output_1
    run: ../qc_uncollapsed_bam/qc_uncollapsed_bam.cwl
    label: qc_uncollapsed_bam
    'sbg:x': 23.449798583984375
    'sbg:y': 1085.6627197265625
  - id: qc_simplex_bam
    in:
      - id: reference
        source: reference
      - id: simplex_bam
        source:
          - simplex_bam
      - id: pool_b_target_intervals
        source: pool_b_target_intervals
      - id: pool_b_bait_intervals
        source: pool_b_bait_intervals
      - id: pool_a_bait_intervals
        source: pool_a_baits_intervals
      - id: pool_a_target_intervals
        source: pool_a_target_intervals
    out:
      - id: gatk_collect_alignment_summary_metrics_txt_pool_b
      - id: gatk_collect_hs_metrics_per_base_coverage_txt_pool_b
      - id: gatk_collect_hs_metrics_per_target_coverage_txt_pool_b
      - id: gatk_collect_hs_metrics_txt_pool_b
      - id: gatk_collect_insert_size_metrics_histogram_pdf_pool_b
      - id: gatk_collect_insert_size_metrics_txt_pool_b
      - id: gatk_collect_alignment_summary_metrics_txt_pool_a
      - id: gatk_collect_hs_metrics_per_base_coverage_txt_pool_a
      - id: gatk_collect_hs_metrics_per_target_coverage_txt_pool_a
      - id: gatk_collect_hs_metrics_txt_pool_a
      - id: gatk_collect_insert_size_metrics_histogram_pdf_pool_a
      - id: gatk_collect_insert_size_metrics_txt_pool_a
    run: ../qc_simplex_bam/qc_simplex_bam.cwl
    label: qc_simplex_bam
    'sbg:x': -0.8599690198898315
    'sbg:y': -931.1749267578125
  - id: qc_duplex
    in:
      - id: reference
        source: reference
      - id: input
        source:
          - input
      - id: pool_a_targets_intervals
        source: pool_a_target_intervals
      - id: pool_a_baits_intervals
        source: pool_a_baits_intervals
      - id: pool_b_targets_intervals
        source: pool_b_target_intervals
      - id: pool_b_baits_intervals
        source: pool_b_bait_intervals
      - id: noise_sites_bed
        source: noise_sites_bed
      - id: vcf_file
        source: vcf_file
      - id: sample_type
        source:
          - sample_type
      - id: sample_sex
        source:
          - sample_sex
      - id: sample_name
        source:
          - sample_name
      - id: sample_group
        source:
          - sample_group
    out:
      - id: biometrics_minor_csv
      - id: biometrics_minor_plot
      - id: biometrics_minor_json
      - id: biometrics_minor_sites_plot
      - id: biometrics_major_csv
      - id: biometrics_major_json
      - id: biometrics_major_plot
      - id: sequence_qc_noise_positions
      - id: sequence_qc_noise_n
      - id: sequence_qc_noise_del
      - id: sequence_qc_noise_acgt
      - id: sequence_qc_figures
      - id: biometrics_extract_pickle
      - id: gatk_collect_alignment_summary_metrics_txt
      - id: gatk_collect_hs_metrics_per_base_coverage_txt
      - id: gatk_collect_hs_metrics_per_target_coverage_txt
      - id: gatk_collect_hs_metrics_txt
      - id: gatk_collect_insert_size_metrics_histogram_pdf
      - id: gatk_collect_insert_size_metrics_txt
      - id: gatk_collect_alignment_summary_metrics_txt_1
      - id: gatk_collect_hs_metrics_per_base_coverage_txt_1
      - id: gatk_collect_hs_metrics_per_target_coverage_txt_1
      - id: gatk_collect_hs_metrics_txt_1
      - id: gatk_collect_insert_size_metrics_histogram_pdf_1
      - id: gatk_collect_insert_size_metrics_txt_1
    run: ../qc_duplex_bam/qc_duplex_bam.cwl
    label: qc_duplex
    'sbg:x': 4.560123920440674
    'sbg:y': -453.9947814941406
  - id: put_in_dir
    in: []
    out:
      - id: directory
    run: ../command_line_tools/utilities_ubuntu_18.04/put_in_dir.cwl
    'sbg:x': 647.1828002929688
    'sbg:y': 1070.7840576171875
  - id: simplex_pool_a_dir
    in:
      - id: files
        source:
          - qc_simplex_bam/gatk_collect_insert_size_metrics_txt_pool_a
          - qc_simplex_bam/gatk_collect_insert_size_metrics_histogram_pdf_pool_a
          - qc_simplex_bam/gatk_collect_hs_metrics_txt_pool_a
          - >-
            qc_simplex_bam/gatk_collect_hs_metrics_per_target_coverage_txt_pool_a
          - qc_simplex_bam/gatk_collect_hs_metrics_per_base_coverage_txt_pool_a
          - qc_simplex_bam/gatk_collect_alignment_summary_metrics_txt_pool_a
      - id: output_directory_name
        default: simplex_pool_a
    out:
      - id: directory
    run: ../command_line_tools/utilities_ubuntu_18.04/put_in_dir.cwl
    label: simplex_pool_a_dir
    'sbg:x': 439.89935302734375
    'sbg:y': -1027.125244140625
  - id: simplex_pool_b_dir
    in:
      - id: files
        source:
          - qc_simplex_bam/gatk_collect_insert_size_metrics_txt_pool_b
          - qc_simplex_bam/gatk_collect_insert_size_metrics_histogram_pdf_pool_b
          - qc_simplex_bam/gatk_collect_hs_metrics_txt_pool_b
          - >-
            qc_simplex_bam/gatk_collect_hs_metrics_per_target_coverage_txt_pool_b
          - qc_simplex_bam/gatk_collect_hs_metrics_per_base_coverage_txt_pool_b
          - qc_simplex_bam/gatk_collect_alignment_summary_metrics_txt_pool_b
      - id: output_directory_name
        default: simplex_pool_b
    out:
      - id: directory
    run: ../command_line_tools/utilities_ubuntu_18.04/put_in_dir.cwl
    label: simplex_pool_b_dir
    'sbg:x': 441.774169921875
    'sbg:y': -861.6499633789062
requirements:
  - class: SubworkflowFeatureRequirement
  - class: MultipleInputFeatureRequirement
  - class: InlineJavascriptRequirement
  - class: StepInputExpressionRequirement
