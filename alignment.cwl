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
    'sbg:y': 106.5390625
  - id: reads
    type: 'File[]'
    'sbg:x': 0
    'sbg:y': 213.0390625
  - id: P
    type: boolean?
    'sbg:x': 0
    'sbg:y': 959.9453125
  - id: M
    type: boolean?
    'sbg:x': 0
    'sbg:y': 1066.4453125
  - id: read_group_identifier
    type: string
    'sbg:x': 0
    'sbg:y': 853.328125
  - id: sort_order
    type: string?
    'sbg:x': 0
    'sbg:y': 0
  - id: create_bam_index
    type: boolean?
    'sbg:x': 479.32232666015625
    'sbg:y': 854.1065063476562
  - id: read_group_sequnecing_center
    type: string
    'sbg:x': 0
    'sbg:y': 319.65625
  - id: read_group_sequencing_platform
    type: string
    'sbg:x': 0
    'sbg:y': 426.390625
  - id: read_group_sample_name
    type: string
    'sbg:x': 0
    'sbg:y': 533.125
  - id: read_group_platform_unit
    type: string
    'sbg:x': 0
    'sbg:y': 639.859375
  - id: read_group_library
    type: int
    'sbg:x': 0
    'sbg:y': 746.59375
outputs:
  - id: bam
    outputSource:
      - picard_add_or_replace_read_groups_1_96/bam
    type: File
    secondaryFiles:
      - ^.bai
    'sbg:x': 908.6610107421875
    'sbg:y': 533.2421875
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
    'sbg:x': 292.4254455566406
    'sbg:y': 725.329833984375
  - id: picard_add_or_replace_read_groups_1_96
    in:
      - id: input
        source: bwa_mem_0_7_5a/sam
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
    'sbg:x': 715.1737670898438
    'sbg:y': 346.0451965332031
requirements: []
