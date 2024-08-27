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
    'sbg:x': 23.445261001586914
    'sbg:y': 364.7808837890625
  - id: vardict_input_vcf
    type: File
    'sbg:x': -6.394162178039551
    'sbg:y': 252.5694122314453
  - id: input_cosmicprevalenceDB_vcf
    type: File
    secondaryFiles:
      - .tbi
    'sbg:x': 478.74456787109375
    'sbg:y': 357.3795166015625
  - id: min_hom_vaf
    type: float?
    'sbg:x': 811.7153930664062
    'sbg:y': 475.2481384277344
  - id: output_vcf2mafName
    type: string?
    'sbg:x': 810.6497192382812
    'sbg:y': 390.56201171875
  - id: retain_info
    type: string?
    'sbg:x': 833.029296875
    'sbg:y': 255.85397338867188
  - id: tumor_id
    type: string?
    'sbg:x': 876.7227172851562
    'sbg:y': 144.93431091308594
  - id: snpsift_countOpName
    type: string?
    'sbg:x': 21.313875198364258
    'sbg:y': 146.92698669433594
  - id: snpsift_prevalOpName
    type: string?
    'sbg:x': 471.03662109375
    'sbg:y': 208.3065948486328
  - id: opOncoKbMafName
    type: string
    'sbg:x': 1262.8470458984375
    'sbg:y': 271.8393249511719
  - id: oncoKbApiToken
    type: File
    'sbg:x': 1170.1317138671875
    'sbg:y': 455.5693054199219
  - id: oncoKbAnnotateHotspots
    type: boolean?
    'sbg:x': 1230.876220703125
    'sbg:y': 542.3211059570312
  - id: input_mappability_bed
    type: File
    'sbg:x': 1663.8760986328125
    'sbg:y': 483.8832092285156
  - id: input_complexity_bed
    type: File
    'sbg:x': 1974.700927734375
    'sbg:y': 498.8029479980469
  - id: output_mappability_filename
    type: string
    'sbg:x': 1618.7889404296875
    'sbg:y': 318.9342956542969
  - id: column_name_mappability
    type: string?
    'sbg:x': 1702.2410888671875
    'sbg:y': 577.0948486328125
  - id: output_complexity_filename
    type: string
    'sbg:x': 2086.625732421875
    'sbg:y': 382.24090576171875
  - id: column_name_complexity
    type: string?
    'sbg:x': 2012.0001220703125
    'sbg:y': 601.6058349609375
  - id: input_hotspot_tsv_file
    type: File
    'sbg:x': 2425.953857421875
    'sbg:y': 306.6236572265625
  - id: output_column_name_hotpsot
    type: string?
    'sbg:x': 2538.91748046875
    'sbg:y': 206.44845581054688
  - id: output_hotspot_maf_name
    type: string?
    'sbg:x': 2457.218994140625
    'sbg:y': 758.5621337890625
  - id: input_47kchpd_tsv_file
    type: File
    'sbg:x': 2759.510498046875
    'sbg:y': 265.0616149902344
  - id: output_47kchpd_maf_name
    type: string?
    'sbg:x': 3004.045654296875
    'sbg:y': 208.01800537109375
  - id: output_column_name_47kchpd
    type: string?
    'sbg:x': 2837.483642578125
    'sbg:y': 590.1929931640625
  - id: input_panmeloid_tsv_file
    type: File
    'sbg:x': 3165.773193359375
    'sbg:y': 219.0523681640625
  - id: output_maf_name_panmyeloid
    type: string?
    'sbg:x': 3330.037841796875
    'sbg:y': 199.72714233398438
  - id: output_column_name_panmyeloid
    type: string?
    'sbg:x': 3216.4921875
    'sbg:y': 559.9721069335938
outputs:
  - id: cosmicCount_annotatedOutput
    outputSource:
      - snpsift_annotate_5_0/annotatedOutput
    type: File
    'sbg:x': 224.51815795898438
    'sbg:y': 602.496337890625
  - id: annotatedOutput_prevalence
    outputSource:
      - snpsift_annotate_5_1/annotatedOutput
    type: File
    'sbg:x': 714.343017578125
    'sbg:y': 463.94891357421875
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
    'sbg:x': 1504.72998046875
    'sbg:y': 733.0220336914062
  - id: output_mapability_maf
    outputSource:
      - maf_annotated_by_bed/output
    type: File
    'sbg:x': 2008.9051513671875
    'sbg:y': 272.00726318359375
  - id: output_complexity_maf
    outputSource:
      - maf_annotated_by_bed_1/output
    type: File
    'sbg:x': 2283.204345703125
    'sbg:y': 275.9561767578125
  - id: output_hotspot_maf
    outputSource:
      - pv_maf_annotated_by_tsv/output
    type: File?
    'sbg:x': 2793.349609375
    'sbg:y': 755.3427734375
  - id: output_47kchpd_maf
    outputSource:
      - pv_maf_annotated_by_tsv_1/output
    type: File?
    'sbg:x': 3171.963623046875
    'sbg:y': 695.1704711914062
  - id: output_panmyeloid_maf
    outputSource:
      - pv_maf_annotated_by_tsv_2/output
    type: File?
    'sbg:x': 3498.328369140625
    'sbg:y': 604.7518310546875
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
    'sbg:x': 245.35765075683594
    'sbg:y': 251.2992401123047
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
    'sbg:x': 639.072998046875
    'sbg:y': 278.7226257324219
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
    'sbg:x': 1015.934326171875
    'sbg:y': 356.05108642578125
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
    'sbg:x': 1426.226318359375
    'sbg:y': 402.77374267578125
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
    'sbg:x': 1838.0584716796875
    'sbg:y': 425.2846984863281
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
    'sbg:x': 2220.102294921875
    'sbg:y': 478.15325927734375
  - id: pv_maf_annotated_by_tsv
    in:
      - id: input_maf
        source: maf_annotated_by_bed_1/output
      - id: output_maf_name
        source: output_hotspot_maf_name
      - id: output_column_name
        source: output_column_name_hotpsot
      - id: input_tsv_file
        source: input_hotspot_tsv_file
    out:
      - id: output
    run: >-
      ../command_line_tools/postprocessing_variant_calls/0.2.3/maf_annotated_by_tsv/maf_annotated_by_tsv.cwl
    label: pv_maf_annotatedByTsv
    'sbg:x': 2624.56201171875
    'sbg:y': 446.36090087890625
  - id: pv_maf_annotated_by_tsv_1
    in:
      - id: input_maf
        source: pv_maf_annotated_by_tsv/output
      - id: output_maf_name
        source: output_47kchpd_maf_name
      - id: output_column_name
        source: output_column_name_47kchpd
      - id: input_tsv_file
        source: input_47kchpd_tsv_file
    out:
      - id: output
    run: >-
      ../command_line_tools/postprocessing_variant_calls/0.2.3/maf_annotated_by_tsv/maf_annotated_by_tsv.cwl
    label: pv_maf_annotatedByTsv
    'sbg:x': 3027.093994140625
    'sbg:y': 444.81915283203125
  - id: pv_maf_annotated_by_tsv_2
    in:
      - id: input_maf
        source: pv_maf_annotated_by_tsv_1/output
      - id: output_maf_name
        source: output_maf_name_panmyeloid
      - id: output_column_name
        source: output_column_name_panmyeloid
      - id: input_tsv_file
        source: input_panmeloid_tsv_file
    out:
      - id: output
    run: >-
      ../command_line_tools/postprocessing_variant_calls/0.2.3/maf_annotated_by_tsv/maf_annotated_by_tsv.cwl
    label: pv_maf_annotatedByTsv
    'sbg:x': 3366.108154296875
    'sbg:y': 434.5843505859375
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
