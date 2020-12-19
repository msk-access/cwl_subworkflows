class: Workflow
cwlVersion: v1.0
id: base_quality_recalibration
label: base_quality_recalibration
$namespaces:
  s: 'https://schema.org/'
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: input
    type: File
    secondaryFiles:
      - ^.bai
    'sbg:x': 0
    'sbg:y': 533.390625
  - id: reference
    type: File
    secondaryFiles:
      - .fai
      - ^.dict
    'sbg:x': 0
    'sbg:y': 106.703125
  - id: read_filter
    type:
      - 'null'
      - type: array
        items: string
        inputBinding:
          prefix: '--read-filter'
    'sbg:x': 0
    'sbg:y': 213.375
  - id: known_sites
    type:
      type: array
      items: File
      inputBinding:
        prefix: '--known-sites'
    secondaryFiles:
      - .idx
    'sbg:x': 0
    'sbg:y': 426.71875
  - id: base_recalibrator_output_file_name
    type: string?
    'sbg:x': 0
    'sbg:y': 746.734375
  - id: add_output_sam_program_record
    type: boolean?
    'sbg:x': 0
    'sbg:y': 853.4375
  - id: disable_read_filter
    type:
      - 'null'
      - type: array
        items: string
        inputBinding:
          prefix: '--disable-read-filter'
    'sbg:x': 0
    'sbg:y': 640.0625
  - id: lenient
    type: boolean?
    'sbg:x': 0
    'sbg:y': 320.046875
  - id: apply_bqsr_create_output_bam_index
    type: boolean?
    'sbg:x': 337.34375
    'sbg:y': 533.453125
  - id: apply_bqsr_output_file_name
    type: string?
    'sbg:x': 337.34375
    'sbg:y': 426.71875
  - id: temporary_directory
    type: string?
    'sbg:x': 0
    'sbg:y': 0
outputs:
  - id: gatk_apply_bqsr_bam
    outputSource:
      - gatk_apply_bqsr_4_1_8_1/gatk_apply_bqsr_bam
    type: File
    secondaryFiles:
      - ^.bai
    'sbg:x': 1269.836181640625
    'sbg:y': 426.71875
steps:
  - id: gatk_base_recalibrator_4_1_8_1
    in:
      - id: input
        source: input
      - id: known_sites
        source:
          - known_sites
      - id: reference
        source: reference
      - id: output_file_name
        source: base_recalibrator_output_file_name
      - id: add_output_sam_program_record
        source: add_output_sam_program_record
      - id: disable_read_filter
        source:
          - disable_read_filter
      - id: lenient
        source: lenient
      - id: read_filter
        source:
          - read_filter
      - id: temporary_directory
        source: temporary_directory
    out:
      - id: gatk_base_recalibrator_output
    run: >-
      ../command_line_tools/gatk_base_recalibrator_4.1.8.1/gatk_base_recalibrator_4.1.8.1.cwl
    label: gatk_base_recalibrator_4.1.8.1
    'sbg:x': 337.34375
    'sbg:y': 263.8515625
  - id: gatk_apply_bqsr_4_1_8_1
    in:
      - id: reference
        source: reference
      - id: create_output_bam_index
        source: apply_bqsr_create_output_bam_index
      - id: bqsr_recal_file
        source: gatk_base_recalibrator_4_1_8_1/gatk_base_recalibrator_output
      - id: input
        source: input
      - id: output_file_name
        source: apply_bqsr_output_file_name
      - id: disable_read_filter
        source:
          - disable_read_filter
      - id: lenient
        source: lenient
      - id: read_filter
        source:
          - read_filter
      - id: temporary_directory
        source: temporary_directory
    out:
      - id: gatk_apply_bqsr_bam
    run: ../command_line_tools/gatk_apply_bqsr_4.1.8.1/gatk_apply_bqsr_4.1.8.1.cwl
    label: gatk_apply_bqsr_4.1.8.1
    'sbg:x': 837.3018188476562
    'sbg:y': 370.5859375
requirements: []
$schemas:
  - 'http://schema.org/version/latest/schemaorg-current-http.rdf'
's:author':
  - class: 's:Person'
    's:email': 'mailto:shahr2@mskcc.org'
    's:identifier': 'https://orcid.org/0000-0001-9042-6213'
    's:name': Ronak Shah
's:citation': ''
's:codeRepository': 'https://github.com/msk-access/cwl_subworkflows/base_quality_recalibration'
's:contributor':
  - class: 's:Person'
    's:email': 'mailto:shahr2@mskcc.org'
    's:identifier': 'https://orcid.org/0000-0001-9042-6213'
    's:name': Ronak Shah
's:dateCreated': '2020-06-09'
's:license': 'https://spdx.org/licenses/Apache-2.0'
