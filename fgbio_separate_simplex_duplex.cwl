class: Workflow
cwlVersion: v1.0
id: fgbio_separate_simplex_duplex
label: fgbio_separate_simplex_duplex
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: input
    type: File
    'sbg:x': -528.31298828125
    'sbg:y': 55
  - id: reference_fasta
    type: File
    'sbg:x': -539
    'sbg:y': -111
outputs:
  - id: picard_collect_alignment_summary_metrics_txt_1
    outputSource:
      - >-
        picard_collect_alignment_summary_metrics_2_8_1/picard_collect_alignment_summary_metrics_txt
    type: File
    label: alignment_summary_metrics_duplex
    'sbg:x': 92.68701171875
    'sbg:y': 212
  - id: picard_collect_alignment_summary_metrics_txt
    outputSource:
      - >-
        picard_collect_alignment_summary_metrics_2_8_2/picard_collect_alignment_summary_metrics_txt
    type: File
    label: alignment_summary_metrics_simplex
    'sbg:x': 209.68701171875
    'sbg:y': -54
  - id: fgbio_duplex_bam
    outputSource:
      - fgbio_filter_consensus_reads_1_2_0/fgbio_filter_consensus_reads_bam
    type: File
    'sbg:x': -163.31298828125
    'sbg:y': 317
  - id: fgbio_simplex_bam
    outputSource:
      - >-
        fgbio_postprocessing_simplex_filter_0_1_8/fgbio_postprocessing_simplex_bam
    type: File
    'sbg:x': 58.68701171875
    'sbg:y': -413.9978332519531
steps:
  - id: fgbio_filter_consensus_reads_1_2_0
    in:
      - id: input
        source: input
      - id: reference_fasta
        source: reference_fasta
      - id: min_reads
        default:
          - 2
          - 1
          - 1
    out:
      - id: fgbio_filter_consensus_reads_bam
    run: >-
      command_line_tools/fgbio_filter_consensus_reads_1.2.0/fgbio_filter_consensus_reads_1.2.0.cwl
    label: fgbio_filter_consensus_reads_1.2.0__duplex
    'sbg:x': -341
    'sbg:y': 119
  - id: fgbio_filter_consensus_reads_1_2_1
    in:
      - id: input
        source: input
      - id: reference_fasta
        source: reference_fasta
    out:
      - id: fgbio_filter_consensus_reads_bam
    run: >-
      command_line_tools/fgbio_filter_consensus_reads_1.2.0/fgbio_filter_consensus_reads_1.2.0.cwl
    label: fgbio_filter_consensus_reads_1.2.0__simplex_duplex
    'sbg:x': -275
    'sbg:y': -211
  - id: picard_collect_alignment_summary_metrics_2_8_1
    in:
      - id: input
        source: fgbio_filter_consensus_reads_1_2_0/fgbio_filter_consensus_reads_bam
      - id: reference_sequence
        source: reference_fasta
    out:
      - id: picard_collect_alignment_summary_metrics_txt
    run: >-
      command_line_tools/picard_collect_alignment_summary_metrics_2.21.2/picard_collect_alignment_summary_metrics_2.21.2.cwl
    label: picard_collect_alignment_summary_metrics_2.8.1
    'sbg:x': -90
    'sbg:y': 36
  - id: fgbio_postprocessing_simplex_filter_0_1_8
    in:
      - id: input_bam
        source: fgbio_filter_consensus_reads_1_2_1/fgbio_filter_consensus_reads_bam
    out:
      - id: fgbio_postprocessing_simplex_bam
    run: >-
      command_line_tools/fgbio_postprocessing_simplex_filter_0.1.8/fgbio_postprocessing_simplex_filter_0.1.8.cwl
    label: fgbio_postprocessing_simplex_filter_0.1.8
    'sbg:x': -133
    'sbg:y': -206
  - id: picard_collect_alignment_summary_metrics_2_8_2
    in:
      - id: input
        source: >-
          fgbio_postprocessing_simplex_filter_0_1_8/fgbio_postprocessing_simplex_bam
      - id: reference_sequence
        source: reference_fasta
    out:
      - id: picard_collect_alignment_summary_metrics_txt
    run: >-
      command_line_tools/picard_collect_alignment_summary_metrics_2.21.2/picard_collect_alignment_summary_metrics_2.21.2.cwl
    label: picard_collect_alignment_summary_metrics_2.8.1
    'sbg:x': 78.68701171875
    'sbg:y': -178
requirements: []
