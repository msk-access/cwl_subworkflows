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
    'sbg:x': -305.915771484375
    'sbg:y': 831.3782958984375
  - id: tumorBam
    type: File?
    secondaryFiles:
      - ^.bai
    'sbg:x': -567.3890991210938
    'sbg:y': -72.29290008544922
  - id: sampleName
    type: string?
    'sbg:x': -685.7598876953125
    'sbg:y': 24.68556022644043
  - id: panel_bedfile
    type: File?
    'sbg:x': -345.50335693359375
    'sbg:y': 124.1751937866211
  - id: vardict_output_vcfname
    type: string
    'sbg:x': -153.9996795654297
    'sbg:y': 167.50958251953125
  - id: stdvcf_bgzip_output_name
    type: string?
    'sbg:x': 31.068662643432617
    'sbg:y': 323.2969055175781
  - id: complexvcf_bgzip_output_name
    type: string?
    'sbg:x': -4.069731712341309
    'sbg:y': 930.5181274414062
  - id: complexvcf_sort_output_name
    type: string
    'sbg:x': -195.4963836669922
    'sbg:y': 915.3782958984375
  - id: stdvcf_norm_output_name
    type: string?
    'sbg:x': 126.85070037841797
    'sbg:y': 314.2720031738281
  - id: stdvcf_sort_output_name
    type: string
    'sbg:x': 220.4860382080078
    'sbg:y': 393.7340393066406
outputs:
  - id: bcftools_concat_output
    outputSource:
      - concat/bcftools_concat_output
    type: File
    'sbg:x': 438.0279541015625
    'sbg:y': 779.82568359375
  - id: txt
    outputSource:
      - pv_vardictandfilter/txt
    type: File
    'sbg:x': 46.870967864990234
    'sbg:y': -27.70967674255371
steps:
  - id: concat
    in:
      - id: normalize_sort_input
        source: pv_vardictandfilter/vcf
      - id: fastaRef
        source: refFasta
      - id: check_ref
        default: s
      - id: stdvcf_bgzip_output_name
        source: stdvcf_bgzip_output_name
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
      - id: complexvcf_bgzip_output_name
        source: complexvcf_bgzip_output_name
      - id: complexvcf_sort_output_name
        source: complexvcf_sort_output_name
      - id: stdvcf_norm_output_name
        source: stdvcf_norm_output_name
      - id: stdvcf_sort_output_name
        source: stdvcf_sort_output_name
    out:
      - id: bcftools_concat_output
    run: ./concat.cwl
    label: concat
    'sbg:x': 181.24473571777344
    'sbg:y': 770.5809326171875
  - id: pv_vardictandfilter
    in:
      - id: refFasta
        source: refFasta
      - id: tumorBam
        source: tumorBam
      - id: sampleName
        source: sampleName
      - id: filter_For_PassFilter
        default: true
      - id: alleleFrequency
        default: 0.01
      - id: alleledepth
        default: 1
      - id: totalDepth
        default: 20
      - id: tnRatio
        default: 5
      - id: variantFraction
        default: 0.4
      - id: minQual
        default: 20
      - id: panel_bedfile
        source: panel_bedfile
      - id: output_vcfname
        source: vardict_output_vcfname
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
