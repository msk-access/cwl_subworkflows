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
    'sbg:x': 0
    'sbg:y': 747.078125
  - id: input
    type: File
    'sbg:x': 0
    'sbg:y': 2880.015625
  - id: reverse_per_base_tags_simplex_duplex
    type: boolean?
    'sbg:x': 0
    'sbg:y': 320.203125
  - id: require_single_strand_agreement_simplex_duplex
    type: boolean?
    'sbg:x': 0
    'sbg:y': 533.671875
  - id: output_file_name_simplex_duplex
    type: string?
    'sbg:x': 0
    'sbg:y': 853.6875
  - id: number_of_threads
    type: int?
    'sbg:x': 0
    'sbg:y': 1280.125
  - id: min_reads_simplex_duplex
    type: 'int[]?'
    'sbg:x': 0
    'sbg:y': 1386.734375
  - id: min_mean_base_quality_simplex_duplex
    type: int?
    'sbg:x': 0
    'sbg:y': 1600.015625
  - id: max_base_error_rate_simplex_duplex
    type: 'float[]?'
    'sbg:x': 0
    'sbg:y': 2666.796875
  - id: max_no_call_fraction_simplex_duplex
    type: float?
    'sbg:x': 0
    'sbg:y': 2453.578125
  - id: min_base_quality_simplex_duplex
    type: int?
    'sbg:x': 0
    'sbg:y': 1813.484375
  - id: memory_per_job
    type: int?
    'sbg:x': 0
    'sbg:y': 2026.953125
  - id: memory_overhead
    type: int?
    'sbg:x': 0
    'sbg:y': 2133.6875
  - id: max_read_error_rate_simplex_duplex
    type: 'float[]?'
    'sbg:x': 0
    'sbg:y': 2240.359375
  - id: reverse_per_base_tags_duplex
    type: boolean?
    'sbg:x': 0
    'sbg:y': 426.9375
  - id: require_single_strand_agreement_duplex
    type: boolean?
    'sbg:x': 0
    'sbg:y': 640.40625
  - id: output_file_name_duplex
    type: string?
    'sbg:x': 0
    'sbg:y': 1173.515625
  - id: min_reads_duplex
    type: 'int[]?'
    'sbg:x': 0
    'sbg:y': 1493.34375
  - id: min_mean_base_quality_duplex
    type: int?
    'sbg:x': 0
    'sbg:y': 1706.75
  - id: min_base_quality_duplex
    type: int?
    'sbg:x': 0
    'sbg:y': 1920.21875
  - id: max_read_error_rate_duplex
    type: 'float[]?'
    'sbg:x': 0
    'sbg:y': 2346.96875
  - id: max_no_call_fraction_duplex
    type: float?
    'sbg:x': 0
    'sbg:y': 2560.1875
  - id: max_base_error_rate_duplex
    type: 'float[]?'
    'sbg:x': 0
    'sbg:y': 2773.40625
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
    'sbg:y': 1066.90625
  - id: create_index
    type: boolean?
    'sbg:x': 454.71875
    'sbg:y': 1584.40625
  - id: assume_sorted
    type: boolean?
    'sbg:x': 454.71875
    'sbg:y': 1691.015625
  - id: output_file_name_simplex_aln_metrics
    type: string?
    'sbg:x': 0
    'sbg:y': 960.296875
  - id: output_file_name_simpex
    type: string?
    'sbg:x': 1107.5958251953125
    'sbg:y': 1799.1015625
  - id: min_simplex_reads
    type: int?
    'sbg:x': 1301.595703125
    'sbg:y': 1755.10205078125
outputs:
  - id: fgbio_filter_consensus_reads_bam
    outputSource:
      - fgbio_filter_consensus_reads_1_2_0/fgbio_filter_consensus_reads_bam
    type: File
    'sbg:x': 1039.097900390625
    'sbg:y': 1546.7109375
  - id: fgbio_postprocessing_simplex_bam
    outputSource:
      - >-
        fgbio_postprocessing_simplex_filter_0_1_8/fgbio_postprocessing_simplex_bam
    type: File
    'sbg:x': 1543.551025390625
    'sbg:y': 1588.7109375
  - id: gatk_collect_alignment_summary_metrics_txt_simplex
    outputSource:
      - >-
        gatk_collect_alignment_summary_metrics_4_1_3_1/gatk_collect_alignment_summary_metrics_txt
    type: File
    'sbg:x': 2048.004150390625
    'sbg:y': 1439.9765625
  - id: gatk_collect_alignment_summary_metrics_txt_duplex
    outputSource:
      - >-
        gatk_collect_alignment_summary_metrics_4_1_3_0/gatk_collect_alignment_summary_metrics_txt
    type: File
    'sbg:x': 1543.551025390625
    'sbg:y': 1291.2421875
steps:
  - id: fgbio_filter_consensus_reads_1_2_0
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
          - max_read_error_rate_simplex_duplex
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
    out:
      - id: fgbio_filter_consensus_reads_bam
    run: >-
      ../command_line_tools/fgbio_filter_consensus_reads_1.2.0/fgbio_filter_consensus_reads_1.2.0.cwl
    label: fgbio_filter_consensus_reads_1.2.0
    'sbg:x': 454.71875
    'sbg:y': 1386.734375
  - id: fgbio_filter_consensus_reads_1_2_1
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
    out:
      - id: fgbio_filter_consensus_reads_bam
    run: >-
      ../command_line_tools/fgbio_filter_consensus_reads_1.2.0/fgbio_filter_consensus_reads_1.2.0.cwl
    label: fgbio_filter_consensus_reads_1.2.0
    'sbg:x': 454.71875
    'sbg:y': 1098
  - id: fgbio_postprocessing_simplex_filter_0_1_8
    in:
      - id: input_bam
        source: fgbio_filter_consensus_reads_1_2_1/fgbio_filter_consensus_reads_bam
      - id: output_file_name
        source: output_file_name_simpex
      - id: min_simplex_reads
        source: min_simplex_reads
    out:
      - id: fgbio_postprocessing_simplex_bam
    run: >-
      ../command_line_tools/fgbio_postprocessing_simplex_filter_0.1.8/fgbio_postprocessing_simplex_filter_0.1.8.cwl
    label: fgbio_postprocessing_simplex_filter_0.1.8
    'sbg:x': 1039.097900390625
    'sbg:y': 1439.9765625
  - id: gatk_collect_alignment_summary_metrics_4_1_3_0
    in:
      - id: input
        source: fgbio_filter_consensus_reads_1_2_0/fgbio_filter_consensus_reads_bam
      - id: output_file_name
        source: output_file_name_duplex_aln_metrics
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
    'sbg:x': 1039.097900390625
    'sbg:y': 1291.2421875
  - id: gatk_collect_alignment_summary_metrics_4_1_3_1
    in:
      - id: input
        source: >-
          fgbio_postprocessing_simplex_filter_0_1_8/fgbio_postprocessing_simplex_bam
      - id: output_file_name
        source: output_file_name_simplex_aln_metrics
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
    'sbg:x': 1543.551025390625
    'sbg:y': 1439.9765625
requirements:
  - class: MultipleInputFeatureRequirement
$schemas:
  - 'https://schema.org/version/latest/schema.rdf'
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
