class: Workflow
cwlVersion: v1.0
id: access_qc_aggregator
label: access_qc_aggregator
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: duplex_extraction_files
    type:
      type: array
      items: File
      inputBinding:
        position: 0
        prefix: '--input'
    label: duplex_extraction_files
    doc: >-
      Can be one of three types: (1) path to a CSV file containing sample
      information (one per line). For example:
      sample_name,sample_bam,sample_type,sample_sex,sample_group. (2) Path to a
      '*.pk' file that was produced by the 'extract' tool. (3) Name of the
      sample to analyze; this assumes there is a file named '{sample_name}.pk'
      in your database directory. Can be specified more than once.
    'sbg:x': 0
    'sbg:y': 534.296875
  - id: duplex_biometrics_discordance_threshold
    type: float?
    doc: >-
      Discordance values less than this are regarded as matching samples.
      (default: 0.05)
    'sbg:x': 0
    'sbg:y': 854.875
  - id: biometrics_json
    type: boolean?
    label: biometrics_json
    doc: Also output data in JSON format.
    'sbg:x': 0
    'sbg:y': 2564.625
  - id: biometrics_plot
    type: boolean?
    label: biometrics_plot
    doc: Also output plots of the data.
    'sbg:x': 0
    'sbg:y': 2457.765625
  - id: simplex_bam_pool_a_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    label: simplex_bam_pool_a_dir
    'sbg:x': 0
    'sbg:y': 213.71875
  - id: simplex_bam_pool_b_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    label: simplex_bam_pool_b_dir
    'sbg:x': 0
    'sbg:y': 213.71875
  - id: duplex_bam_sequence_qc_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    label: duplex_bam_sequence_qc_dir
    'sbg:x': 0
    'sbg:y': 1282.3125
  - id: duplex_bam_stats_pool_a_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    label: duplex_bam_stats_pool_a_dir
    'sbg:x': 0
    'sbg:y': 1175.453125
  - id: duplex_bam_stats_pool_b_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    label: duplex_bam_stats_pool_b_dir
    'sbg:x': 0
    'sbg:y': 1068.59375
  - id: collapsed_bam_stats_pool_a_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    label: collapsed_bam_stats_pool_a_dir
    'sbg:x': 0
    'sbg:y': 2030.328125
  - id: collapsed_bam_stats_pool_b_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    label: collapsed_bam_stats_pool_b_dir
    'sbg:x': 0
    'sbg:y': 1923.46875
  - id: collapsed_bam_duplex_metrics_pool_a_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    label: collapsed_bam_duplex_metrics_pool_a_dir
    'sbg:x': 0
    'sbg:y': 2244.046875
  - id: collapsed_bam_duplex_metrics_pool_b_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    label: collapsed_bam_duplex_metrics_pool_b_dir
    'sbg:x': 0
    'sbg:y': 2137.1875
  - id: gatk_mean_quality_by_cycle_recal_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    label: gatk_mean_quality_by_cycle_recal_dir
    'sbg:x': 0
    'sbg:y': 320.578125
  - id: gatk_mean_quality_by_cycle_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    label: gatk_mean_quality_by_cycle_dir
    'sbg:x': 0
    'sbg:y': 427.4375
  - id: uncollapsed_bam_stats_pool_b_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    label: uncollapsed_bam_stats_pool_b_dir
    'sbg:x': 0
    'sbg:y': 0
  - id: uncollapsed_bam_stats_pool_a_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    label: uncollapsed_bam_stats_pool_a_dir
    'sbg:x': 0
    'sbg:y': 106.859375
  - id: biometrics_threads
    type: int?
    label: biometrics_threads
    doc: Number of threads to use.
    'sbg:x': 0
    'sbg:y': 2350.90625
  - id: duplex_biometrics_coverage_threshold
    type: int?
    label: duplex_biometrics_coverage_threshold
    doc: Samples with Y chromosome above this value will be considered male.
    'sbg:x': 0
    'sbg:y': 961.734375
  - id: duplex_biometrics_major_threshold
    type: float?
    label: duplex_biometrics_major_threshold
    doc: Major contamination threshold for bad sample.
    'sbg:x': 0
    'sbg:y': 748.015625
  - id: duplex_biometrics_minor_threshold
    type: float?
    label: duplex_biometrics_minor_threshold
    doc: Minor contamination threshold for bad sample.
    'sbg:x': 0
    'sbg:y': 641.15625
  - id: collapsed_extraction_files
    type:
      type: array
      items: File
      inputBinding:
        position: 0
        prefix: '--input'
    label: collapsed_extraction_files
    doc: >-
      Can be one of three types: (1) path to a CSV file containing sample
      information (one per line). For example:
      sample_name,sample_bam,sample_type,sample_sex,sample_group. (2) Path to a
      '*.pk' file that was produced by the 'extract' tool. (3) Name of the
      sample to analyze; this assumes there is a file named '{sample_name}.pk'
      in your database directory. Can be specified more than once.
    'sbg:x': 0
    'sbg:y': 1389.171875
  - id: collapsed_biometrics_discordance_threshold
    type: float?
    label: collapsed_biometrics_discordance_threshold
    doc: >-
      Discordance values less than this are regarded as matching samples.
      (default: 0.05)
    'sbg:x': 0
    'sbg:y': 1709.75
  - id: collapsed_biometrics_major_threshold
    type: float?
    label: collapsed_biometrics_major_threshold
    doc: Major contamination threshold for bad sample.
    'sbg:x': 0
    'sbg:y': 1602.890625
  - id: collapsed_biometrics_minor_threshold
    type: float?
    label: collapsed_biometrics_minor_threshold
    doc: Minor contamination threshold for bad sample.
    'sbg:x': 0
    'sbg:y': 1496.03125
  - id: collapsed_biometrics_coverage_threshold
    type: int?
    label: collapsed_biometrics_coverage_threshold
    doc: Samples with Y chromosome above this value will be considered male.
    'sbg:x': 0
    'sbg:y': 1816.609375
outputs:
  - id: outdir
    outputSource:
      - aggregate/directory
    type: 'Directory[]'
    label: outdir
    'sbg:x': 887.649169921875
    'sbg:y': 1175.453125
  - id: duplex_biometrics_outdir
    outputSource:
      - duplex_biometrics_agg/directory
    type: Directory
    label: duplex_biometrics_outdir
    'sbg:x': 1054.649169921875
    'sbg:y': 1228.8828125
  - id: collapsed_biometrics_outdir
    outputSource:
      - collapsed_biometrics_agg/directory
    type: Directory
    label: collapsed_biometrics_outdir
    'sbg:x': 1054.649169921875
    'sbg:y': 1335.7421875
steps:
  - id: duplex_biometrics_genotype
    in:
      - id: input
        source:
          - duplex_extraction_files
      - id: discordance_threshold
        source: duplex_biometrics_discordance_threshold
      - id: prefix
        default: duplex
      - id: plot
        default: true
        source: biometrics_plot
      - id: json
        default: true
        source: biometrics_json
      - id: threads
        source: biometrics_threads
    out:
      - id: biometrics_genotype_comparisons
      - id: biometrics_genotype_cluster_input
      - id: biometrics_genotype_cluster_input_database
      - id: biometrics_genotype_plot_input
      - id: biometrics_genotype_plot_input_database
    run: ../command_line_tools/biometrics_genotype/0.2.9/biometrics_genotype.cwl
    'sbg:x': 410.1875
    'sbg:y': 1133.453125
  - id: aggregate
    in:
      - id: files
        linkMerge: merge_nested
        source:
          - simplex_bam_pool_a_dir
          - simplex_bam_pool_b_dir
          - duplex_bam_stats_pool_a_dir
          - duplex_bam_stats_pool_b_dir
          - collapsed_bam_stats_pool_a_dir
          - collapsed_bam_stats_pool_b_dir
          - collapsed_bam_duplex_metrics_pool_a_dir
          - collapsed_bam_duplex_metrics_pool_b_dir
          - gatk_mean_quality_by_cycle_recal_dir
          - gatk_mean_quality_by_cycle_dir
          - uncollapsed_bam_stats_pool_b_dir
          - uncollapsed_bam_stats_pool_a_dir
          - duplex_bam_sequence_qc_dir
      - id: output_directory_name
        default:
          - simplex_bam_pool_a_dir
          - simplex_bam_pool_b_dir
          - duplex_bam_stats_pool_a_dir
          - duplex_bam_stats_pool_b_dir
          - collapsed_bam_stats_pool_a_dir
          - collapsed_bam_stats_pool_b_dir
          - collapsed_bam_duplex_metrics_pool_a_dir
          - collapsed_bam_duplex_metrics_pool_b_dir
          - gatk_mean_quality_by_cycle_recal_dir
          - gatk_mean_quality_by_cycle_dir
          - uncollapsed_bam_stats_pool_b_dir
          - uncollapsed_bam_stats_pool_a_dir
          - duplex_bam_sequence_qc_dir
    out:
      - id: directory
    run: ../command_line_tools/expression_tools/put_in_dir.cwl
    label: aggregate
    scatter:
      - files
      - output_directory_name
    scatterMethod: dotproduct
    'sbg:x': 410.1875
    'sbg:y': 1863.75
  - id: duplex_biometrics_major
    in:
      - id: input
        source:
          - duplex_extraction_files
      - id: major_threshold
        source: duplex_biometrics_major_threshold
      - id: prefix
        default: duplex
      - id: plot
        default: true
        source: biometrics_plot
      - id: json
        default: true
        source: biometrics_json
    out:
      - id: biometrics_major_csv
      - id: biometrics_major_json
      - id: biometrics_major_plot
    run: ../command_line_tools/biometrics_major/0.2.9/biometrics_major.cwl
    label: duplex_biometrics_major
    'sbg:x': 410.1875
    'sbg:y': 977.59375
  - id: duplex_biometrics_minor
    in:
      - id: input
        source:
          - duplex_extraction_files
      - id: minor_threshold
        source: duplex_biometrics_minor_threshold
      - id: prefix
        default: duplex
      - id: plot
        default: true
        source: biometrics_plot
      - id: json
        default: true
        source: biometrics_json
    out:
      - id: biometrics_minor_csv
      - id: biometrics_minor_json
      - id: biometrics_minor_plot
      - id: biometrics_minor_sites_plot
    run: ../command_line_tools/biometrics_minor/0.2.9/biometrics_minor.cwl
    label: duplex_biometrics_minor
    'sbg:x': 410.1875
    'sbg:y': 828.734375
  - id: duplex_biometrics_sexmismatch
    in:
      - id: input
        source:
          - duplex_extraction_files
      - id: coverage_threshold
        source: duplex_biometrics_coverage_threshold
      - id: prefix
        default: duplex
      - id: json
        default: true
    out:
      - id: biometrics_sexmismatch_csv
      - id: biometrics_sexmismatch_json
    run: >-
      ../command_line_tools/biometrics_sexmismatch/0.2.9/biometrics_sexmismatch.cwl
    label: duplex_biometrics_sexmismatch
    'sbg:x': 410
    'sbg:y': 623.2350463867188
  - id: duplex_biometrics_agg
    in:
      - id: files
        source:
          - duplex_biometrics_genotype/biometrics_genotype_plot_input_database
          - duplex_biometrics_genotype/biometrics_genotype_plot_input
          - duplex_biometrics_genotype/biometrics_genotype_comparisons
          - >-
            duplex_biometrics_genotype/biometrics_genotype_cluster_input_database
          - duplex_biometrics_genotype/biometrics_genotype_cluster_input
          - duplex_biometrics_major/biometrics_major_plot
          - duplex_biometrics_major/biometrics_major_json
          - duplex_biometrics_major/biometrics_major_csv
          - duplex_biometrics_minor/biometrics_minor_sites_plot
          - duplex_biometrics_minor/biometrics_minor_plot
          - duplex_biometrics_minor/biometrics_minor_json
          - duplex_biometrics_minor/biometrics_minor_csv
          - duplex_biometrics_sexmismatch/biometrics_sexmismatch_json
          - duplex_biometrics_sexmismatch/biometrics_sexmismatch_csv
      - id: output_directory_name
        default: duplex_biometrics_output
    out:
      - id: directory
    run: ../command_line_tools/expression_tools/put_in_dir.cwl
    label: duplex_biometrics_agg
    'sbg:x': 887.649169921875
    'sbg:y': 1282.3125
  - id: collapsed_biometrics_genotype
    in:
      - id: input
        source:
          - collapsed_extraction_files
      - id: discordance_threshold
        source: collapsed_biometrics_discordance_threshold
      - id: prefix
        default: collapsed
      - id: plot
        default: true
        source: biometrics_plot
      - id: json
        default: true
        source: biometrics_json
      - id: threads
        source: biometrics_threads
    out:
      - id: biometrics_genotype_comparisons
      - id: biometrics_genotype_cluster_input
      - id: biometrics_genotype_cluster_input_database
      - id: biometrics_genotype_plot_input
      - id: biometrics_genotype_plot_input_database
    run: ../command_line_tools/biometrics_genotype/0.2.9/biometrics_genotype.cwl
    label: collapsed_biometrics_genotype
    'sbg:x': 410.1875
    'sbg:y': 1728.890625
  - id: collapsed_biometrics_major
    in:
      - id: input
        source:
          - collapsed_extraction_files
      - id: major_threshold
        default: 0.6
        source: collapsed_biometrics_major_threshold
      - id: prefix
        default: collapsed
      - id: plot
        default: true
        source: biometrics_plot
      - id: json
        default: true
        source: biometrics_json
    out:
      - id: biometrics_major_csv
      - id: biometrics_major_json
      - id: biometrics_major_plot
    run: ../command_line_tools/biometrics_major/0.2.9/biometrics_major.cwl
    label: collapsed_biometrics_major
    'sbg:x': 410.1875
    'sbg:y': 1573.03125
  - id: collapsed_biometrics_minor
    in:
      - id: input
        source:
          - collapsed_extraction_files
      - id: minor_threshold
        default: 0.002
        source: collapsed_biometrics_minor_threshold
      - id: prefix
        default: collapsed
      - id: plot
        default: true
        source: biometrics_plot
      - id: json
        default: true
        source: biometrics_json
      - id: no_db_comparison
        default: false
    out:
      - id: biometrics_minor_csv
      - id: biometrics_minor_json
      - id: biometrics_minor_plot
      - id: biometrics_minor_sites_plot
    run: ../command_line_tools/biometrics_minor/0.2.9/biometrics_minor.cwl
    label: collapsed_biometrics_minor
    'sbg:x': 410.1875
    'sbg:y': 1424.171875
  - id: collapsed_biometrics_sexmismatch
    in:
      - id: input
        source:
          - collapsed_extraction_files
      - id: coverage_threshold
        source: collapsed_biometrics_coverage_threshold
      - id: prefix
        default: collapsed
      - id: json
        default: true
        source: biometrics_json
    out:
      - id: biometrics_sexmismatch_csv
      - id: biometrics_sexmismatch_json
    run: >-
      ../command_line_tools/biometrics_sexmismatch/0.2.9/biometrics_sexmismatch.cwl
    label: collapsed_biometrics_sexmismatch
    'sbg:x': 410.1875
    'sbg:y': 1282.3125
  - id: collapsed_biometrics_agg
    in:
      - id: files
        source:
          - >-
            collapsed_biometrics_genotype/biometrics_genotype_plot_input_database
          - collapsed_biometrics_genotype/biometrics_genotype_plot_input
          - collapsed_biometrics_genotype/biometrics_genotype_comparisons
          - >-
            collapsed_biometrics_genotype/biometrics_genotype_cluster_input_database
          - collapsed_biometrics_genotype/biometrics_genotype_cluster_input
          - collapsed_biometrics_major/biometrics_major_plot
          - collapsed_biometrics_major/biometrics_major_json
          - collapsed_biometrics_major/biometrics_major_csv
          - collapsed_biometrics_minor/biometrics_minor_sites_plot
          - collapsed_biometrics_minor/biometrics_minor_plot
          - collapsed_biometrics_minor/biometrics_minor_json
          - collapsed_biometrics_minor/biometrics_minor_csv
          - collapsed_biometrics_sexmismatch/biometrics_sexmismatch_json
          - collapsed_biometrics_sexmismatch/biometrics_sexmismatch_csv
      - id: output_directory_name
        default: collapsed_biometrics_output
    out:
      - id: directory
    run: ../command_line_tools/expression_tools/put_in_dir.cwl
    label: collapsed_biometrics_agg
    'sbg:x': 887.649169921875
    'sbg:y': 1389.171875
requirements:
  - class: ScatterFeatureRequirement
  - class: MultipleInputFeatureRequirement
