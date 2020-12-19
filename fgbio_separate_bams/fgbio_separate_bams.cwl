class: Workflow
cwlVersion: v1.0
id: fgbio_separate_bams
label: fgbio_separate_bams
$namespaces:
  s: 'https://schema.org/'
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: reference_fasta
    type: File
    secondaryFiles:
      - .fai
      - ^.dict
    'sbg:x': 0
    'sbg:y': 853.859375
  - id: input
    type: File
    secondaryFiles:
      - ^.bai
    'sbg:x': 0
    'sbg:y': 3201.515625
  - id: reverse_per_base_tags_simplex_duplex
    type: boolean?
    'sbg:x': 0
    'sbg:y': 426.9375
  - id: require_single_strand_agreement_simplex_duplex
    type: boolean?
    'sbg:x': 0
    'sbg:y': 640.40625
  - id: output_file_name_simplex_duplex
    type: string?
    'sbg:x': 0
    'sbg:y': 960.5625
  - id: number_of_threads
    type: int?
    'sbg:x': 0
    'sbg:y': 1494.078125
  - id: min_reads_simplex_duplex
    type: 'int[]'
    'sbg:x': 0
    'sbg:y': 1707.484375
  - id: min_mean_base_quality_simplex_duplex
    type: int?
    'sbg:x': 0
    'sbg:y': 1920.90625
  - id: max_base_error_rate_simplex_duplex
    type: 'float[]?'
    'sbg:x': 0
    'sbg:y': 2988.109375
  - id: max_no_call_fraction_simplex_duplex
    type: float?
    'sbg:x': 0
    'sbg:y': 2774.703125
  - id: min_base_quality_simplex_duplex
    type: int?
    'sbg:x': 0
    'sbg:y': 2134.375
  - id: memory_per_job
    type: int?
    'sbg:x': 0
    'sbg:y': 2347.84375
  - id: memory_overhead
    type: int?
    'sbg:x': 0
    'sbg:y': 2454.578125
  - id: max_read_error_rate_simplex_duplex
    type: 'float[]?'
    'sbg:x': 0
    'sbg:y': 2561.296875
  - id: reverse_per_base_tags_duplex
    type: boolean?
    'sbg:x': 0
    'sbg:y': 533.671875
  - id: require_single_strand_agreement_duplex
    type: boolean?
    'sbg:x': 0
    'sbg:y': 747.140625
  - id: output_file_name_duplex
    type: string?
    'sbg:x': 0
    'sbg:y': 1387.375
  - id: min_reads_duplex
    type: 'int[]'
    'sbg:x': 0
    'sbg:y': 1814.1875
  - id: min_mean_base_quality_duplex
    type: int?
    'sbg:x': 0
    'sbg:y': 2027.640625
  - id: min_base_quality_duplex
    type: int?
    'sbg:x': 0
    'sbg:y': 2241.109375
  - id: max_read_error_rate_duplex
    type: 'float[]?'
    'sbg:x': 0
    'sbg:y': 2668
  - id: max_no_call_fraction_duplex
    type: float?
    'sbg:x': 0
    'sbg:y': 2881.40625
  - id: max_base_error_rate_duplex
    type: 'float[]?'
    'sbg:x': 0
    'sbg:y': 3094.8125
  - id: validation_stringency
    type: string?
    'sbg:x': 0
    'sbg:y': 0
  - id: use_jdk_inflater
    type: boolean?
    'sbg:x': 0
    'sbg:y': 106.734375
  - id: use_jdk_deflater
    type: boolean?
    'sbg:x': 0
    'sbg:y': 213.46875
  - id: output_file_name_duplex_aln_metrics
    type: string?
    'sbg:x': 0
    'sbg:y': 1280.671875
  - id: create_index
    type: boolean?
    'sbg:x': 454.703125
    'sbg:y': 1745.1328125
  - id: assume_sorted
    type: boolean?
    'sbg:x': 454.703125
    'sbg:y': 1851.8359375
  - id: output_file_name_simplex_aln_metrics
    type: string?
    'sbg:x': 0
    'sbg:y': 1067.265625
  - id: output_file_name_simpex
    type: string?
    'sbg:x': 0
    'sbg:y': 1173.96875
  - id: min_simplex_reads
    type: int?
    'sbg:x': 0
    'sbg:y': 1600.78125
  - id: temporary_directory
    type: string?
    'sbg:x': 0
    'sbg:y': 320.203125
outputs:
  - id: fgbio_filter_consensus_reads_duplex_bam
    outputSource:
      - >-
        fgbio_filter_consensus_reads_1_2_0_duplex/fgbio_filter_consensus_reads_bam
    type: File
    secondaryFiles:
      - ^.bai
    'sbg:x': 1063.6285400390625
    'sbg:y': 1774.8515625
  - id: fgbio_postprocessing_simplex_bam
    outputSource:
      - >-
        fgbio_postprocessing_simplex_filter_0_1_8/fgbio_postprocessing_simplex_bam
    type: File
    secondaryFiles:
      - ^.bai
    'sbg:x': 1607.5848388671875
    'sbg:y': 1756.484375
  - id: gatk_collect_alignment_summary_metrics_txt_duplex
    outputSource:
      - >-
        gatk_collect_alignment_summary_metrics_4.1.8.0_duplex/gatk_collect_alignment_summary_metrics_txt
    type: File
    'sbg:x': 1607.5848388671875
    'sbg:y': 1445.015625
  - id: fgbio_filter_consensus_reads_simplex_duplex_bam
    outputSource:
      - >-
        fgbio_filter_consensus_reads_1_2_1_simplex_duplex/fgbio_filter_consensus_reads_bam
    type: File
    secondaryFiles:
      - ^.bai
    'sbg:x': 1063.6285400390625
    'sbg:y': 1668.1171875
  - id: gatk_collect_alignment_summary_metrics_txt_simplex
    outputSource:
      - >-
        gatk_collect_alignment_summary_metrics_4.1.8.0_simplex/gatk_collect_alignment_summary_metrics_txt
    type: File
    'sbg:x': 2125.246826171875
    'sbg:y': 1600.75
steps:
  - id: fgbio_filter_consensus_reads_1_2_0_duplex
    in:
      - id: memory_overhead
        source: memory_overhead
      - id: number_of_threads
        source: number_of_threads
      - id: input
        source: input
      - id: output_file_name
        source: output_file_name_duplex
      - id: reference_fasta
        source: reference_fasta
      - id: reverse_per_base_tags
        source: reverse_per_base_tags_duplex
      - id: min_reads
        source:
          - min_reads_duplex
      - id: max_read_error_rate
        source:
          - max_read_error_rate_duplex
      - id: max_base_error_rate
        source:
          - max_base_error_rate_duplex
      - id: min_base_quality
        source: min_base_quality_duplex
      - id: max_no_call_fraction
        source: max_no_call_fraction_duplex
      - id: min_mean_base_quality
        source: min_mean_base_quality_duplex
      - id: require_single_strand_agreement
        source: require_single_strand_agreement_duplex
      - id: temporary_directory
        source: temporary_directory
    out:
      - id: fgbio_filter_consensus_reads_bam
    run: >-
      ../command_line_tools/fgbio_filter_consensus_reads_1.2.0/fgbio_filter_consensus_reads_1.2.0.cwl
    label: fgbio_filter_consensus_reads_1.2.0_duplex
    'sbg:x': 454.703125
    'sbg:y': 1547.4140625
  - id: fgbio_filter_consensus_reads_1_2_1_simplex_duplex
    in:
      - id: memory_per_job
        source: memory_per_job
      - id: memory_overhead
        source: memory_overhead
      - id: number_of_threads
        source: number_of_threads
      - id: input
        source: input
      - id: output_file_name
        source: output_file_name_simplex_duplex
      - id: reference_fasta
        source: reference_fasta
      - id: reverse_per_base_tags
        source: reverse_per_base_tags_simplex_duplex
      - id: min_reads
        source:
          - min_reads_simplex_duplex
      - id: max_read_error_rate
        source:
          - max_read_error_rate_simplex_duplex
      - id: max_base_error_rate
        source:
          - max_base_error_rate_simplex_duplex
      - id: min_base_quality
        source: min_base_quality_simplex_duplex
      - id: max_no_call_fraction
        source: max_no_call_fraction_simplex_duplex
      - id: min_mean_base_quality
        source: min_mean_base_quality_simplex_duplex
      - id: require_single_strand_agreement
        source: require_single_strand_agreement_simplex_duplex
      - id: temporary_directory
        source: temporary_directory
    out:
      - id: fgbio_filter_consensus_reads_bam
    run: >-
      ../command_line_tools/fgbio_filter_consensus_reads_1.2.0/fgbio_filter_consensus_reads_1.2.0.cwl
    label: fgbio_filter_consensus_reads_1.2.0_simplex_duplex
    'sbg:x': 454.703125
    'sbg:y': 1251.6796875
  - id: fgbio_postprocessing_simplex_filter_0_1_8
    in:
      - id: input_bam
        source: >-
          fgbio_filter_consensus_reads_1_2_1_simplex_duplex/fgbio_filter_consensus_reads_bam
      - id: output_file_name
        source: output_file_name_simpex
      - id: min_simplex_reads
        source: min_simplex_reads
    out:
      - id: fgbio_postprocessing_simplex_bam
    run: >-
      ../command_line_tools/fgbio_postprocessing_simplex_filter_0.1.8/fgbio_postprocessing_simplex_filter_0.1.8.cwl
    label: fgbio_postprocessing_simplex_filter_0.1.8
    'sbg:x': 1063.6285400390625
    'sbg:y': 1547.3828125
  - id: gatk_collect_alignment_summary_metrics_4.1.8.0_duplex
    in:
      - id: input
        source: >-
          fgbio_filter_consensus_reads_1_2_0_duplex/fgbio_filter_consensus_reads_bam
      - id: output_file_name
        source: output_file_name_duplex_aln_metrics
      - id: reference
        source: reference_fasta
      - id: validation_stringency
        source: validation_stringency
      - id: assume_sorted
        source: assume_sorted
      - id: create_index
        source: create_index
      - id: use_jdk_deflater
        source: use_jdk_deflater
      - id: use_jdk_inflater
        source: use_jdk_inflater
      - id: temporary_directory
        source: temporary_directory
    out:
      - id: gatk_collect_alignment_summary_metrics_txt
    run: >-
      ../command_line_tools/gatk_collect_alignment_summary_metrics_4.1.8.0/gatk_collect_alignment_summary_metrics_4.1.8.0.cwl
    label: GATK-CollectAlignmentSummaryMetrics
    'sbg:x': 1063.6285400390625
    'sbg:y': 1370.6484375
  - id: gatk_collect_alignment_summary_metrics_4.1.8.0_simplex
    in:
      - id: input
        source: >-
          fgbio_postprocessing_simplex_filter_0_1_8/fgbio_postprocessing_simplex_bam
      - id: output_file_name
        source: output_file_name_simplex_aln_metrics
      - id: reference
        source: reference_fasta
      - id: validation_stringency
        source: validation_stringency
      - id: assume_sorted
        source: assume_sorted
      - id: create_index
        source: create_index
      - id: use_jdk_deflater
        source: use_jdk_deflater
      - id: use_jdk_inflater
        source: use_jdk_inflater
    out:
      - id: gatk_collect_alignment_summary_metrics_txt
    run: >-
      ../command_line_tools/gatk_collect_alignment_summary_metrics_4.1.8.0/gatk_collect_alignment_summary_metrics_4.1.8.0.cwl
    label: GATK-CollectAlignmentSummaryMetrics
    'sbg:x': 1607.5848388671875
    'sbg:y': 1600.75
requirements: []
$schemas:
  - 'http://schema.org/version/latest/schemaorg-current-http.rdf'
's:author':
  - class: 's:Person'
    's:email': 'mailto:shahr2@mskcc.org'
    's:identifier': 'https://orcid.org/0000-0001-9042-6213'
    's:name': Ronak Shah
's:citation': ''
's:codeRepository': 'https://github.com/msk-access/cwl_subworkflows/fgbio_separate_bams'
's:contributor':
  - class: 's:Person'
    's:email': 'mailto:shahr2@mskcc.org'
    's:identifier': 'https://orcid.org/0000-0001-9042-6213'
    's:name': Ronak Shah
's:dateCreated': '2020-06-09'
's:license': 'https://spdx.org/licenses/Apache-2.0'
