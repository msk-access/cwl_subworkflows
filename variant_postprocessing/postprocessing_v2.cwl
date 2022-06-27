class: Workflow
cwlVersion: v1.0
id: postprocessing_v2
label: postprocessing_V2
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: reference_fasta
    type: File
    'sbg:x': -919.1336059570312
    'sbg:y': -296.20172119140625
  - id: concat_output_name
    type: string
    doc: file name should have .gz
    'sbg:x': -103.98278045654297
    'sbg:y': 143.8258514404297
  - id: input_bam_case
    type: File
    'sbg:x': -824.95458984375
    'sbg:y': -145
  - id: bedfile
    type: File?
    'sbg:x': -699.28662109375
    'sbg:y': -72.90585327148438
  - id: sample_name
    type: string?
    'sbg:x': -929.8383178710938
    'sbg:y': -467.0113525390625
  - id: output_vcf_name
    type: string
    'sbg:x': -1032.3736572265625
    'sbg:y': -142.95726013183594
  - id: complexvcf_sort_output_name
    type: string
    'sbg:x': 129.9329833984375
    'sbg:y': 277.5096740722656
  - id: stdvcf_sort_output_name
    type: string
    'sbg:x': 125.8931884765625
    'sbg:y': -154.74871826171875
  - id: control_sample_name
    type: string
    'sbg:x': -846.8492431640625
    'sbg:y': 53.784610748291016
outputs:
  - id: bcftools_concat_output
    outputSource:
      - concat/bcftools_concat_output
    type: File
    'sbg:x': 339.815673828125
    'sbg:y': 46.90755844116211
  - id: txt
    outputSource:
      - pv_vardict_single_filter/txt
    type: File
    'sbg:x': -85.4493637084961
    'sbg:y': -312.2761535644531
steps:
  - id: concat
    in:
      - id: normalize_sort_input
        source: pv_vardict_single_filter/vcf
      - id: fastaRef
        source: reference_fasta
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
        source: pv_vardict_single_filter/vcf_complex
      - id: complexvcf_sort_output_name
        source: complexvcf_sort_output_name
      - id: stdvcf_sort_output_name
        source: stdvcf_sort_output_name
    out:
      - id: bcftools_concat_output
    run: ./concat.cwl
    label: concat
    'sbg:x': 205.06202697753906
    'sbg:y': 45.10076904296875
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
      - id: control_sample_name
        source: control_sample_name
      - id: filter_variants
        default: true
      - id: minimum_allele_frequency
        default: 0.01
      - id: output_vcf
        source: output_vcf_name
    out:
      - id: output
    run: ../command_line_tools/vardictjava/v1.8.2/vardict_single_sample.cwl
    label: vardict
    'sbg:x': -640.9417724609375
    'sbg:y': -350.0426330566406
  - id: pv_vardict_single_filter
    in:
      - id: inputVCF
        source: vardict/output
      - id: tsampleName
        source: sample_name
      - id: alleledepth
        default: 1
      - id: totalDepth
        default: 20
      - id: tnRatio
        default: 5
      - id: variantFraction
        default: 0.04
      - id: minQual
        default: 20
    out:
      - id: txt
      - id: vcf_complex
      - id: vcf
    run: >-
      ../command_line_tools/postprocessing_variant_calls/0.1.4/pv_vardict_single_filter.cwl
    'sbg:x': -349
    'sbg:y': -342.7864685058594
requirements:
  - class: SubworkflowFeatureRequirement
