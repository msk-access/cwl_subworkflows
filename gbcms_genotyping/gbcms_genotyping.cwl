class: Workflow
cwlVersion: v1.0
id: gbcms_genotyping
label: gbcms_genotyping
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: duplex_bams
    type: 'File[]'
    secondaryFiles:
      - ^.bai
    'sbg:x': 0
    'sbg:y': 1494.125
  - id: normal_bams
    type: 'File[]'
    secondaryFiles:
      - ^.bai
    'sbg:x': 0
    'sbg:y': 960.5
  - id: tumor_bams
    type: 'File[]'
    secondaryFiles:
      - ^.bai
    'sbg:x': 0
    'sbg:y': 213.453125
  - id: simplex_bams
    type: 'File[]'
    secondaryFiles:
      - ^.bai
    'sbg:x': 0
    'sbg:y': 533.609375
  - id: maf
    type: File
    'sbg:x': 0
    'sbg:y': 1067.21875
  - id: ref_fasta
    type: File
    'sbg:x': 0
    'sbg:y': 640.328125
  - id: simplex_genotyping_bams_ids
    type: 'string[]'
    'sbg:x': 0
    'sbg:y': 426.890625
  - id: simplex_output
    type:
      - 'null'
      - string
      - type: array
        items: string
    'sbg:x': 0
    'sbg:y': 320.171875
  - id: generic_counting
    type: boolean?
    'sbg:x': 0
    'sbg:y': 1173.9453125
  - id: duplex_output
    type:
      - 'null'
      - string
      - type: array
        items: string
    'sbg:x': 0
    'sbg:y': 1280.671875
  - id: normal_output
    type:
      - 'null'
      - string
      - type: array
        items: string
    'sbg:x': 0
    'sbg:y': 747.046875
  - id: normal_genotyping_bams_ids
    type: 'string[]'
    'sbg:x': 0
    'sbg:y': 853.7734375
  - id: tumor_output
    type:
      - 'null'
      - string
      - type: array
        items: string
    'sbg:x': 0
    'sbg:y': 0
  - id: tumor_genotyping_bams_ids
    type: 'string[]'
    'sbg:x': 0
    'sbg:y': 106.7265625
  - id: duplex_genotyping_bams_ids
    type: 'string[]'
    'sbg:x': 0
    'sbg:y': 1387.3984375
outputs:
  - id: tumor_fillout
    outputSource:
      - tumor_getbasecountsmultisample_1_2_5/fillout
    type:
      - File
      - type: array
        items: File
    'sbg:x': 605.1873779296875
    'sbg:y': 586.984375
  - id: simplex_fillout
    outputSource:
      - simplex_getbasecountsmultisample_1_2_5/fillout
    type:
      - File
      - type: array
        items: File
    'sbg:x': 605.1873779296875
    'sbg:y': 693.703125
  - id: normal_fillout
    outputSource:
      - normal_getbasecountsmultisample_1_2_5/fillout
    type:
      - File
      - type: array
        items: File
    'sbg:x': 605.1873779296875
    'sbg:y': 800.421875
  - id: duplex_fillout
    outputSource:
      - duplex_getbasecountsmultisample_1_2_5/fillout
    type:
      - File
      - type: array
        items: File
    'sbg:x': 605.1873779296875
    'sbg:y': 907.140625
steps:
  - id: duplex_getbasecountsmultisample_1_2_5
    in:
      - id: genotyping_bams
        source:
          - duplex_bams
      - id: genotyping_bams_ids
        source:
          - duplex_genotyping_bams_ids
      - id: filter_duplicate
        default: 0
      - id: fragment_count
        default: 1
      - id: maf
        source: maf
      - id: maq
        default: 20
      - id: omaf
        default: true
      - id: output
        source: duplex_genotyping_bams_ids
        valueFrom: |-
          ${
            if (inputs.duplex_output){
              return inputs.duplex_output
            } else {
              return inputs.duplex_genotyping_bams_ids.map(function(b, i) {
                return b + "_fillout_DUPLEX.maf"
              }
            }
          }
      - id: ref_fasta
        source: ref_fasta
      - id: generic_counting
        source: generic_counting
    out:
      - id: fillout
    run: >-
      ../command_line_tools/getbasecountsmultisample/1.2.5/getbasecountsmultisample_1.2.5.cwl
    label: duplex_getbasecountsmultisample_1.2.5
    scatter:
      - genotyping_bams
      - genotyping_bams_ids
      - output
    scatterMethod: dotproduct
    'sbg:x': 289.796875
    'sbg:y': 977.15625
  - id: simplex_getbasecountsmultisample_1_2_5
    in:
      - id: genotyping_bams
        source:
          - simplex_bams
      - id: genotyping_bams_ids
        source:
          - simplex_genotyping_bams_ids
      - id: filter_duplicate
        default: 0
      - id: fragment_count
        default: 1
      - id: maf
        source: maf
      - id: maq
        default: 20
      - id: omaf
        default: true
      - id: output
        source: simplex_genotyping_bams_ids
        valueFrom: |-
          ${
            if (inputs.simplex_output){
              return inputs.simplex_output
            } else {
              return inputs.simplex_genotyping_bams_ids.map(function(b, i) {
                return b + "_fillout_SIMPLEX.maf"
              }
            }
          }
      - id: ref_fasta
        source: ref_fasta
      - id: generic_counting
        source: generic_counting
    out:
      - id: fillout
    run: >-
      ../command_line_tools/getbasecountsmultisample/1.2.5/getbasecountsmultisample_1.2.5.cwl
    label: simplex_getbasecountsmultisample_1.2.5
    scatter:
      - genotyping_bams
      - genotyping_bams_ids
      - output
    scatterMethod: dotproduct
    'sbg:x': 289.796875
    'sbg:y': 623.5546875
  - id: tumor_getbasecountsmultisample_1_2_5
    in:
      - id: genotyping_bams
        source:
          - tumor_bams
      - id: genotyping_bams_ids
        source:
          - tumor_genotyping_bams_ids
      - id: filter_duplicate
        default: 0
      - id: fragment_count
        default: 1
      - id: maf
        source: maf
      - id: maq
        default: 20
      - id: omaf
        default: true
      - id: output
        source: tumor_genotyping_bams_ids
        valueFrom: |-
          ${
            if (inputs.tumor_output) {
              return inputs.tumor_output
            } else {
              return inputs.tumor_genotyping_bams_ids.map(function(b, i) {
                return b + "_fillout.maf"
              }
            }
          }   
      - id: ref_fasta
        source: ref_fasta
      - id: generic_counting
        source: generic_counting
    out:
      - id: fillout
    run: >-
      ../command_line_tools/getbasecountsmultisample/1.2.5/getbasecountsmultisample_1.2.5.cwl
    label: tumor_getbasecountsmultisample_1.2.5
    scatter:
      - genotyping_bams
      - genotyping_bams_ids
      - output
    scatterMethod: dotproduct
    'sbg:x': 289.796875
    'sbg:y': 446.8203125
  - id: normal_getbasecountsmultisample_1_2_5
    in:
      - id: genotyping_bams
        source:
          - normal_bams
      - id: genotyping_bams_ids
        source:
          - normal_genotyping_bams_ids
      - id: filter_duplicate
        default: 0
      - id: fragment_count
        default: 1
      - id: maf
        source: maf
      - id: maq
        default: 20
      - id: omaf
        default: true
      - id: output
        source: normal_genotyping_bams_ids
        valueFrom: |-
          ${
            if (inputs.normal_output){
              return inputs.normal_output
            } else {
              return inputs.normal_genotyping_bams_ids.map(function(b, i) {
                return b + "_fillout.maf"
              }
            }
          }
      - id: ref_fasta
        source: ref_fasta
      - id: generic_counting
        source: generic_counting
    out:
      - id: fillout
    run: >-
      ../command_line_tools/getbasecountsmultisample/1.2.5/getbasecountsmultisample_1.2.5.cwl
    label: normal_getbasecountsmultisample_1.2.5
    scatter:
      - genotyping_bams
      - genotyping_bams_ids
      - output
    scatterMethod: dotproduct
    'sbg:x': 289.796875
    'sbg:y': 800.2890625
requirements:
  - class: ScatterFeatureRequirement
  - class: StepInputExpressionRequirement
  - class: InlineJavascriptRequirement
