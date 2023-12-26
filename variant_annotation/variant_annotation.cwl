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
    'sbg:y': 855.25
  - id: vardict_input_vcf
    type: File
    'sbg:x': 0
    'sbg:y': 0
  - id: input_cosmicprevalenceDB_vcf
    type: File
    secondaryFiles:
      - .tbi
    'sbg:x': 272.546875
    'sbg:y': 481.078125
  - id: min_hom_vaf
    type: float?
    'sbg:x': 573.796875
    'sbg:y': 601.984375
  - id: output_vcf2mafName
    type: string?
    'sbg:x': 573.796875
    'sbg:y': 495.078125
  - id: retain_info
    type: string?
    'sbg:x': 573.796875
    'sbg:y': 388.171875
  - id: tumor_id
    type: string?
    'sbg:x': 573.796875
    'sbg:y': 146.359375
  - id: snpsift_countOpName
    type: string?
    'sbg:x': 0
    'sbg:y': 213.8125
  - id: snpsift_prevalOpName
    type: string?
    'sbg:x': 0
    'sbg:y': 106.90625
  - id: opOncoKbMafName
    type: string
    'sbg:x': 0
    'sbg:y': 534.53125
  - id: oncoKbApiToken
    type: File
    'sbg:x': 0
    'sbg:y': 641.4375
  - id: oncoKbAnnotateHotspots
    type: boolean?
    'sbg:x': 0
    'sbg:y': 748.34375
  - id: input_mappability_bed
    type: File
    'sbg:x': 1163.603759765625
    'sbg:y': 502.078125
  - id: input_complexity_bed
    type: File
    'sbg:x': 1428.8468017578125
    'sbg:y': 502.078125
  - id: output_mappability_filename
    type: string
    'sbg:x': 0
    'sbg:y': 320.71875
  - id: column_name_mappability
    type: string?
    'sbg:x': 1163.603759765625
    'sbg:y': 608.984375
  - id: output_complexity_filename
    type: string
    'sbg:x': 0
    'sbg:y': 427.625
  - id: column_name_complexity
    type: string?
    'sbg:x': 1428.8468017578125
    'sbg:y': 608.984375
outputs:
  - id: cosmicCount_annotatedOutput
    outputSource:
      - snpsift_annotate_5_0/annotatedOutput
    type: File
    'sbg:x': 573.796875
    'sbg:y': 708.890625
  - id: annotatedOutput_prevalence
    outputSource:
      - snpsift_annotate_5_1/annotatedOutput
    type: File
    'sbg:x': 871.65625
    'sbg:y': 481.078125
  - id: vcf2maf_maf
    outputSource:
      - vcf2maf_v1_6_21/vcf2maf_maf
    type: File
    'sbg:x': 1163.603759765625
    'sbg:y': 246.265625
  - id: oncokb_maf
    outputSource:
      - oncokb_annotator/outputMaf
    type: File?
    'sbg:x': 1428.8468017578125
    'sbg:y': 246.265625
  - id: output_mapability_maf
    outputSource:
      - maf_annotated_by_bed/output
    type: File
    'sbg:x': 1686.1904296875
    'sbg:y': 353.171875
  - id: output_complexity_maf
    outputSource:
      - maf_annotated_by_bed_1/output
    type: File
    'sbg:x': 1923.05859375
    'sbg:y': 374.171875
  - id: output
    outputSource:
      - maf_annotated_by_bed_1/output
    type: File
    'sbg:x': 1923.05859375
    'sbg:y': 481.078125
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
    'sbg:x': 272.546875
    'sbg:y': 360.171875
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
    'sbg:x': 573.796875
    'sbg:y': 267.265625
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
      - id: vep_data
        default: /.vep/
      - id: vep_path
        default: /usr/local/bin/
    out:
      - id: vcf2maf_maf
    run: ../command_line_tools//vcf2maf_1.6.21/vcf2maf_1.6.21.cwl
    'sbg:x': 871.65625
    'sbg:y': 339.171875
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
    'sbg:x': 1163.603759765625
    'sbg:y': 374.171875
  - id: maf_annotated_by_bed
    in:
      - id: input_maf
        source: oncokb_annotator/outputMaf
      - id: input_bed
        source: input_mappability_bed
      - id: output_filename
        source: output_mappability_filename
      - id: column_name
        source: column_name_mappability
    out:
      - id: output
    run: >-
      ../command_line_tools/postprocessing_variant_calls/0.2.3/maf_annotated_by_bed/maf_annotated_by_bed.cwl
    label: maf_annotated_by_bed
    'sbg:x': 1464.233642578125
    'sbg:y': 372.9342956542969
  - id: maf_annotated_by_bed_1
    in:
      - id: input_maf
        source: maf_annotated_by_bed/output
      - id: input_bed
        source: input_complexity_bed
      - id: output_filename
        source: output_complexity_filename
      - id: column_name
        source: column_name_complexity
    out:
      - id: output
    run: >-
      ../command_line_tools/postprocessing_variant_calls/0.2.3/maf_annotated_by_bed/maf_annotated_by_bed.cwl
    label: maf_annotated_by_bed
    'sbg:x': 1748.00244140625
    'sbg:y': 573.7960815429688
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
