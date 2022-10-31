class: Workflow
cwlVersion: v1.0
id: variant_annotation
label: variant_annotation
$namespaces:
  s: 'https://schema.org/'
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: input_vcf_cosmicDB
    'sbg:fileTypes': VCF
    type: File
    'sbg:x': 0
    'sbg:y': 220.6875
  - id: output_maf_name
    type: string?
    'sbg:x': 472.9952392578125
    'sbg:y': 441.375
  - id: vcf_tumor_id
    type: string?
    'sbg:x': 472.9952392578125
    'sbg:y': 0
  - id: custom_enst
    type: File?
    'sbg:x': 472.9952392578125
    'sbg:y': 548.21875
  - id: retain_fmt
    type: string?
    'sbg:x': 472.9952392578125
    'sbg:y': 334.53125
  - id: retain_info
    type: string?
    'sbg:x': 472.9952392578125
    'sbg:y': 227.6875
  - id: input_vcf_preval
    'sbg:fileTypes': VCF
    type: File
    'sbg:x': 264.74945068359375
    'sbg:y': 368.41351318359375
  - id: input_vcf
    type: File
    'sbg:x': 0
    'sbg:y': 327.53125
outputs:
  - id: vcf2maf_maf
    outputSource:
      - vcf2maf_v1_6_21/vcf2maf_maf
    type: File
    'sbg:x': 1034.3966064453125
    'sbg:y': 274.109375
steps:
  - id: snpsift_annotate_5_0
    in:
      - id: input_DB_vcf
        source: input_vcf_cosmicDB
      - id: input_vcf
        source: input_vcf
    out:
      - id: annotatedOutput
    run: ../../cwl-commandlinetools/snpsift_annotate_5.0/snpsift_annotate_5-0.cwl
    label: snpsift_annotate_5.0
    'sbg:x': 211.84375
    'sbg:y': 213.6875
  - id: snpsift_annotate_prevalence
    in:
      - id: input_DB_vcf
        source: input_vcf_preval
      - id: input_vcf
        source: snpsift_annotate_5_0/annotatedOutput
    out:
      - id: annotatedOutput_prevalence
    run: ../../cwl-commandlinetools/snpsift_annotate_5.0/snpsift_annotate_5-0.cwl
    label: snpsift_annotate_prevalence
    'sbg:x': 472.9952392578125
    'sbg:y': 113.84375
  - id: vcf2maf_v1_6_21
    in:
      - id: buffer_size
        default: 5000
      - id: custom_enst
        source: custom_enst
      - id: input_vcf
        source: snpsift_annotate_prevalence/annotatedOutput
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
    'sbg:x': 799.2042236328125
    'sbg:y': 249.62277221679688
requirements: []
$schemas:
  - 'http://schema.org/version/latest/schemaorg-current-http.rdf'
's:author':
  - class: 's:Person'
    's:email': 'mailto:sivaprk@mskcc.org'
    's:identifier': ''
    's:name': Karthigayini Sivaprakasam
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
's:dateCreated': '2020-10-31'
's:license': 'https://spdx.org/licenses/Apache-2.0'
