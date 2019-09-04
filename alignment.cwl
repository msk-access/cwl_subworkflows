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
    'sbg:x': 0
    'sbg:y': 107
  - id: reads
    type: 'File[]'
    'sbg:x': 0
    'sbg:y': 214
  - id: P
    type: boolean?
    'sbg:x': 0
    'sbg:y': 963
  - id: M
    type: boolean?
    'sbg:x': 0
    'sbg:y': 1070
  - id: read_group_identifier
    type: string
    'sbg:x': 0
    'sbg:y': 856
  - id: sort_order
    type: string?
    'sbg:x': 0
    'sbg:y': 0
  - id: create_bam_index
    type: boolean?
    'sbg:x': 319.171875
    'sbg:y': 514
  - id: read_group_sequnecing_center
    type: string
    'sbg:x': 0
    'sbg:y': 321
  - id: read_group_sequencing_platform
    type: string
    'sbg:x': 0
    'sbg:y': 428
  - id: read_group_sample_name
    type: string
    'sbg:x': 0
    'sbg:y': 535
  - id: read_group_platform_unit
    type: string
    'sbg:x': 0
    'sbg:y': 642
  - id: read_group_library
    type: int
    'sbg:x': 0
    'sbg:y': 749
  - id: output_file_name
    type: string?
    'sbg:x': 319.171875
    'sbg:y': 407
outputs:
  - id: bam
    outputSource:
      - picard_add_or_replace_read_groups_1_96/bam
    type: File
    secondaryFiles:
      - ^.bai
    'sbg:x': 918.5819091796875
    'sbg:y': 535
steps:
  - id: bwa_mem_0_7_5a
    in:
      - id: M
        source: M
      - id: P
        source: P
      - id: reads
        source:
          - reads
      - id: reference
        source: reference
    out:
      - id: sam
    run: command_line_tools/bwa_mem_0.7.5a/bwa_mem_0.7.5a.cwl
    label: bwa-mem
    'sbg:x': 319.171875
    'sbg:y': 642
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
      - id: read_group_sequnecing_center
        source: read_group_sequnecing_center
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
    'sbg:x': 515.890625
    'sbg:y': 472
requirements: []
