class: Workflow
cwlVersion: v1.0
id: pvfilter_concat
label: pvFilter_single_concat
$namespaces:
  s: 'https://schema.org/'
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: tsampleName
    type: string
    'sbg:x': -267.9382019042969
    'sbg:y': -216.681640625
  - id: inputVCF
    type: File
    'sbg:x': -323.1816711425781
    'sbg:y': -103.3857650756836
  - id: fastaRef
    type: File
    'sbg:x': -235.1666717529297
    'sbg:y': 137.2509307861328
outputs:
  - id: txt
    outputSource:
      - pv_vardict_single_filter_0_1_3/txt
    type: File
    'sbg:x': 57.904483795166016
    'sbg:y': -130.53932189941406
  - id: bcftools_concat_output
    outputSource:
      - concat/bcftools_concat_output
    type: File
    'sbg:x': 160.90074157714844
    'sbg:y': 104.47940063476562
steps:
  - id: concat
    in:
      - id: normalize_sort_input
        source: pv_vardict_single_filter_0_1_3/vcf
      - id: fastaRef
        source: fastaRef
      - id: sortonly_input
        source: pv_vardict_single_filter_0_1_3/vcf
    out:
      - id: bcftools_concat_output
    run: ./concat.cwl
    label: concat
    'sbg:x': 2.561797857284546
    'sbg:y': 105.1198501586914
  - id: pv_vardict_single_filter_0_1_3
    in:
      - id: inputVCF
        source: inputVCF
      - id: tsampleName
        source: tsampleName
    out:
      - id: txt
      - id: vcf
    run: >-
      ../command_line_tools/postprocessing_variant_calls/0.1.3/pv_vardict_single_filter_0.1.3.cwl
    'sbg:x': -78.1273422241211
    'sbg:y': -143.2546844482422
requirements:
  - class: SubworkflowFeatureRequirement
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
