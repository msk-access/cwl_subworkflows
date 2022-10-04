class: Workflow
cwlVersion: v1.0
id: variant_annotation
label: variant_annotation
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: input_bam_case
    type: File
    'sbg:x': -500.60113525390625
    'sbg:y': 28.5
  - id: reference_fasta
    type: File
    'sbg:x': -475.60113525390625
    'sbg:y': -159.5
  - id: input_DB_vcf
    'sbg:fileTypes': VCF
    type: File
    'sbg:x': -252.60113525390625
    'sbg:y': 118.5
  - id: bedfile
    type: File?
    'sbg:x': -417.219970703125
    'sbg:y': 144.89012145996094
  - id: sample_name
    type: string
    'sbg:x': -378.665771484375
    'sbg:y': -269.5677185058594
  - id: concat_output_name
    type: string
    'sbg:x': -529.2681884765625
    'sbg:y': 165.37203979492188
  - id: vardict_output_vcf_name
    type: string?
    'sbg:x': -205.82870483398438
    'sbg:y': -295.6642761230469
  - id: output_file_name
    type: string?
    'sbg:x': -21.232120513916016
    'sbg:y': -199.08726501464844
  - id: output_file_name_1
    type: string?
    'sbg:x': 204.9292449951172
    'sbg:y': -199.08726501464844
  - id: retain_info
    type: string?
    'sbg:exposed': true
  - id: tumor_id
    type: string?
    'sbg:exposed': true
  - id: output_maf
    type: string?
    'sbg:x': -13.897157669067383
    'sbg:y': 326.5851135253906
  - id: vcf_tumor_id
    type: string?
    'sbg:x': 367.52093505859375
    'sbg:y': 171.32838439941406
outputs:
  - id: txt
    outputSource:
      - run_processed_vardict/txt
    type: File
    'sbg:x': -246.60113525390625
    'sbg:y': -171.5
  - id: vcf2maf_maf
    outputSource:
      - vcf2maf_v1_6_21/vcf2maf_maf
    type: File
    'sbg:x': 458.9876403808594
    'sbg:y': 281.88201904296875
steps:
  - id: run_processed_vardict
    in:
      - id: reference_fasta
        source: reference_fasta
      - id: input_bam_case
        source: input_bam_case
      - id: bedfile
        source: bedfile
      - id: sample_name
        source: sample_name
      - id: concat_output_name
        source: concat_output_name
      - id: vardict_output_vcf_name
        source: vardict_output_vcf_name
    out:
      - id: txt
      - id: concatenated_vcf
    run: ../vardict_workflow/run_processed_vardict.cwl
    label: run_processed_vardict.cwl
    'sbg:x': -348.6015625
    'sbg:y': -52.5
  - id: snpsift_annotate_5_0
    in:
      - id: input_DB_vcf
        source: input_DB_vcf
      - id: input_vcf
        source: run_processed_vardict/concatenated_vcf
      - id: output_file_name
        source: output_file_name
    out:
      - id: annotatedOutput
    run: ../../cwl-commandlinetools/snpsift_annotate_5.0/snpsift_annotate_5-0.cwl
    label: snpsift_annotate_5.0
    'sbg:x': -40.60113525390625
    'sbg:y': 3.5
  - id: snpsift_annotate_5_1
    in:
      - id: input_DB_vcf
        source: input_DB_vcf
      - id: input_vcf
        source: snpsift_annotate_5_0/annotatedOutput
      - id: output_file_name
        source: output_file_name_1
    out:
      - id: annotatedOutput
    run: ../../cwl-commandlinetools/snpsift_annotate_5.0/snpsift_annotate_5-0.cwl
    label: snpsift_annotate_5.0
    'sbg:x': 195
    'sbg:y': -17
  - id: vcf2maf_v1_6_21
    in:
      - id: output_maf
        source: output_maf
      - id: ref_fasta
        source: reference_fasta
      - id: retain_info
        source: retain_info
      - id: tumor_id
        source: tumor_id
      - id: vcf_tumor_id
        source: vcf_tumor_id
    out:
      - id: vcf2maf_maf
    run: ../../cwl-commandlinetools/vcf2maf_1.6.21/vcf2maf_1.6.21.cwl
    'sbg:x': 297.54205322265625
    'sbg:y': 279.22430419921875
requirements:
  - class: SubworkflowFeatureRequirement
