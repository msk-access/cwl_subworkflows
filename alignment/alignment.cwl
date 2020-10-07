class: Workflow
cwlVersion: v1.0
id: alignment
label: alignment
$namespaces:
  s: 'https://schema.org/'
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: create_bam_index
    type: boolean?
    'sbg:x': 319.15625
    'sbg:y': 852.0390625
  - id: output_file_name
    type: string?
    'sbg:x': 319.15625
    'sbg:y': 745.2109375
  - id: read_group_description
    type: string?
    'sbg:x': 0
    'sbg:y': 1388.765625
  - id: read_group_identifier
    type: string
    'sbg:x': 0
    'sbg:y': 1281.9375
  - id: read_group_library
    type: string
    'sbg:x': 0
    'sbg:y': 1175.109375
  - id: read_group_platform_unit
    type: string
    'sbg:x': 0
    'sbg:y': 1068.28125
  - id: read_group_run_date
    type: string?
    'sbg:x': 0
    'sbg:y': 961.453125
  - id: read_group_sample_name
    type: string
    'sbg:x': 0
    'sbg:y': 854.625
  - id: read_group_sequencing_center
    type: string
    'sbg:x': 0
    'sbg:y': 747.796875
  - id: read_group_sequencing_platform
    type: string
    'sbg:x': 0
    'sbg:y': 640.96875
  - id: sort_order
    type: string?
    'sbg:x': 0
    'sbg:y': 320.484375
  - id: validation_stringency
    type: string?
    'sbg:x': 0
    'sbg:y': 106.828125
  - id: reference
    type: File
    secondaryFiles:
      - .amb
      - .fai
      - .sa
      - ^.dict
      - .ann
      - .bwt
      - .pac
    'sbg:x': 0
    'sbg:y': 427.3125
  - id: reads
    type: 'File[]'
    'sbg:x': 0
    'sbg:y': 534.140625
  - id: output
    type: string?
    'sbg:x': 0
    'sbg:y': 1602.421875
  - id: P
    type: boolean?
    'sbg:x': 0
    'sbg:y': 1495.59375
  - id: M
    type: boolean?
    'sbg:x': 0
    'sbg:y': 1709.25
  - id: T
    type: int?
    'sbg:x': 0
    'sbg:y': 213.65625
  - id: 'Y'
    type: boolean?
    'sbg:x': 0
    'sbg:y': 0
  - id: K
    type: int?
    'sbg:x': 0
    'sbg:y': 1816.078125
  - id: bwa_number_of_threads
    type: int?
    'sbg:x': 0
    'sbg:y': 1922.90625
outputs:
  - id: picard_add_or_replace_read_groups_bam
    outputSource:
      - >-
        picard_add_or_replace_read_groups_4_1_8_1/picard_add_or_replace_read_groups_bam
    type: File
    secondaryFiles:
      - ^.bai?
    'sbg:x': 1379.46142578125
    'sbg:y': 961.453125
steps:
  - id: picard_add_or_replace_read_groups_4_1_8_1
    in:
      - id: input
        source: bwa_mem_0_7_17/bwa_mem_output_sam
      - id: output_file_name
        source: output_file_name
      - id: sort_order
        source: sort_order
      - id: read_group_identifier
        source: read_group_identifier
      - id: read_group_sequencing_center
        source: read_group_sequencing_center
      - id: read_group_library
        source: read_group_library
      - id: read_group_platform_unit
        source: read_group_platform_unit
      - id: read_group_sample_name
        source: read_group_sample_name
      - id: read_group_sequencing_platform
        source: read_group_sequencing_platform
      - id: read_group_description
        source: read_group_description
      - id: read_group_run_date
        source: read_group_run_date
      - id: validation_stringency
        source: validation_stringency
      - id: create_bam_index
        source: create_bam_index
    out:
      - id: picard_add_or_replace_read_groups_bam
    run: >-
      ../command_line_tools/picard_add_or_replace_read_groups_4.1.8.1/picard_add_or_replace_read_groups_4.1.8.1.cwl
    label: picard_add_or_replace_read_groups_4.1.8.1
    'sbg:x': 737.3328857421875
    'sbg:y': 870.453125
  - id: bwa_mem_0_7_17
    in:
      - id: number_of_threads
        source: bwa_number_of_threads
      - id: reads
        source:
          - reads
      - id: reference
        source: reference
      - id: M
        source: M
      - id: P
        source: P
      - id: T
        source: T
      - id: K
        source: K
      - id: output
        source: output
      - id: 'Y'
        source: 'Y'
    out:
      - id: bwa_mem_output_sam
    run: ../command_line_tools/bwa_mem_0.7.17/bwa_mem_0.7.17.cwl
    label: bwa_mem_0.7.17
    'sbg:x': 319.15625
    'sbg:y': 1014.8671875
requirements: []
$schemas:
  - 'http://schema.org/version/9.0/schemaorg-current-http.rdf'
's:author':
  - class: 's:Person'
    's:email': 'mailto:sumans@mskcc.org'
    's:identifier': ''
    's:name': Shalabh Suman
  - class: 's:Person'
    's:email': 'mailto:johnsoni@mskcc.org'
    's:identifier': ''
    's:name': Ian Jonhnson
's:citation': ''
's:codeRepository': 'https://github.com/msk-access/cwl_subworkflows/alignment'
's:contributor':
  - class: 's:Person'
    's:email': 'mailto:johnsoni@mskcc.org'
    's:identifier': ''
    's:name': Ian Jonhnson
  - class: 's:Person'
    's:email': 'mailto:shahr2@mskcc.org'
    's:identifier': 'https://orcid.org/0000-0001-9042-6213'
    's:name': Ronak Shah
  - class: 's:Person'
    's:email': 'mailto:sumans@mskcc.org'
    's:identifier': ''
    's:name': Shalabh Suman
  - class: 's:Person'
    's:email': 'mailto:murphyc4@mskcc.org'
    's:identifier': ''
    's:name': Charlie Murphy
's:dateCreated': '2019-10-01'
's:license': 'https://spdx.org/licenses/Apache-2.0'
