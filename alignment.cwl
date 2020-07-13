class: Workflow
cwlVersion: v1.0
id: alignment
label: alignment
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: read_group_identifier
    type: string
    'sbg:x': 0
    'sbg:y': 962.15625
  - id: sort_order
    type: string?
    'sbg:x': 0
    'sbg:y': 106.90625
  - id: create_bam_index
    type: boolean?
    'sbg:x': 319.15625
    'sbg:y': 613.390625
  - id: read_group_sequencing_platform
    type: string
    'sbg:x': 0
    'sbg:y': 427.625
  - id: read_group_sample_name
    type: string
    'sbg:x': 0
    'sbg:y': 641.4375
  - id: read_group_platform_unit
    type: string
    'sbg:x': 0
    'sbg:y': 748.34375
  - id: read_group_library
    type: string
    'sbg:x': 0
    'sbg:y': 855.25
  - id: output_file_name
    type: string?
    'sbg:x': 319.15625
    'sbg:y': 506.484375
  - id: read_group_sequencing_center
    type: string
    'sbg:x': 0
    'sbg:y': 534.53125
  - id: temporary_directory
    type: string?
    label: picard_add_or_replace_read_group_1.96_tmpdir
    'sbg:x': 0
    'sbg:y': 0
  - id: reference
    type: File
    'sbg:x': 0
    'sbg:y': 213.8125
  - id: reads
    type: 'File[]'
    'sbg:x': 0
    'sbg:y': 320.71875
  - id: P
    type: boolean?
    'sbg:x': 0
    'sbg:y': 1069.0625
  - id: M
    type: boolean?
    'sbg:x': 0
    'sbg:y': 1282.875
  - id: output
    type: string?
    'sbg:x': 0
    'sbg:y': 1175.96875
outputs:
  - id: bam
    outputSource:
      - picard_add_or_replace_read_groups_1_96/bam
    type: File
    secondaryFiles:
      - ^.bai
    'sbg:x': 972.5267944335938
    'sbg:y': 641.4375
steps:
  - id: picard_add_or_replace_read_groups_1_96
    in:
      - id: input
        source: bwa_mem_0_7_17/output_sam
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
    out:
      - id: bam
    run: >-
      command_line_tools/picard_add_or_replace_read_groups_1.96/picard_add_or_replace_read_groups_1.96.cwl
    label: picard_add_or_replace_read_groups_1.96
    'sbg:x': 692.606689453125
    'sbg:y': 585.0638427734375
  - id: bwa_mem_0_7_17
    in:
      - id: reads
        source:
          - reads
      - id: reference
        source: reference
      - id: sample_id
        source: read_group_sample_name
      - id: M
        source: M
      - id: P
        default: false
        source: P
      - id: output
        source: output
    out:
      - id: output_sam
    run: command_line_tools/bwa_mem_0.7.17/bwa_mem_0.7.17.cwl
    'sbg:x': 598.926025390625
    'sbg:y': 920.3512573242188
requirements: []
