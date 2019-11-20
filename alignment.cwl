class: Workflow
cwlVersion: v1.0
id: alignment
label: alignment
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
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
    'sbg:x': 0
    'sbg:y': 106.875
  - id: reads
    type: 'File[]'
    'sbg:x': 0
    'sbg:y': 213.75
  - id: P
    type: boolean?
    'sbg:x': 0
    'sbg:y': 961.875
  - id: M
    type: boolean?
    'sbg:x': 0
    'sbg:y': 1175.625
  - id: read_group_identifier
    type: string
    'sbg:x': 0
    'sbg:y': 855
  - id: sort_order
    type: string?
    'sbg:x': 0
    'sbg:y': 0
  - id: create_bam_index
    type: boolean?
    'sbg:x': 319.140625
    'sbg:y': 559.8125
  - id: read_group_sequencing_platform
    type: string
    'sbg:x': 0
    'sbg:y': 320.625
  - id: read_group_sample_name
    type: string
    'sbg:x': 0
    'sbg:y': 534.375
  - id: read_group_platform_unit
    type: string
    'sbg:x': 0
    'sbg:y': 641.25
  - id: read_group_library
    type: string
    'sbg:x': 0
    'sbg:y': 748.125
  - id: output_file_name
    type: string?
    'sbg:x': 319.140625
    'sbg:y': 452.9375
  - id: output
    type: string?
    'sbg:x': 0
    'sbg:y': 1068.75
  - id: read_group_sequencing_center
    type: string
    'sbg:x': 0
    'sbg:y': 427.5
outputs:
  - id: bam
    outputSource:
      - picard_add_or_replace_read_groups_1_96/bam
    type: File
    secondaryFiles:
      - ^.bai
    'sbg:x': 913.2032470703125
    'sbg:y': 587.8125
steps:
  - id: bwa_mem_0_7_5a
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
    out:
      - id: sam
    run: command_line_tools/bwa_mem_0.7.5a/bwa_mem_0.7.5a.cwl
    label: bwa-mem
    'sbg:x': 319.140625
    'sbg:y': 694.6875
  - id: picard_add_or_replace_read_groups_1_96
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
    out:
      - id: bam
    run: >-
      command_line_tools/picard_add_or_replace_read_groups_1.96/picard_add_or_replace_read_groups_1.96.cwl
    label: picard_add_or_replace_read_groups_1.96
    'sbg:x': 520.261962890625
    'sbg:y': 524.75
requirements: []
