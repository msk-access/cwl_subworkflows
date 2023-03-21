class: Workflow
cwlVersion: v1.0
id: variant_annotation
label: variant_annotation
$namespaces:
  s: 'https://schema.org/'
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: input_cosmicCountDB_vcf
    type: File
    secondaryFiles:
      - .tbi
    'sbg:x': 0
    'sbg:y': 434.1875
  - id: vardict_input_vcf
    type: File
    'sbg:x': 0
    'sbg:y': 327.390625
  - id: input_cosmicprevalenceDB_vcf
    type: File
    secondaryFiles:
      - .tbi
    'sbg:x': 217.47328186035156
    'sbg:y': 564.6259765625
  - id: min_hom_vaf
    type: float?
    'sbg:x': 416.7921447753906
    'sbg:y': 654.78125
  - id: output_vcf2mafName
    type: string?
    'sbg:x': 416.7921447753906
    'sbg:y': 441.1875
  - id: retain_info
    type: string?
    'sbg:x': 407
    'sbg:y': 277
  - id: tumor_id
    type: string?
    'sbg:x': 469
    'sbg:y': -64
  - id: snpsift_countOpName
    type: string?
    'sbg:x': 16.4202823638916
    'sbg:y': 169.89190673828125
  - id: snpsift_prevalOpName
    type: string?
    'sbg:x': 214.9839324951172
    'sbg:y': -51.58765411376953
  - id: opOncoKbMafName
    type: string
    'sbg:x': 953.6817626953125
    'sbg:y': 129.14283752441406
  - id: oncoKbApiToken
    type: File
    'sbg:x': 934
    'sbg:y': 402
  - id: oncoKbAnnotateHotspots
    type: boolean?
    'sbg:x': 914.09375
    'sbg:y': 582.5
  - id: input_complexity_bed
    type: File
    'sbg:x': 1156
    'sbg:y': 356
  - id: input_DUST_bed
    type: File
    'sbg:x': 1406.9556884765625
    'sbg:y': 421.1669921875
  - id: output_DUST_filename
    type: string?
    'sbg:x': 1361.5447998046875
    'sbg:y': 125.57429504394531
  - id: column_name_DUST
    type: string?
    'sbg:x': 1497.9617919921875
    'sbg:y': 538.1150512695312
  - id: output_complexity_filename
    type: string?
    'sbg:x': 1218.041259765625
    'sbg:y': 70.77140045166016
  - id: column_name_complexity
    type: string?
    'sbg:x': 1273.205322265625
    'sbg:y': 514.48193359375
outputs:
  - id: cosmicCount_annotatedOutput
    outputSource:
      - snpsift_annotate_5_0/annotatedOutput
    type: File
    'sbg:x': 348.4152526855469
    'sbg:y': 772.9266967773438
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
    'sbg:x': 1148.8089599609375
    'sbg:y': 594.5475463867188
  - id: output
    outputSource:
      - maf_annotated_by_bed_1/output
    type: File
    'sbg:x': 1663.9556884765625
    'sbg:y': 281.1669921875
steps:
  - id: snpsift_annotate_5_0
    in:
      - id: input_DB_vcf
        source: input_cosmicCountDB_vcf
      - id: input_vcf
        source: vardict_input_vcf
      - id: output_file_name
        source: snpsift_countOpName
    out:
      - id: annotatedOutput
    run: ../command_line_tools/snpsift_annotate_5.0/snpsift_annotate_5-0.cwl
    label: snpsift_countAnnotation
    'sbg:x': 155.640625
    'sbg:y': 320.390625
  - id: snpsift_annotate_5_1
    in:
      - id: input_DB_vcf
        source: input_cosmicprevalenceDB_vcf
      - id: input_vcf
        source: snpsift_annotate_5_0/annotatedOutput
      - id: output_file_name
        source: snpsift_prevalOpName
    out:
      - id: annotatedOutput
    run: ../command_line_tools/snpsift_annotate_5.0/snpsift_annotate_5-0.cwl
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
        source: output_vcf2mafName
      - id: ref_fasta
        default: /.vep/homo_sapiens/105_GRCh37/Homo_sapiens.GRCh37.dna.toplevel.fa.gz
      - id: retain_info
        source: retain_info
      - id: tumor_id
        source: tumor_id
      - id: vcf_tumor_id
        source: tumor_id
    out:
      - id: vcf2maf_maf
    run: ../command_line_tools//vcf2maf_1.6.21/vcf2maf_1.6.21.cwl
    'sbg:x': 833.5098266601562
    'sbg:y': 276.9501953125
  - id: oncokb_annotator
    in:
      - id: inputMafFile
        source: vcf2maf_v1_6_21/vcf2maf_maf
      - id: outputMafName
        source: opOncoKbMafName
      - id: apiToken
        source: oncoKbApiToken
      - id: referenceGenome
        default: GRCh37
      - id: annotateHotspots
        source: oncoKbAnnotateHotspots
    out:
      - id: outputMaf
    run: ../command_line_tools/oncokb_annotator_3.2.2/oncokb_annotator_3-2-2.cwl
    label: oncokb_annotator
    'sbg:x': 1059.142822265625
    'sbg:y': 261.2857360839844
  - id: maf_annotated_by_bed
    in:
      - id: input_maf
        source: oncokb_annotator/outputMaf
      - id: input_bed
        source: input_complexity_bed
      - id: output_filename
        source: output_complexity_filename
      - id: column_name
        source: column_name_complexity
    out:
      - id: output
    run: >-
      ../command_line_tools/postprocessing_variant_calls/0.2.0/maf_annotated_by_bed/maf_annotated_by_bed.cwl
    label: maf_annotated_by_bed
    'sbg:x': 1317.3984375
    'sbg:y': 267
  - id: maf_annotated_by_bed_1
    in:
      - id: input_maf
        source: maf_annotated_by_bed/output
      - id: input_bed
        source: input_DUST_bed
      - id: output_filename
        source: output_DUST_filename
      - id: column_name
        source: column_name_DUST
    out:
      - id: output
    run: >-
      ../command_line_tools/postprocessing_variant_calls/0.2.0/maf_annotated_by_bed/maf_annotated_by_bed.cwl
    label: maf_annotated_by_bed
    'sbg:x': 1525.9556884765625
    'sbg:y': 284.1666564941406
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
