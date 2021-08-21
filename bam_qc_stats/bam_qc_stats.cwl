class: Workflow
cwlVersion: v1.0
id: bam_qc_stats
label: bam_qc_stats
$namespaces:
  s: 'https://schema.org/'
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: input
    type:
      - File
      - type: array
        items: File
    secondaryFiles:
      - ^.bai
    'sbg:x': 0
    'sbg:y': 374.0625
  - id: target_intervals
    type: File
    'sbg:x': 0
    'sbg:y': 160.3125
  - id: bait_intervals
    type: File
    'sbg:x': 0
    'sbg:y': 480.9375
  - id: reference
    type: File
    secondaryFiles:
      - ^.fasta.fai
      - ^.dict
    'sbg:x': 0
    'sbg:y': 267.1875
  - id: temporary_directory
    type: string?
    'sbg:x': 0
    'sbg:y': 53.4375
  - id: hsmetrics_minimum_mapping_quality
    type: int?
    label: hsmetrics_minimum_mapping_quality
    'sbg:x': 1
    'sbg:y': 613
  - id: hsmetrics_minimum_base_quality
    type: int?
    label: hsmetrics_minimum_base_quality
    'sbg:x': 3
    'sbg:y': 743
  - id: hsmetrics_coverage_cap
    type: int?
    label: hsmetrics_coverage_cap
    'sbg:x': 2
    'sbg:y': 872
outputs:
  - id: gatk_collect_insert_size_metrics_histogram_pdf
    outputSource:
      - >-
        gatk_collect_insert_size_metrics_4_1_8_0/gatk_collect_insert_size_metrics_histogram_pdf
    type:
      - File
      - type: array
        items: File
    'sbg:x': 700.636962890625
    'sbg:y': 106.875
  - id: gatk_collect_insert_size_metrics_txt
    outputSource:
      - >-
        gatk_collect_insert_size_metrics_4_1_8_0/gatk_collect_insert_size_metrics_txt
    type:
      - File
      - type: array
        items: File
    'sbg:x': 700.636962890625
    'sbg:y': 0
  - id: gatk_collect_hs_metrics_txt
    outputSource:
      - gatk_collect_hs_metrics_4_1_8_0/gatk_collect_hs_metrics_txt
    type:
      - File
      - type: array
        items: File
    'sbg:x': 700.636962890625
    'sbg:y': 213.75
  - id: gatk_collect_hs_metrics_per_base_coverage_txt
    outputSource:
      - >-
        gatk_collect_hs_metrics_4_1_8_0/gatk_collect_hs_metrics_per_base_coverage_txt
    type:
      - File
      - type: array
        items: File
    'sbg:x': 700.636962890625
    'sbg:y': 427.5
  - id: gatk_collect_hs_metrics_per_target_coverage_txt
    outputSource:
      - >-
        gatk_collect_hs_metrics_4_1_8_0/gatk_collect_hs_metrics_per_target_coverage_txt
    type:
      - File
      - type: array
        items: File
    'sbg:x': 700.636962890625
    'sbg:y': 320.625
  - id: gatk_collect_alignment_summary_metrics_txt
    outputSource:
      - >-
        gatk_collect_alignment_summary_metrics_4_1_3_0/gatk_collect_alignment_summary_metrics_txt
    type:
      - File
      - type: array
        items: File
    'sbg:x': 700.636962890625
    'sbg:y': 534.375
steps:
  - id: gatk_collect_alignment_summary_metrics_4_1_3_0
    in:
      - id: input
        source: input
      - id: reference
        source: reference
      - id: temporary_directory
        source: temporary_directory
    out:
      - id: gatk_collect_alignment_summary_metrics_txt
    run: >-
      ../command_line_tools/gatk_collect_alignment_summary_metrics_4.1.8.0/gatk_collect_alignment_summary_metrics_4.1.8.0.cwl
    label: GATK-CollectAlignmentSummaryMetrics
    'sbg:x': 334.2886657714844
    'sbg:y': 560.505126953125
  - id: gatk_collect_hs_metrics_4_1_8_0
    in:
      - id: input
        source: input
      - id: bait_intervals
        source: bait_intervals
      - id: target_intervals
        source: target_intervals
      - id: coverage_cap
        source: hsmetrics_coverage_cap
      - id: minimum_base_quality
        source: hsmetrics_minimum_base_quality
      - id: minimum_mapping_quality
        source: hsmetrics_minimum_mapping_quality
      - id: reference
        source: reference
      - id: temporary_directory
        source: temporary_directory
    out:
      - id: gatk_collect_hs_metrics_txt
      - id: gatk_collect_hs_metrics_per_base_coverage_txt
      - id: gatk_collect_hs_metrics_per_target_coverage_txt
    run: >-
      ../command_line_tools/gatk_collect_hs_metrics_4.1.8.0/gatk_collect_hs_metrics_4.1.8.0.cwl
    label: GATK-CollectHsMetrics
    'sbg:x': 327.8453674316406
    'sbg:y': 372.8453674316406
  - id: gatk_collect_insert_size_metrics_4_1_8_0
    in:
      - id: input
        source: input
      - id: histogram_file
        default: histogram.pdf
      - id: temporary_directory
        source: temporary_directory
    out:
      - id: gatk_collect_insert_size_metrics_txt
      - id: gatk_collect_insert_size_metrics_histogram_pdf
    run: >-
      ../command_line_tools/gatk_collect_insert_size_metrics_4.1.8.0/gatk_collect_insert_size_metrics_4.1.8.0.cwl
    label: GATK-CollectInsertSizeMetrics
    'sbg:x': 335.57733154296875
    'sbg:y': 194.7628936767578
requirements: []
$schemas:
  - 'http://schema.org/version/latest/schemaorg-current-http.rdf'
's:author':
  - class: 's:Person'
    's:email': 'mailto:murphyc4@mskcc.org'
    's:identifier': ''
    's:name': Charles Murphy
's:citation': ''
's:codeRepository': 'https://github.com/msk-access/uncollapsed_bam_generation'
's:contributor':
  - class: 's:Person'
    's:email': 'mailto:shahr2@mskcc.org'
    's:identifier': 'https://orcid.org/0000-0001-9042-6213'
    's:name': Ronak Shah
's:dateCreated': '2020-09-23'
's:license': 'https://spdx.org/licenses/Apache-2.0'
