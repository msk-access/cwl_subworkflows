class: Workflow
cwlVersion: v1.0
id: qc_simplex_bam
doc: Calcualte Quality Control Metrics from Simplex BAM
label: qc_simplex_bam
$namespaces:
  s: 'https://schema.org/'
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: reference
    type: File
    secondaryFiles:
      - ^.fasta.fai
      - ^.dict
    'sbg:x': 0
    'sbg:y': 213.28125
  - id: simplex_bam
    type: File
    label: simplex_bam
    secondaryFiles:
      - ^.bai
    'sbg:x': 0
    'sbg:y': 106.671875
  - id: bait_intervals
    type: File
    label: bait_intervals
    'sbg:x': 0
    'sbg:y': 640.09375
  - id: target_intervals
    type: File
    label: target_intervals
    'sbg:x': 0
    'sbg:y': 0
  - id: hsmetrics_minimum_mapping_quality
    type: int?
    'sbg:x': 0
    'sbg:y': 319.953125
  - id: hsmetrics_minimum_base_quality
    type: int?
    'sbg:x': 0
    'sbg:y': 426.6875
  - id: hsmetrics_coverage_cap
    type: int?
    'sbg:x': 0
    'sbg:y': 533.421875
outputs:
  - id: gatk_collect_alignment_summary_metrics_txt
    outputSource:
      - bam_qc_stats/gatk_collect_alignment_summary_metrics_txt
    type: File
    label: gatk_collect_alignment_summary_metrics_txt
    'sbg:x': 982.1435546875
    'sbg:y': 586.8515625
  - id: gatk_collect_hs_metrics_per_base_coverage_txt
    outputSource:
      - bam_qc_stats/gatk_collect_hs_metrics_per_base_coverage_txt
    type: File
    label: gatk_collect_hs_metrics_per_base_coverage_txt
    'sbg:x': 982.1435546875
    'sbg:y': 480.1171875
  - id: gatk_collect_hs_metrics_per_target_coverage_txt
    outputSource:
      - bam_qc_stats/gatk_collect_hs_metrics_per_target_coverage_txt
    type: File
    label: gatk_collect_hs_metrics_per_target_coverage_txt
    'sbg:x': 982.1435546875
    'sbg:y': 373.3828125
  - id: gatk_collect_hs_metrics_txt
    outputSource:
      - bam_qc_stats/gatk_collect_hs_metrics_txt
    type: File
    label: gatk_collect_hs_metrics_txt
    'sbg:x': 982.1435546875
    'sbg:y': 266.6484375
  - id: gatk_collect_insert_size_metrics_histogram_pdf
    outputSource:
      - bam_qc_stats/gatk_collect_insert_size_metrics_histogram_pdf
    type: File
    label: gatk_collect_insert_size_metrics_histogram_pdf
    'sbg:x': 982.1435546875
    'sbg:y': 159.9140625
  - id: gatk_collect_insert_size_metrics_txt
    outputSource:
      - bam_qc_stats/gatk_collect_insert_size_metrics_txt
    type: File
    label: gatk_collect_insert_size_metrics_txt
    'sbg:x': 982.1435546875
    'sbg:y': 53.1796875
steps:
  - id: bam_qc_stats
    in:
      - id: input
        source:
          - simplex_bam
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
    'sbg:y': 278.078125
requirements:
  - class: SubworkflowFeatureRequirement
$schemas:
  - 'http://schema.org/version/latest/schemaorg-current-http.rdf'
's:author':
  - class: 's:Person'
    's:email': 'mailto:charalk@mskcc.org'
    's:identifier': ''
    's:name': Carmelina Charalambous
's:citation': ''
's:codeRepository': 'https://github.com/msk-access/uncollapsed_bam_generation'
's:contributor':
  - class: 's:Person'
    's:email': 'mailto:shahr2@mskcc.org'
    's:identifier': 'https://orcid.org/0000-0001-9042-6213'
    's:name': Ronak Shah
's:dateCreated': '2022-03-23'
's:license': 'https://spdx.org/licenses/Apache-2.0'
