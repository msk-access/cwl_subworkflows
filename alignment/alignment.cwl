#!/usr/bin/env cwl-runner

class: Workflow
cwlVersion: v1.0
label: alignment
$namespaces:
  s: https://schema.org/
  sbg: https://www.sevenbridges.com/

requirements: []

inputs:
- id: reference
  type: File
  secondaryFiles:
  - .fai
  - ^.dict
  - .amb
  - .ann
  - .bwt
  - .pac
  - .sa
  sbg:x: 0
  sbg:y: 107
- id: reads
  type: File[]
  sbg:x: 0
  sbg:y: 214
- id: P
  type: boolean?
  sbg:x: 0
  sbg:y: 963
- id: M
  type: boolean?
  sbg:x: 0
  sbg:y: 1177
- id: read_group_identifier
  type: string
  sbg:x: 0
  sbg:y: 856
- id: sort_order
  type: string?
  sbg:x: 0
  sbg:y: 0
- id: create_bam_index
  type: boolean?
  sbg:x: 319.171875
  sbg:y: 560.5
- id: read_group_sequencing_platform
  type: string
  sbg:x: 0
  sbg:y: 428
- id: read_group_sample_name
  type: string
  sbg:x: 0
  sbg:y: 535
- id: read_group_platform_unit
  type: string
  sbg:x: 0
  sbg:y: 642
- id: read_group_library
  type: string
  sbg:x: 0
  sbg:y: 749
- id: output_file_name
  type: string?
  sbg:x: 319.171875
  sbg:y: 453.5
- id: output
  type: string?
  sbg:x: 0
  sbg:y: 1070
- id: read_group_sequencing_center
  type: string
  sbg:x: 5.036951541900635
  sbg:y: 326.5912170410156
- id: temporary_directory
  label: picard_add_or_replace_read_group_1.96_tmpdir
  type: string?
  sbg:x: 3.3808727264404297
  sbg:y: -127.21382141113281

outputs:
- id: picard_add_or_replace_read_groups_bam
  type: File
  outputSource:
  - >-
    picard_add_or_replace_read_groups_1_96/picard_add_or_replace_read_groups_bam
  sbg:x: 907.4813842773438
  sbg:y: 391.4794921875

steps:
- id: bwa_mem_0_7_5a
  label: bwa-mem
  in:
  - id: M
    source: M
  - id: P
    source: P
  - id: output
    source: output
  - id: reads
    source:
    - reads
  - id: reference
    source: reference
  run: ../command_line_tools/bwa_mem_0.7.5a/bwa_mem_0.7.5a.cwl
  out:
  - id: sam
  sbg:x: 319.171875
  sbg:y: 695.5
- id: picard_add_or_replace_read_groups_1_96
  label: picard_add_or_replace_read_groups_1.96
  in:
  - id: input
    source: bwa_mem_0_7_5a/sam
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
  - id: create_bam_index
    source: create_bam_index
  - id: temporary_directory
    source: temporary_directory
  run: |-
    ../command_line_tools/picard_add_or_replace_read_groups_1.96/picard_add_or_replace_read_groups_1.96.cwl
  out:
  - id: picard_add_or_replace_read_groups_bam
  sbg:x: 650.7478637695312
  sbg:y: 501.9268493652344
id: alignment
$schemas:
- https://schema.org/version/latest/schema.rdf
s:author:
- class: s:Person
  s:email: mailto:sumans@mskcc.org
  s:identifier: ''
  s:name: Shalabh Suman
- class: s:Person
  s:email: mailto:johnsoni@mskcc.org
  s:identifier: ''
  s:name: Ian Jonhnson
s:citation: ''
s:codeRepository: https://github.com/msk-access/cwl_subworkflows/alignment
s:contributor:
- class: s:Person
  s:email: mailto:johnsoni@mskcc.org
  s:identifier: ''
  s:name: Ian Jonhnson
- class: s:Person
  s:email: mailto:shahr2@mskcc.org
  s:identifier: https://orcid.org/0000-0001-9042-6213
  s:name: Ronak Shah
- class: s:Person
  s:email: mailto:sumans@mskcc.org
  s:identifier: ''
  s:name: Shalabh Suman
s:dateCreated: '2019-10-01'
s:license: https://spdx.org/licenses/Apache-2.0
