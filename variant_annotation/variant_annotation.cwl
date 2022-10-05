class: Workflow
cwlVersion: v1.0
id: variant_annotation
label: variant_annotation
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: input_bam_case
    type: File
    'sbg:x': 0
    'sbg:y': 441.75
  - id: reference_fasta
    type: File
    'sbg:x': 0
    'sbg:y': 334.8125
  - id: input_vcf_cosmicDB
    'sbg:fileTypes': VCF
    type: File
    'sbg:x': 250.328125
    'sbg:y': 441.75
  - id: bedfile_for_vardict
    type: File?
    'sbg:x': 0
    'sbg:y': 655.625
  - id: sample_name
    type: string
    'sbg:x': 0
    'sbg:y': 227.87498474121094
  - id: concatvcf_output_name
    type: string
    'sbg:x': 0
    'sbg:y': 548.6875
  - id: vardict_output_vcf_name
    type: string?
    'sbg:x': 0
    'sbg:y': 14.000015258789062
  - id: output_file_name_cosmicdb
    type: string?
    'sbg:x': 250.328125
    'sbg:y': 334.8125
  - id: output_file_name_preval
    type: string?
    'sbg:x': 613.7874755859375
    'sbg:y': 402.28125
  - id: output_maf_name
    type: string?
    'sbg:x': 903.501708984375
    'sbg:y': 562.6875
  - id: vcf_tumor_id
    type: string?
    'sbg:x': 907.3548583984375
    'sbg:y': -30.484054565429688
  - id: custom_enst
    type: File?
    'sbg:x': 903.501708984375
    'sbg:y': 669.625
  - id: retain_fmt
    type: string?
    'sbg:x': 903.501708984375
    'sbg:y': 455.75
  - id: retain_info
    type: string?
    'sbg:x': 903.501708984375
    'sbg:y': 348.8125
  - id: input_vcf_preval
    'sbg:fileTypes': VCF
    type: File
    'sbg:x': 613.7874755859375
    'sbg:y': 509.21875
  - id: stdout
    type: boolean
    'sbg:x': 0
    'sbg:y': 120.9375
outputs:
  - id: txt
    outputSource:
      - run_processed_vardict/txt
    type: File
    'sbg:x': 621.0455932617188
    'sbg:y': 131.37380981445312
  - id: vcf2maf_maf
    outputSource:
      - vcf2maf_v1_6_21/vcf2maf_maf
    type: File
    'sbg:x': 1493.4658203125
    'sbg:y': 334.8125
steps:
  - id: run_processed_vardict
    in:
      - id: reference_fasta
        source: reference_fasta
      - id: input_bam_case
        source: input_bam_case
      - id: bedfile
        source: bedfile_for_vardict
      - id: sample_name
        source: sample_name
      - id: concat_output_name
        source: concatvcf_output_name
      - id: stdout
        default: true
        source: stdout
      - id: vardict_output_vcf_name
        source: vardict_output_vcf_name
    out:
      - id: txt
      - id: concatenated_vcf
    run: ../vardict_workflow/run_processed_vardict.cwl
    label: run_processed_vardict.cwl
    'sbg:x': 250.328125
    'sbg:y': 185.875
  - id: snpsift_annotate_5_0
    in:
      - id: input_DB_vcf
        source: input_vcf_cosmicDB
      - id: input_vcf
        source: run_processed_vardict/concatenated_vcf
      - id: output_file_name
        source: output_file_name_cosmicdb
    out:
      - id: annotatedOutput
    run: ../../cwl-commandlinetools/snpsift_annotate_5.0/snpsift_annotate_5-0.cwl
    label: snpsift_annotate_5.0
    'sbg:x': 613.7874755859375
    'sbg:y': 281.34375
  - id: snpsift_annotate_5_1
    in:
      - id: input_DB_vcf
        source: input_vcf_preval
      - id: input_vcf
        source: snpsift_annotate_5_0/annotatedOutput
      - id: output_file_name
        source: output_file_name_preval
    out:
      - id: annotatedOutput
    run: ../../cwl-commandlinetools/snpsift_annotate_5.0/snpsift_annotate_5-0.cwl
    label: snpsift_annotate_5.0
    'sbg:x': 903.501708984375
    'sbg:y': 227.875
  - id: vcf2maf_v1_6_21
    in:
      - id: buffer_size
        default: 5000
      - id: custom_enst
        source: custom_enst
      - id: input_vcf
        source: snpsift_annotate_5_1/annotatedOutput
      - id: min_hom_vaf
        default: 0.7
      - id: ncbi_build
        default: GRCh37
      - id: output_maf
        source: output_maf_name
      - id: ref_fasta
        default: /.vep/homo_sapiens/105_GRCh37/Homo_sapiens.GRCh37.dna.toplevel.fa.gz
      - id: retain_fmt
        source: retain_fmt
      - id: retain_info
        source: retain_info
      - id: tumor_id
        source: vcf_tumor_id
      - id: vcf_tumor_id
        source: vcf_tumor_id
      - id: vep_data
        default: /.vep/
      - id: vep_path
        default: /usr/local/bin/
    out:
      - id: vcf2maf_maf
    run: ../../cwl-commandlinetools/vcf2maf_1.6.21/vcf2maf_1.6.21.cwl
    'sbg:x': 1193.2159423828125
    'sbg:y': 292.8125
requirements:
  - class: SubworkflowFeatureRequirement
