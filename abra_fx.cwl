class: Workflow
cwlVersion: v1.0
id: abra_fx_cwl
label: abra_fx.cwl
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: input_bam
    type:
      - File
      - type: array
        items: File
    secondaryFiles:
      - ^.bai
    'sbg:x': -21
    'sbg:y': 186
  - id: reference_fasta
    type: File
    secondaryFiles:
      - .fai
      - ^.dict
    'sbg:x': 0
    'sbg:y': 0
  - id: bam_index
    type: boolean?
    'sbg:x': 0
    'sbg:y': 321
  - id: option_bedgraph
    type: boolean?
    'sbg:x': -0.9758758544921875
    'sbg:y': 473.5
outputs:
  - id: bam
    outputSource:
      - picard_fix_mate_information_1_97/bam
    type: File
    secondaryFiles:
      - ^.bai
    'sbg:x': 964.0241088867188
    'sbg:y': 49.5
steps:
  - id: bedtools_genomecov
    in:
      - id: input
        source: input_bam
      - id: option_bedgraph
        source: option_bedgraph
    out:
      - id: output_file
    run: >-
      command_line_tools/bedtools_genomecov_v2.28.0_cv2/bedtools_genomecov_v2.28.0_cv2.cwl
    label: bedtools_genomecov
    'sbg:x': 263.0245666503906
    'sbg:y': 372.5
  - id: bedtools_merge
    in:
      - id: input
        source: bedtools_genomecov/output_file
    out:
      - id: output_file
    run: >-
      command_line_tools/bedtools_merge_v2.28.0_cv2/bedtools_merge_v2.28.0_cv2.cwl
    label: bedtools_merge
    'sbg:x': 400
    'sbg:y': -102
  - id: abra2_2_18
    in:
      - id: input_bam
        source:
          - input_bam
      - id: reference_fasta
        source: reference_fasta
      - id: targets
        source: bedtools_merge/output_file
      - id: bam_index
        source: bam_index
    out:
      - id: realigned_bam
    run: command_line_tools/abra2_2.17/abra2_2.17.cwl
    label: abra2_2.17
    'sbg:x': 572
    'sbg:y': 96
  - id: picard_fix_mate_information_1_97
    in:
      - id: input
        source: abra2_2_18/realigned_bam
    out:
      - id: bam
    run: >-
      command_line_tools/picard_fix_mate_information_1.96/picard_fix_mate_information_1.96.cwl
    label: picard_fix_mate_information_1.96
    'sbg:x': 673.0241088867188
    'sbg:y': 306.5
requirements: []
