class: Workflow
cwlVersion: v1.0
id: pv_vardictandfilter
label: pv_vardictAndfilter
$namespaces:
  s: 'https://schema.org/'
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: refFasta
    type: File
    'sbg:x': -960.29052734375
    'sbg:y': 16.868247985839844
  - id: tumorBam
    type: File?
    'sbg:x': -850.534423828125
    'sbg:y': 146.13653564453125
  - id: region_Of_Interest_Bedfile
    type: File?
    'sbg:x': -1043.2174072265625
    'sbg:y': -214.8390655517578
  - id: sampleName
    type: string?
    'sbg:x': -948.0953979492188
    'sbg:y': -363.61956787109375
  - id: filter_For_PassFilter
    type: boolean?
    'sbg:x': -562.7295532226562
    'sbg:y': 1439.491455078125
  - id: alleleFrequency
    type: string?
    'sbg:x': -735.9003295898438
    'sbg:y': 317.54022216796875
  - id: outputVcf_name
    type: string
    'sbg:x': -533.4613037109375
    'sbg:y': 841.9304809570312
  - id: tsampleName
    type: string
    'sbg:x': -346.4879150390625
    'sbg:y': 1564.30517578125
outputs:
  - id: vcf
    outputSource:
      - pv_vardict_single_filter_0_1_3/vcf
    type: 'File[]'
    'sbg:x': 83.85237121582031
    'sbg:y': 1022.6150512695312
  - id: txt
    outputSource:
      - pv_vardict_single_filter_0_1_3/txt
    type: File
    'sbg:x': 216.3269500732422
    'sbg:y': 1157.1595458984375
steps:
  - id: vardict
    in:
      - id: E
        default: '3'
      - id: G
        source: refFasta
      - id: 'N'
        source: sampleName
      - id: S
        default: '2'
      - id: b
        source: tumorBam
      - id: bedfile
        source: region_Of_Interest_Bedfile
      - id: c
        default: '1'
      - id: f
        default: '0.01'
        source: alleleFrequency
      - id: g
        default: '4'
    out:
      - id: output
    run: ../command_line_tools/vardictjava/v1.8.2/vardict_app.cwl
    'sbg:x': -686.46337890625
    'sbg:y': -175.26829528808594
  - id: vardict_var2vcf
    in:
      - id: 'N'
        source: sampleName
      - id: S
        source: filter_For_PassFilter
      - id: f
        source: alleleFrequency
      - id: input_vcf
        source: teststrandbias/output_var
      - id: vcf
        source: outputVcf_name
    out:
      - id: output
    run: ../command_line_tools/vardictjava/v1.8.2/var_to_vcf.cwl
    'sbg:x': -99.31493377685547
    'sbg:y': 611.9901733398438
  - id: teststrandbias
    in:
      - id: input_vardict
        source: vardict/output
    out:
      - id: output_var
    run: ../command_line_tools/vardictjava/v1.8.2/teststrandbias.cwl
    'sbg:x': -477.36370849609375
    'sbg:y': 243.697509765625
  - id: pv_vardict_single_filter_0_1_3
    in:
      - id: inputVCF
        source: vardict_var2vcf/output
      - id: tsampleName
        source: tsampleName
      - id: alleledepth
        default: 3
      - id: totalDepth
        default: 5
      - id: tnRatio
        default: 3
      - id: variantFraction
        default: 0.01
      - id: minQual
        default: 20
    out:
      - id: txt
      - id: vcf
    run: >-
      ../command_line_tools/postprocessing_variant_calls/0.1.3/pv_vardict_single_filter_0.1.3.cwl
    'sbg:x': -54.009891510009766
    'sbg:y': 1058.4854736328125
requirements: []
$schemas:
  - 'http://schema.org/version/latest/schemaorg-current-http.rdf'
's:author':
  - class: 's:Person'
    's:email': 'mailto:sivaprk@mskcc.org'
    's:identifier': ''
    's:name': Karthigayini Sivaprakasam
  - class: 's:Person'
    's:email': 'mailto:shahr@mskcc.org'
    's:identifier': ''
    's:name': Ronak Shah
's:citation': ''
's:codeRepository': 'https://github.com/msk-access/cwl_subworkflows/variant_postprocessing'
's:contributor':
  - class: 's:Person'
    's:email': 'mailto:sivaprk@mskcc.org'
    's:identifier': ''
    's:name': Karthigayini Sivaprakasam
  - class: 's:Person'
    's:email': 'mailto:shahr@mskcc.org'
    's:identifier': ''
    's:name': Ronak Shah
's:dateCreated': 2020-06-2
's:license': 'https://spdx.org/licenses/Apache-2.0'
