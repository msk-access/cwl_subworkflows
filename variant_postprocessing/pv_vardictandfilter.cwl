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
    secondaryFiles:
      - .fai
    'sbg:x': -960.29052734375
    'sbg:y': 16.868247985839844
  - id: tumorBam
    type: File?
    secondaryFiles:
      - ^.bai
    'sbg:x': -850.534423828125
    'sbg:y': 146.13653564453125
  - id: sampleName
    type: string?
    'sbg:x': -948.0953979492188
    'sbg:y': -363.61956787109375
  - id: filter_For_PassFilter
    type: boolean?
    'sbg:x': -562.7295532226562
    'sbg:y': 1439.491455078125
  - id: alleleFrequency
    type: float?
    'sbg:x': -735.9003295898438
    'sbg:y': 317.54022216796875
  - id: alleledepth
    type: int
    'sbg:x': -19.603960037231445
    'sbg:y': 1515.9840087890625
  - id: totalDepth
    type: int?
    'sbg:x': -31.603960037231445
    'sbg:y': 1397.9840087890625
  - id: tnRatio
    type: int?
    'sbg:x': -125.60395812988281
    'sbg:y': 1469.9840087890625
  - id: variantFraction
    type: float?
    'sbg:x': 164.3960418701172
    'sbg:y': 1211.9840087890625
  - id: minQual
    type: int?
    'sbg:x': 24.396039962768555
    'sbg:y': 1635.9840087890625
  - id: filterGermline
    type: boolean?
    'sbg:x': 116.39604187011719
    'sbg:y': 1918.4564208984375
  - id: panel_bedfile
    type: File?
    'sbg:x': -1181.29931640625
    'sbg:y': -83.72862243652344
  - id: output_vcfname
    type: string
    'sbg:x': -596.9100952148438
    'sbg:y': 727.7566528320312
outputs:
  - id: vcf_complex
    outputSource:
      - pv_vardict_single_filter/vcf_complex
    type: File
    'sbg:x': 540.3960571289062
    'sbg:y': 1344.4564208984375
  - id: vcf
    outputSource:
      - pv_vardict_single_filter/vcf
    type: File
    'sbg:x': 610.3960571289062
    'sbg:y': 1514.4564208984375
  - id: txt
    outputSource:
      - pv_vardict_single_filter/txt
    type: File
    'sbg:x': 410.3960266113281
    'sbg:y': 1706.4564208984375
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
        source: panel_bedfile
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
    'sbg:x': -631.4354858398438
    'sbg:y': -245.61289978027344
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
        source: output_vcfname
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
  - id: pv_vardict_single_filter
    in:
      - id: inputVCF
        source: vardict_var2vcf/output
      - id: tsampleName
        source: sampleName
      - id: alleledepth
        source: alleledepth
      - id: totalDepth
        source: totalDepth
      - id: tnRatio
        source: tnRatio
      - id: variantFraction
        source: variantFraction
      - id: minQual
        source: minQual
      - id: filterGermline
        source: filterGermline
    out:
      - id: txt
      - id: vcf_complex
      - id: vcf
    run: >-
      ../command_line_tools/postprocessing_variant_calls/0.1.4/pv_vardict_single_filter.cwl
    'sbg:x': 265
    'sbg:y': 1398
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
