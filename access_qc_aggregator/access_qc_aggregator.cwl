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
    'sbg:x': -432.869140625
    'sbg:y': 130.13436889648438
  - id: duplex_biometrics_discordance_threshold
    type: float?
    doc: >-
      Discordance values less than this are regarded as matching samples.
      (default: 0.05)
    'sbg:x': -439.3351745605469
    'sbg:y': -10.98059368133545
  - id: biometrics_json
    type: boolean?
    label: biometrics_json
    doc: Also output data in JSON format.
    'sbg:x': -886.3317260742188
    'sbg:y': 1000.4258422851562
  - id: biometrics_plot
    type: boolean?
    label: biometrics_plot
    doc: Also output plots of the data.
    'sbg:x': -890.3317260742188
    'sbg:y': 846.9597778320312
  - id: simplex_bam_pool_a_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    label: simplex_bam_pool_a_dir
    'sbg:x': -373.4821472167969
    'sbg:y': -2165.392822265625
  - id: duplex_bam_sequence_qc_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    label: duplex_bam_sequence_qc_dir
    'sbg:x': -364.5106506347656
    'sbg:y': -2014.1710205078125
  - id: duplex_bam_stats_pool_a_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    label: duplex_bam_stats_pool_a_dir
    'sbg:x': -366.6091613769531
    'sbg:y': -1860.9732666015625
  - id: duplex_bam_stats_pool_b_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    label: duplex_bam_stats_pool_b_dir
    'sbg:x': -358.2148742675781
    'sbg:y': -1711.974609375
  - id: collapsed_bam_stats_pool_a_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    label: collapsed_bam_stats_pool_a_dir
    'sbg:x': -355.0670166015625
    'sbg:y': -1557.7293701171875
  - id: collapsed_bam_stats_pool_b_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    label: collapsed_bam_stats_pool_b_dir
    'sbg:x': -349.820556640625
    'sbg:y': -1377.2520751953125
  - id: collapsed_bam_duplex_metrics_pool_a_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    label: collapsed_bam_duplex_metrics_pool_a_dir
    'sbg:x': -346.6726989746094
    'sbg:y': -1234.5489501953125
  - id: collapsed_bam_duplex_metrics_pool_b_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    label: collapsed_bam_duplex_metrics_pool_b_dir
    'sbg:x': -336.1798400878906
    'sbg:y': -1068.7615966796875
  - id: gatk_mean_quality_by_cycle_recal_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    label: gatk_mean_quality_by_cycle_recal_dir
    'sbg:x': -334.0812683105469
    'sbg:y': -918.7134399414062
  - id: gatk_mean_quality_by_cycle_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    label: gatk_mean_quality_by_cycle_dir
    'sbg:x': -342.4755554199219
    'sbg:y': -761.3282470703125
  - id: uncollapsed_bam_stats_pool_b_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    label: uncollapsed_bam_stats_pool_b_dir
    'sbg:x': -334.0872497558594
    'sbg:y': -610.5114135742188
  - id: uncollapsed_bam_stats_pool_a_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    label: uncollapsed_bam_stats_pool_a_dir
    'sbg:x': -340.1039123535156
    'sbg:y': -475.7384948730469
  - id: biometrics_threads
    type: int?
    label: biometrics_threads
    doc: Number of threads to use.
    'sbg:x': -882.580322265625
    'sbg:y': 707.580322265625
  - id: duplex_biometrics_coverage_threshold
    type: int?
    label: duplex_biometrics_coverage_threshold
    doc: Samples with Y chromosome above this value will be considered male.
    'sbg:x': -415.4972229003906
    'sbg:y': 578.8967895507812
  - id: duplex_biometrics_major_threshold
    type: float?
    label: duplex_biometrics_major_threshold
    doc: Major contamination threshold for bad sample.
    'sbg:x': -424.0810241699219
    'sbg:y': 279.0644226074219
  - id: duplex_biometrics_minor_threshold
    type: float?
    label: duplex_biometrics_minor_threshold
    doc: Minor contamination threshold for bad sample.
    'sbg:x': -412.9134216308594
    'sbg:y': 428.7292175292969
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
    'sbg:x': -397.1647033691406
    'sbg:y': 933.3253784179688
  - id: collapsed_biometrics_discordance_threshold
    type: float?
    label: collapsed_biometrics_discordance_threshold
    doc: >-
      Discordance values less than this are regarded as matching samples.
      (default: 0.05)
    'sbg:x': -397.409912109375
    'sbg:y': 1063.6241455078125
  - id: collapsed_biometrics_major_threshold
    type: float?
    label: collapsed_biometrics_major_threshold
    doc: Major contamination threshold for bad sample.
    'sbg:x': -385.83941650390625
    'sbg:y': 1202.94287109375
  - id: collapsed_biometrics_minor_threshold
    type: float?
    label: collapsed_biometrics_minor_threshold
    doc: Minor contamination threshold for bad sample.
    'sbg:x': -381.01446533203125
    'sbg:y': 1344.0721435546875
  - id: collapsed_biometrics_coverage_threshold
    type: int?
    label: collapsed_biometrics_coverage_threshold
    doc: Samples with Y chromosome above this value will be considered male.
    'sbg:x': -387.0456237792969
    'sbg:y': 1481.5826416015625
outputs:
  - id: simplex_bam_pool_a_outdir
    outputSource:
      - simplex_bam_pool_a_agg/directory
    type: Directory
    label: simplex_bam_pool_a_outdir
    'sbg:x': 303.91070556640625
    'sbg:y': -2151.46435546875
  - id: duplex_bam_sequence_qc_outdir
    outputSource:
      - duplex_bam_sequence_qc_agg/directory
    type: Directory
    label: duplex_bam_sequence_qc_outdir
    'sbg:x': 299.6883544921875
    'sbg:y': -2011.023193359375
  - id: duplex_bam_stats_pool_a_outdir
    outputSource:
      - duplex_bam_stats_pool_a_agg/directory
    type: Directory
    label: duplex_bam_stats_pool_a_outdir
    'sbg:x': 296.5405578613281
    'sbg:y': -1858.874755859375
  - id: duplex_bam_stats_pool_b_outdir
    outputSource:
      - duplex_bam_stats_pool_b_agg/directory
    type: Directory
    label: duplex_bam_stats_pool_b_outdir
    'sbg:x': 295.4912414550781
    'sbg:y': -1699.3831787109375
  - id: collapsed_bam_stats_pool_a_outdir
    outputSource:
      - collapsed_bam_stats_pool_a_agg/directory
    type: Directory
    label: collapsed_bam_stats_pool_a_outdir
    'sbg:x': 308.08270263671875
    'sbg:y': -1550.3843994140625
  - id: collapsed_bam_stats_pool_b_outdir
    outputSource:
      - collapsed_bam_stats_pool_b_agg/directory
    type: Directory
    label: collapsed_bam_stats_pool_b_outdir
    'sbg:x': 301.7869873046875
    'sbg:y': -1387.7449951171875
  - id: collapsed_bam_duplex_metrics_pool_a_outdir
    outputSource:
      - collapsed_bam_duplex_metrics_pool_a_agg/directory
    type: Directory
    label: collapsed_bam_duplex_metrics_pool_a_outdir
    'sbg:x': 305.984130859375
    'sbg:y': -1228.2532958984375
  - id: collapsed_bam_duplex_metrics_pool_b_outdir
    outputSource:
      - collapsed_bam_duplex_metrics_pool_b_agg/directory
    type: Directory
    label: collapsed_bam_duplex_metrics_pool_b_outdir
    'sbg:x': 312.27984619140625
    'sbg:y': -1071.909423828125
  - id: gatk_mean_quality_by_cycle_recal_outdir
    outputSource:
      - gatk_mean_quality_by_cycle_recal_agg/directory
    type: Directory
    label: gatk_mean_quality_by_cycle_recal_outdir
    'sbg:x': 311.2305603027344
    'sbg:y': -917.6641235351562
  - id: gatk_mean_quality_by_cycle_outdir
    outputSource:
      - gatk_mean_quality_by_cycle_agg/directory
    type: Directory
    label: gatk_mean_quality_by_cycle_outdir
    'sbg:x': 297.58984375
    'sbg:y': -759.2296752929688
  - id: uncollapsed_bam_stats_pool_b_outdir
    outputSource:
      - uncollapsed_bam_stats_pool_b_agg/directory
    type: Directory
    label: uncollapsed_bam_stats_pool_b_outdir
    'sbg:x': 309.6939697265625
    'sbg:y': -603.2913818359375
  - id: uncollapsed_bam_stats_pool_a_outdir
    outputSource:
      - uncollapsed_bam_stats_pool_a_agg/directory
    type: Directory
    label: uncollapsed_bam_stats_pool_a_outdir
    'sbg:x': 315.71063232421875
    'sbg:y': -451.6719055175781
  - id: duplex_biometrics_outdir
    outputSource:
      - duplex_biometrics_agg/directory
    type: Directory
    label: duplex_biometrics_outdir
    'sbg:x': 735.8389282226562
    'sbg:y': 382.3530578613281
  - id: collapsed_biometrics_outdir
    outputSource:
      - collapsed_biometrics_agg/directory
    type: Directory
    label: collapsed_biometrics_outdir
    'sbg:x': 855.2215576171875
    'sbg:y': 1238.1143798828125
steps:
  - id: duplex_biometrics_genotype
    in:
      - id: input
        source:
          - duplex_extraction_files
      - id: discordance_threshold
        source: duplex_biometrics_discordance_threshold
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
    'sbg:x': 15.982142448425293
    'sbg:y': 126.89286041259766
  - id: simplex_bam_pool_a_agg
    in:
      - id: files
        source:
          - simplex_bam_pool_a_dir
      - id: output_directory_name
        default: simplex_bam_pool_a_merged_dir
    out:
      - id: directory
    run: ../command_line_tools/expression_tools/put_in_dir.cwl
    label: simplex_bam_pool_a_agg
    'sbg:x': -5.875
    'sbg:y': -2162.16064453125
  - id: duplex_bam_sequence_qc_agg
    in:
      - id: files
        source:
          - duplex_bam_sequence_qc_dir
      - id: output_directory_name
        default: duplex_bam_sequence_qc_merged_dir
    out:
      - id: directory
    run: ../command_line_tools/expression_tools/put_in_dir.cwl
    label: duplex_bam_sequence_qc_agg
    'sbg:x': -12.23218822479248
    'sbg:y': -2017.5487060546875
  - id: duplex_bam_stats_pool_a_agg
    in:
      - id: files
        source:
          - duplex_bam_stats_pool_a_dir
      - id: output_directory_name
        default: duplex_bam_stats_pool_a_merged_dir
    out:
      - id: directory
    run: ../command_line_tools/expression_tools/put_in_dir.cwl
    label: duplex_bam_stats_pool_a_agg
    'sbg:x': -6.703541278839111
    'sbg:y': -1849.43115234375
  - id: duplex_bam_stats_pool_b_agg
    in:
      - id: files
        source:
          - duplex_bam_stats_pool_b_dir
      - id: output_directory_name
        default: duplex_bam_stats_pool_b_merged_dir
    out:
      - id: directory
    run: ../command_line_tools/expression_tools/put_in_dir.cwl
    label: duplex_bam_stats_pool_b_agg
    'sbg:x': 0.641471266746521
    'sbg:y': -1698.333740234375
  - id: collapsed_bam_stats_pool_a_agg
    in:
      - id: files
        source:
          - collapsed_bam_stats_pool_a_dir
      - id: output_directory_name
        default: collapsed_bam_stats_pool_a_merged_dir
    out:
      - id: directory
    run: ../command_line_tools/expression_tools/put_in_dir.cwl
    label: collapsed_bam_stats_pool_a_agg
    'sbg:x': -0.4078298509120941
    'sbg:y': -1541.989990234375
  - id: collapsed_bam_stats_pool_b_agg
    in:
      - id: files
        source:
          - collapsed_bam_stats_pool_b_dir
      - id: output_directory_name
        default: collapsed_bam_stats_pool_b_merged_dir
    out:
      - id: directory
    run: ../command_line_tools/expression_tools/put_in_dir.cwl
    label: collapsed_bam_stats_pool_b_agg
    'sbg:x': -2.8983097076416016
    'sbg:y': -1377.8983154296875
  - id: collapsed_bam_duplex_metrics_pool_a_agg
    in:
      - id: files
        source:
          - collapsed_bam_duplex_metrics_pool_a_dir
      - id: output_directory_name
        default: collapsed_bam_duplex_metrics_pool_a_merged_dir
    out:
      - id: directory
    run: ../command_line_tools/expression_tools/put_in_dir.cwl
    label: collapsed_bam_duplex_metrics_pool_a_agg
    'sbg:x': 5.887901306152344
    'sbg:y': -1220.908203125
  - id: collapsed_bam_duplex_metrics_pool_b_agg
    in:
      - id: files
        source:
          - collapsed_bam_duplex_metrics_pool_b_dir
      - id: output_directory_name
        default: collapsed_bam_duplex_metrics_pool_b_merged_dir
    out:
      - id: directory
    run: ../command_line_tools/expression_tools/put_in_dir.cwl
    label: collapsed_bam_duplex_metrics_pool_b_agg
    'sbg:x': -3.5556864738464355
    'sbg:y': -1060.3673095703125
  - id: gatk_mean_quality_by_cycle_recal_agg
    in:
      - id: files
        source:
          - gatk_mean_quality_by_cycle_recal_dir
      - id: output_directory_name
        default: gatk_mean_quality_by_cycle_recal_merged_dir
    out:
      - id: directory
    run: ../command_line_tools/expression_tools/put_in_dir.cwl
    label: gatk_mean_quality_by_cycle_recal_agg
    'sbg:x': -0.4078238010406494
    'sbg:y': -913.4669799804688
  - id: gatk_mean_quality_by_cycle_agg
    in:
      - id: files
        source:
          - gatk_mean_quality_by_cycle_dir
      - id: output_directory_name
        default: gatk_mean_quality_by_cycle_merged_dir
    out:
      - id: directory
    run: ../command_line_tools/expression_tools/put_in_dir.cwl
    label: gatk_mean_quality_by_cycle_agg
    'sbg:x': -0.4078238010406494
    'sbg:y': -760.27099609375
  - id: uncollapsed_bam_stats_pool_b_agg
    in:
      - id: files
        source:
          - uncollapsed_bam_stats_pool_b_dir
      - id: output_directory_name
        default: uncollapsed_bam_stats_pool_b_merged_dir
    out:
      - id: directory
    run: ../command_line_tools/expression_tools/put_in_dir.cwl
    label: uncollapsed_bam_stats_pool_b_agg
    'sbg:x': 3.083235740661621
    'sbg:y': -601.083251953125
  - id: uncollapsed_bam_stats_pool_a_agg
    in:
      - id: files
        source:
          - uncollapsed_bam_stats_pool_a_dir
      - id: output_directory_name
        default: uncollapsed_bam_stats_pool_a_merged_dir
    out:
      - id: directory
    run: ../command_line_tools/expression_tools/put_in_dir.cwl
    label: uncollapsed_bam_stats_pool_a_agg
    'sbg:x': 3.8133177757263184
    'sbg:y': -457.1498107910156
  - id: duplex_biometrics_major
    in:
      - id: input
        source:
          - duplex_extraction_files
      - id: major_threshold
        source: duplex_biometrics_major_threshold
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
    'sbg:x': 19.419479370117188
    'sbg:y': 303.0918273925781
  - id: duplex_biometrics_minor
    in:
      - id: input
        source:
          - duplex_extraction_files
      - id: minor_threshold
        source: duplex_biometrics_minor_threshold
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
    'sbg:x': 17.838956832885742
    'sbg:y': 492.78192138671875
  - id: duplex_biometrics_sexmismatch
    in:
      - id: input
        source:
          - duplex_extraction_files
      - id: coverage_threshold
        source: duplex_biometrics_coverage_threshold
      - id: json
        default: true
    out:
      - id: biometrics_sexmismatch_csv
      - id: biometrics_sexmismatch_json
    run: >-
      ../command_line_tools/biometrics_sexmismatch/0.2.9/biometrics_sexmismatch.cwl
    label: duplex_biometrics_sexmismatch
    'sbg:x': 12.246261596679688
    'sbg:y': 665.076904296875
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
    'sbg:x': 432.8553466796875
    'sbg:y': 381.737060546875
  - id: collapsed_biometrics_genotype
    in:
      - id: input
        source:
          - collapsed_extraction_files
      - id: discordance_threshold
        source: collapsed_biometrics_discordance_threshold
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
    'sbg:x': 30.168201446533203
    'sbg:y': 924.2750244140625
  - id: collapsed_biometrics_major
    in:
      - id: input
        source:
          - collapsed_extraction_files
      - id: major_threshold
        default: 0.6
        source: collapsed_biometrics_major_threshold
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
    'sbg:x': 37.61433792114258
    'sbg:y': 1125.25341796875
  - id: collapsed_biometrics_minor
    in:
      - id: input
        source:
          - collapsed_extraction_files
      - id: minor_threshold
        default: 0.002
        source: collapsed_biometrics_minor_threshold
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
    'sbg:x': 37.22428512573242
    'sbg:y': 1325.6654052734375
  - id: collapsed_biometrics_sexmismatch
    in:
      - id: input
        source:
          - collapsed_extraction_files
      - id: coverage_threshold
        source: collapsed_biometrics_coverage_threshold
      - id: json
        default: true
        source: biometrics_json
    out:
      - id: biometrics_sexmismatch_csv
      - id: biometrics_sexmismatch_json
    run: >-
      ../command_line_tools/biometrics_sexmismatch/0.2.9/biometrics_sexmismatch.cwl
    label: collapsed_biometrics_sexmismatch
    'sbg:x': 38.33828353881836
    'sbg:y': 1529
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
    'sbg:x': 585.7066650390625
    'sbg:y': 1235.0516357421875
requirements:
  - class: MultipleInputFeatureRequirement
  - class: InlineJavascriptRequirement
  - class: StepInputExpressionRequirement
