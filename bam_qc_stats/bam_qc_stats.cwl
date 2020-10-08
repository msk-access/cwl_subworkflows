class: Workflow
cwlVersion: v1.0
id: bam_qc_stats
label: bam_qc_stats
$namespaces:
  s: 'https://schema.org/'
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: input
    type: File
    'sbg:x': -496.41986083984375
    'sbg:y': -282.843994140625
  - id: target_intervals
    type: File
    'sbg:x': -490.1000671386719
    'sbg:y': -133.69674682617188
  - id: bait_intervals
    type: File
    'sbg:x': -485.0442199707031
    'sbg:y': 11.658624649047852
  - id: reference
    type: File
    secondaryFiles:
      - ^.fasta.fai
      - ^.dict
    'sbg:x': -504.0036315917969
    'sbg:y': -426.9353942871094
outputs:
  - id: gatk_collect_insert_size_metrics_histogram_pdf
    outputSource:
      - gatk_collect_insert_size_metrics_4_1_8_0/gatk_collect_insert_size_metrics_histogram_pdf
    type: File
    'sbg:x': 395.9356689453125
    'sbg:y': 146.90231323242188
  - id: gatk_collect_insert_size_metrics_txt
    outputSource:
      - gatk_collect_insert_size_metrics_4_1_8_0/gatk_collect_insert_size_metrics_txt
    type: File
    'sbg:x': 389.6158752441406
    'sbg:y': 17.978422164916992
  - id: gatk_collect_hs_metrics_txt
    outputSource:
      - gatk_collect_hs_metrics_4_1_8_0/gatk_collect_hs_metrics_txt
    type: File
    'sbg:x': 384.5600280761719
    'sbg:y': -112.20942687988281
  - id: gatk_collect_hs_metrics_per_base_coverage_txt
    outputSource:
      - gatk_collect_hs_metrics_4_1_8_0/gatk_collect_hs_metrics_per_base_coverage_txt
    type: File
    'sbg:x': 378.240234375
    'sbg:y': -244.92520141601562
  - id: gatk_collect_hs_metrics_per_target_coverage_txt
    outputSource:
      - gatk_collect_hs_metrics_4_1_8_0/gatk_collect_hs_metrics_per_target_coverage_txt
    type: File
    'sbg:x': 371.9204406738281
    'sbg:y': -373.8490905761719
  - id: gatk_collect_alignment_summary_metrics_txt
    outputSource:
      - gatk_collect_alignment_summary_metrics_4_1_3_0/gatk_collect_alignment_summary_metrics_txt
    type: File
    'sbg:x': 373.18438720703125
    'sbg:y': -520.4683837890625
steps:
  - id: gatk_collect_alignment_summary_metrics_4_1_3_0
    in:
      - id: input
        source: input
      - id: reference
        source: reference
    out:
      - id: gatk_collect_alignment_summary_metrics_txt
    run: >-
      ../command_line_tools/gatk_collect_alignment_summary_metrics_4.1.8.0/gatk_collect_alignment_summary_metrics_4.1.8.0.cwl
    label: GATK-CollectAlignmentSummaryMetrics
    'sbg:x': -63.445003509521484
    'sbg:y': -424.1755676269531
  - id: gatk_collect_hs_metrics_4_1_8_0
    in:
      - id: input
        source: input
      - id: bait_intervals
        source: bait_intervals
      - id: target_intervals
        source: target_intervals
      - id: reference
        source: reference
    out:
      - id: gatk_collect_hs_metrics_txt
      - id: gatk_collect_hs_metrics_per_base_coverage_txt
      - id: gatk_collect_hs_metrics_per_target_coverage_txt
    run: >-
      ../command_line_tools/gatk_collect_hs_metrics_4.1.8.0/gatk_collect_hs_metrics_4.1.8.0.cwl
    label: GATK-CollectHsMetrics
    'sbg:x': -61.321895599365234
    'sbg:y': -194.27346801757812
  - id: gatk_collect_insert_size_metrics_4_1_8_0
    in:
      - id: input
        source: input
      - id: histogram_file
        default: histogram.pdf
    out:
      - id: gatk_collect_insert_size_metrics_txt
      - id: gatk_collect_insert_size_metrics_histogram_pdf
    run: >-
      ../command_line_tools/gatk_collect_insert_size_metrics_4.1.8.0/gatk_collect_insert_size_metrics_4.1.8.0.cwl
    label: GATK-CollectInsertSizeMetrics
    'sbg:x': -52.185672760009766
    'sbg:y': 62.291622161865234
requirements: []
$schemas:
  - 'http://schema.org/version/9.0/schemaorg-current-http.rdf'
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
