class: Workflow
cwlVersion: v1.0
id: postprocessing_v2
label: postprocessing_V2
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: reference_fasta
    type: File
    'sbg:x': -868
    'sbg:y': -275
  - id: input_bam_case
    type: File
    'sbg:x': -877.5408935546875
    'sbg:y': -68
  - id: bedfile
    type: File?
    'sbg:x': -729.5408935546875
    'sbg:y': 22
  - id: sample_name
    type: string?
    'sbg:x': -852.5408935546875
    'sbg:y': -404.2361755371094
  - id: concat_output_name
    type: string
    doc: file name should have .gz
    'sbg:x': -103.98278045654297
    'sbg:y': 143.8258514404297
outputs:
  - id: txt
    outputSource:
      - pv_vardict_single_filter/txt
    type: File
    'sbg:x': -92
    'sbg:y': -221
  - id: bcftools_concat_output
    outputSource:
      - concat/bcftools_concat_output
    type: File
    'sbg:x': 339.815673828125
    'sbg:y': 46.90755844116211
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
        default: true
      - id: minimum_allele_frequency
        default: 0.01
    out:
      - id: output
    run: ../../cwl-commandlinetools/vardictjava/v1.8.2/vardict_single_sample.cwl
    label: vardict
    'sbg:x': -686.34375
    'sbg:y': -256
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
        default: 0.4
      - id: minQual
        default: 20
    out:
      - id: txt
      - id: vcf_complex
      - id: vcf
    run: >-
      ../../cwl-commandlinetools/postprocessing_variant_calls/0.1.4/pv_vardict_single_filter.cwl
    'sbg:x': -326
    'sbg:y': -254
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
    out:
      - id: bcftools_concat_output
    run: ./concat.cwl
    label: concat
    'sbg:x': 205.06202697753906
    'sbg:y': 45.10076904296875
requirements:
  - class: SubworkflowFeatureRequirement
