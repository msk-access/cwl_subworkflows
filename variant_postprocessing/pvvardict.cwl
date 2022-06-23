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
  - id: panel_bedfile
    type: File?
    'sbg:x': -1181.29931640625
    'sbg:y': -83.72862243652344
  - id: output_vcfname
    type: string
    'sbg:x': -596.9100952148438
    'sbg:y': 727.7566528320312
outputs:
  - id: output
    outputSource:
      - vardict_var2vcf/output
    type: File
    'sbg:x': 293.8223876953125
    'sbg:y': 689.8036499023438
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
    'sbg:x': -99
    'sbg:y': 691.241943359375
  - id: teststrandbias
    in:
      - id: input_vardict
        source: vardict/output
    out:
      - id: output_var
    run: ../command_line_tools/vardictjava/v1.8.2/teststrandbias.cwl
    'sbg:x': -477.36370849609375
    'sbg:y': 243.697509765625
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
