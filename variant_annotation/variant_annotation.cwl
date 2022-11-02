class: Workflow
cwlVersion: v1.0
id: variant_annotation
label: variant_annotation
$namespaces:
  s: 'https://schema.org/'
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: input_cosmicCount_vcf
    type: File
    'sbg:x': 0
    'sbg:y': 434.1875
  - id: vardict_input_vcf
    type: File
    'sbg:x': 0
    'sbg:y': 327.390625
  - id: input_cosmicprevalence_vcf
    type: File
    'sbg:x': 155.640625
    'sbg:y': 434.1875
  - id: min_hom_vaf
    type: float?
    'sbg:x': 416.7921447753906
    'sbg:y': 654.78125
  - id: output_maf
    type: string?
    'sbg:x': 416.7921447753906
    'sbg:y': 441.1875
  - id: ref_fasta
    type: string?
    'sbg:x': 416.7921447753906
    'sbg:y': 334.390625
  - id: retain_info
    type: string?
    'sbg:x': 416.7921447753906
    'sbg:y': 227.59375
  - id: tumor_id
    type: string?
    'sbg:x': 416.7921447753906
    'sbg:y': 0
outputs:
  - id: cosmicCount_annotatedOutput
    outputSource:
      - snpsift_annotate_5_0/annotatedOutput
    type: File
    'sbg:x': 416.7921447753906
    'sbg:y': 761.578125
  - id: annotatedOutput_prevalence
    outputSource:
      - snpsift_annotate_5_1/annotatedOutput
    type: File
    'sbg:x': 656.337158203125
    'sbg:y': 723.7005615234375
  - id: vcf2maf_maf
    outputSource:
      - vcf2maf_v1_6_21/vcf2maf_maf
    type: File
    'sbg:x': 1113.535400390625
    'sbg:y': 265.8045959472656
steps:
  - id: snpsift_annotate_5_0
    in:
      - id: input_DB_vcf
        source: input_cosmicCount_vcf
      - id: input_vcf
        source: vardict_input_vcf
    out:
      - id: annotatedOutput
    run: ../../cwl-commandlinetools/snpsift_annotate_5.0/snpsift_annotate_5-0.cwl
    label: snpsift_countAnnotation
    'sbg:x': 155.640625
    'sbg:y': 320.390625
  - id: snpsift_annotate_5_1
    in:
      - id: input_DB_vcf
        source: input_cosmicprevalence_vcf
      - id: input_vcf
        source: snpsift_annotate_5_0/annotatedOutput
    out:
      - id: annotatedOutput
    run: ../../cwl-commandlinetools/snpsift_annotate_5.0/snpsift_annotate_5-0.cwl
    label: snpsift_annotate_5.0
    'sbg:x': 416.7921447753906
    'sbg:y': 113.796875
  - id: vcf2maf_v1_6_21
    in:
      - id: input_vcf
        source: snpsift_annotate_5_1/annotatedOutput
      - id: min_hom_vaf
        source: min_hom_vaf
      - id: output_maf
        source: output_maf
      - id: ref_fasta
        source: ref_fasta
      - id: retain_info
        source: retain_info
      - id: tumor_id
        source: tumor_id
      - id: vcf_tumor_id
        source: tumor_id
    out:
      - id: vcf2maf_maf
    run: ../../cwl-commandlinetools/vcf2maf_1.6.21/vcf2maf_1.6.21.cwl
    'sbg:x': 833.5098266601562
    'sbg:y': 276.9501953125
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
