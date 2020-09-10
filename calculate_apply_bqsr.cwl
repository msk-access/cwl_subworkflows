class: Workflow
cwlVersion: v1.0
id: calculate_apply_bqsr_cwl
label: calculate_apply_bqsr.cwl
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: known_sites_12
    type: File
    secondaryFiles:
      - .idx
    'sbg:x': 0
    'sbg:y': 214
  - id: input
    type: File
    secondaryFiles:
      - ^.bai
    'sbg:x': 0
    'sbg:y': 321
  - id: known_sites_2
    type: File?
    secondaryFiles:
      - .idx
    'sbg:x': 0
    'sbg:y': 107
  - id: reference
    type: File
    secondaryFiles:
      - .fai
      - ^.dict
    'sbg:x': 0
    'sbg:y': 0
  - id: read_filter
    type:
      - 'null'
      - type: array
        items: string
        inputBinding:
          prefix: '--read-filter'
    'sbg:x': -324.8984375
    'sbg:y': 74
outputs:
  - id: bqsr_bam
    outputSource:
      - gatk_apply_bqsr_4_1_2_1/output
    type: File?
    secondaryFiles:
      - ^.bai
    'sbg:x': 616.9488525390625
    'sbg:y': 106.5
steps:
  - id: gatk_base_recalibrator_4_1_2_1
    in:
      - id: input
        source: input
      - id: known_sites_1
        source: known_sites_1
      - id: reference
        source: reference
      - id: read_filter
        source:
          - read_filter
      - id: known_sites_2
        source: known_sites_2
    out:
      - id: output
    run: >-
      command_line_tools/gatk_BaseRecalibrator_4.1.2.0/gatk_baserecalibrator_4.1.2.0.cwl
    label: gatk_base_recalibrator_4.1.2.0
    'sbg:x': 167.375
    'sbg:y': 139.5
  - id: gatk_apply_bqsr_4_1_2_1
    in:
      - id: reference
        source: reference
      - id: bqsr_recal_file
        source: gatk_base_recalibrator_4_1_2_1/output
      - id: input
        source: input
    out:
      - id: output
    run: command_line_tools/gatk_ApplyBQSR_4.1.2.0/gatk_ApplyBQSR_4.1.2.0.cwl
    label: gatk_apply_bqsr_4.1.2.0
    'sbg:x': 411.55841064453125
    'sbg:y': 146.5
requirements: []
