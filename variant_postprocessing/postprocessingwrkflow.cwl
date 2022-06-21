class: Workflow
cwlVersion: v1.0
id: postprocessingwrkflow
label: postProcessingWrkflow
$namespaces:
  s: 'https://schema.org/'
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: refFasta
    type: File
    secondaryFiles:
      - .fai
    'sbg:x': -583.6369018554688
    'sbg:y': 152.2815399169922
  - id: concat_output_name
    type: string
    'sbg:x': -510.92156982421875
    'sbg:y': 369.7189636230469
  - id: tumorBam
    type: File?
    'sbg:x': -567.3890991210938
    'sbg:y': -72.29290008544922
  - id: region_Of_Interest_Bedfile
    type: File?
    'sbg:x': -491.8029479980469
    'sbg:y': 44.65171432495117
  - id: sampleName
    type: string?
    'sbg:x': -685.7598876953125
    'sbg:y': 24.68556022644043
outputs:
  - id: bcftools_concat_output
    outputSource:
      - concat/bcftools_concat_output
    type: File
    'sbg:x': 446.16448974609375
    'sbg:y': 445.3755187988281
steps:
  - id: concat
    in:
      - id: normalize_sort_input
        source: pv_vardictandfilter/vcf
      - id: fastaRef
        source: refFasta
      - id: check_ref
        default: s
      - id: multiallelics
        default: '-any'
      - id: output_type
        default: z
      - id: preset
        default: vcf
      - id: allow_overlaps
        default: true
      - id: concat_output_name
        source: concat_output_name
      - id: stdout
        default: true
      - id: sortonly_input
        source: pv_vardictandfilter/vcf_complex
    out:
      - id: bcftools_concat_output
    run: ./concat.cwl
    label: concat
    'sbg:x': 194.1100311279297
    'sbg:y': 423.48553466796875
  - id: pv_vardictandfilter
    in:
      - id: refFasta
        source: refFasta
      - id: tumorBam
        source: tumorBam
      - id: region_Of_Interest_Bedfile
        source: region_Of_Interest_Bedfile
      - id: sampleName
        source: sampleName
      - id: filter_For_PassFilter
        default: true
      - id: alleleFrequency
        default: '0.01'
      - id: alleledepth
        default: 3
      - id: totalDepth
        default: 5
      - id: tnRatio
        default: 5
      - id: variantFraction
        default: 0.01
      - id: minQual
        default: 20
    out:
      - id: vcf_complex
      - id: vcf
      - id: txt
    run: ./pv_vardictandfilter.cwl
    label: pv_vardictAndfilter
    'sbg:x': -196.58909606933594
    'sbg:y': -79.42366790771484
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
