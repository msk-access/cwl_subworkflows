class: Workflow
cwlVersion: v1.0
id: gbcms_genotyping
label: gbcms_genotyping
$namespaces:
  s: 'https://schema.org/'
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: duplex_bams
    type: 'File[]'
    secondaryFiles:
      - ^.bai
    'sbg:x': 0
    'sbg:y': 1067.0859375
  - id: normal_bams
    type: 'File[]'
    secondaryFiles:
      - ^.bai
    'sbg:x': 0
    'sbg:y': 640.2421875
  - id: tumor_bams
    type: 'File[]'
    secondaryFiles:
      - ^.bai
    'sbg:x': 0
    'sbg:y': 106.7109375
  - id: simplex_bams
    type: 'File[]'
    secondaryFiles:
      - ^.bai
    'sbg:x': 0
    'sbg:y': 320.1328125
  - id: maf
    type: File
    'sbg:x': 0
    'sbg:y': 746.9296875
  - id: ref_fasta
    type: File
    'sbg:x': 0
    'sbg:y': 426.8203125
  - id: simplex_genotyping_bams_ids
    type: 'string[]'
    'sbg:x': 0
    'sbg:y': 213.421875
  - id: generic_counting
    type: boolean?
    'sbg:x': 0
    'sbg:y': 853.640625
  - id: normal_genotyping_bams_ids
    type: 'string[]'
    'sbg:x': 0
    'sbg:y': 533.53125
  - id: tumor_genotyping_bams_ids
    type: 'string[]'
    'sbg:x': 0
    'sbg:y': 0
  - id: duplex_genotyping_bams_ids
    type: 'string[]'
    'sbg:x': 0
    'sbg:y': 960.375
outputs:
  - id: tumor_fillout
    outputSource:
      - tumor_getbasecountsmultisample_1_2_5/fillout
    type:
      - File
      - type: array
        items: File
    'sbg:x': 611.2342529296875
    'sbg:y': 373.5234375
  - id: simplex_fillout
    outputSource:
      - simplex_getbasecountsmultisample_1_2_5/fillout
    type:
      - File
      - type: array
        items: File
    'sbg:x': 611.2342529296875
    'sbg:y': 480.2109375
  - id: normal_fillout
    outputSource:
      - normal_getbasecountsmultisample_1_2_5/fillout
    type:
      - File
      - type: array
        items: File
    'sbg:x': 611.2342529296875
    'sbg:y': 586.8984375
  - id: duplex_fillout
    outputSource:
      - duplex_getbasecountsmultisample_1_2_5/fillout
    type:
      - File
      - type: array
        items: File
    'sbg:x': 611.2342529296875
    'sbg:y': 693.5859375
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
            if (inputs.duplex_output) {
              return inputs.duplex_output
            } else {
              if (typeof(self) == 'object') {
                  return self.map(function(b, i) {
                    return b + "_fillout_DUPLEX.maf"
                  })
              } else {
                  return self + "_fillout_DUPLEX.maf"
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
    'sbg:x': 295.84375
    'sbg:y': 763.6328125
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
              if (typeof(self) == 'object') {
                  return self.map(function(b, i) {
                    return b + "_fillout_SIMPLEX.maf"
                  })
              } else {
                  return self + "_fillout_SIMPLEX.maf"
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
    'sbg:x': 295.84375
    'sbg:y': 410.1640625
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
              if (typeof(self) == 'object') {
                  return self.map(function(b, i) {
                    return b + "_fillout.maf"
                  })
              } else {
                  return self + "_fillout.maf"
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
    'sbg:x': 295.84375
    'sbg:y': 233.4296875
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
              if (typeof(self) == 'object') {
                  return self.map(function(b, i) {
                    return b + "_fillout.maf"
                  })
              } else {
                  return self + "_fillout.maf"
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
    'sbg:x': 295.84375
    'sbg:y': 586.8984375
requirements:
  - class: ScatterFeatureRequirement
  - class: StepInputExpressionRequirement
  - class: InlineJavascriptRequirement
$schemas:
  - 'http://schema.org/version/latest/schemaorg-current-http.rdf'
's:author':
  - class: 's:Person'
    's:email': 'mailto:johnsoni@mskcc.org'
    's:name': Ian Johnson
's:citation': ''
's:codeRepository': 'https://github.com/msk-access/cwl_subworkflows/gbcms_genotyping'
's:contributor':
  - class: 's:Person'
    's:email': 'mailto:shahr2@mskcc.org'
    's:name': Ronak Shah
's:dateCreated': '2021-05-28'
's:license': 'https://spdx.org/licenses/Apache-2.0'
