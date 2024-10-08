class: Workflow
cwlVersion: v1.0
id: run_processed_vardict
label: run_processed_vardict.cwl
$namespaces:
  s: 'https://schema.org/'
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: reference_fasta
    type: File
    secondaryFiles:
      - .fai
    'sbg:x': -79.38146209716797
    'sbg:y': 249.81459045410156
  - id: input_bam_case
    type: File
    secondaryFiles:
      - ^.bai
    'sbg:x': 0
    'sbg:y': 320.296875
  - id: bedfile
    type: File?
    'sbg:x': 0
    'sbg:y': 427.0625
  - id: sample_name
    type: string
    'sbg:x': 0
    'sbg:y': 106.765625
  - id: concat_output_name
    type: string
    'sbg:x': 740.790283203125
    'sbg:y': 70.54559326171875
  - id: stdout
    type: boolean
    'sbg:x': 847.7826538085938
    'sbg:y': -11.541033744812012
  - id: vardict_output_vcf_name
    type: string?
    'sbg:x': 0
    'sbg:y': 0
  - id: filter_variants
    type: boolean?
    'sbg:x': 198.8257293701172
    'sbg:y': 601.82177734375
  - id: vardict_allele_frequency_threshold
    type: float?
    'sbg:x': 227.29263305664062
    'sbg:y': -49.30992126464844
outputs:
  - id: concatenated_vcf
    outputSource:
      - variants_concat/concatenated_vcf
    type: File
    'sbg:x': 1064.255126953125
    'sbg:y': 213.53125
  - id: vardict_output
    outputSource:
      - vardict/output
    type: File
    'sbg:x': 397.9921875
    'sbg:y': 590.5
  - id: txt
    outputSource:
      - pv_vardict_single_filter/txt
    type: File
    'sbg:x': 501.0516662597656
    'sbg:y': 446.3981628417969
  - id: vcf
    outputSource:
      - pv_vardict_single_filter/vcf
    type: File
    'sbg:x': 667.1679077148438
    'sbg:y': 454.6510925292969
  - id: vcf_complex
    outputSource:
      - pv_vardict_single_filter/vcf_complex
    type: File
    'sbg:x': 804.0721435546875
    'sbg:y': 435.0933532714844
steps:
  - id: vardict
    in:
      - id: bedfile
        source: bedfile
      - id: input_bam_case
        source: input_bam_case
      - id: reference_fasta
        source: reference_fasta
      - id: sample_name
        source: sample_name
      - id: bed_file_column_for_region_start
        default: '2'
      - id: bed_file_column_for_region_end
        default: '3'
      - id: bed_file_column_for_gene_name
        default: '4'
      - id: bed_file_column_for_chromsome
        default: '1'
      - id: filter_variants
        default: false
        source: filter_variants
      - id: output_vcf
        source: vardict_output_vcf_name
      - id: vardict_allele_frequency_threshold
        source: vardict_allele_frequency_threshold
    out:
      - id: output
    run: ../command_line_tools/vardictjava/v1.8.2/vardict_single_sample.cwl
    label: vardict
    'sbg:x': 250.328125
    'sbg:y': 185.53125
  - id: variants_concat
    in:
      - id: fastaRef
        source: reference_fasta
      - id: input
        source: pv_vardict_single_filter/vcf
      - id: check_ref
        default: s
      - id: multiallelics
        default: '-any'
      - id: output_type
        default: z
      - id: preset
        default: vcf
      - id: complex_input
        source: pv_vardict_single_filter/vcf_complex
      - id: output_name
        source: concat_output_name
      - id: allow_overlaps
        default: true
      - id: stdout
        source: stdout
    out:
      - id: concatenated_vcf
    run: ../variant_postprocessing/variants_concat.cwl
    label: variants_concat
    'sbg:x': 937.3206787109375
    'sbg:y': 213.682373046875
  - id: pv_vardict_single_filter
    in:
      - id: inputVCF
        source: vardict/output
    out:
      - id: txt
      - id: vcf_complex
      - id: vcf
    run: >-
      ../command_line_tools/postprocessing_variant_calls/0.2.3/pv_vardict_single_filter/pv_vardict_single_filter.cwl
    'sbg:x': 492.4954528808594
    'sbg:y': 150.5911865234375
requirements:
  - class: SubworkflowFeatureRequirement
$schemas:
  - 'http://schema.org/version/latest/schemaorg-current-http.rdf'
's:author':
  - class: 's:Person'
    's:email': 'mailto:sivaprk@mskcc.org'
    's:identifier': ''
    's:name': Karthigayini Sivaprakasam
's:citation': ''
's:codeRepository': 'https://github.com/msk-access/cwl_subworkflows/vardict_workflow'
's:contributor':
  - class: 's:Person'
    's:email': 'mailto:sivaprk@mskcc.org'
    's:identifier': ''
    's:name': Karthigayini Sivaprakasam
  - class: 's:Person'
    's:email': 'mailto:shahr@mskcc.org'
    's:identifier': ''
    's:name': Ronak Shah
's:dateCreated': '2020-07-13T00:00:00.000Z'
's:license': 'https://spdx.org/licenses/Apache-2.0'
