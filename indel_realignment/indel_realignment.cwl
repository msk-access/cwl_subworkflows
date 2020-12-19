class: Workflow
cwlVersion: v1.0
id: indel_realignment
label: indel_realignment
$namespaces:
  s: 'https://schema.org/'
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: window_size
    type: string?
    'sbg:x': 0
    'sbg:y': 0
  - id: soft_clip_contig
    type: string?
    'sbg:x': 0
    'sbg:y': 426.796875
  - id: scoring_gap_alignments
    type: string?
    'sbg:x': 0
    'sbg:y': 533.53125
  - id: reference_fasta
    type: File
    secondaryFiles:
      - .fai
    'sbg:x': 0
    'sbg:y': 640.21875
  - id: no_sort
    type: boolean?
    'sbg:x': 0
    'sbg:y': 1066.875
  - id: maximum_mixmatch_rate
    type: float?
    'sbg:x': 0
    'sbg:y': 1280.25
  - id: maximum_average_depth
    type: int?
    'sbg:x': 0
    'sbg:y': 1386.9375
  - id: input_bam
    type: File
    secondaryFiles:
      - ^.bai
    'sbg:x': 0
    'sbg:y': 1493.625
  - id: ignore_bad_assembly
    type: boolean?
    'sbg:x': 0
    'sbg:y': 1600.3125
  - id: contig_anchor
    type: string?
    'sbg:x': 0
    'sbg:y': 1813.6875
  - id: consensus_sequence
    type: boolean?
    'sbg:x': 0
    'sbg:y': 1920.375
  - id: bam_index
    type: boolean?
    'sbg:x': 0
    'sbg:y': 2027.015625
  - id: number_of_threads
    type: int?
    'sbg:x': 0
    'sbg:y': 960.234375
  - id: option_bedgraph
    type: boolean?
    'sbg:x': 0
    'sbg:y': 853.546875
  - id: no_edge_complex_indel
    type: boolean?
    'sbg:x': 0
    'sbg:y': 1173.5625
  - id: distance_between_features
    type: int?
    'sbg:x': 0
    'sbg:y': 1707
  - id: output_bams
    type:
      - string
      - type: array
        items: string
    'sbg:x': 0
    'sbg:y': 746.859375
  - id: validation_stringency
    type: string?
    'sbg:x': 0
    'sbg:y': 106.6875
  - id: sort_order
    type: string?
    'sbg:x': 0
    'sbg:y': 320.109375
  - id: output_file_name
    type: string?
    'sbg:x': 992.927978515625
    'sbg:y': 794.8671875
  - id: create_bam_index
    type: boolean?
    'sbg:x': 992.927978515625
    'sbg:y': 901.5078125
  - id: temporary_directory
    type: string?
    'sbg:x': 0
    'sbg:y': 213.421875
outputs:
  - id: indel_realignment_bam
    outputSource:
      - picard_fix_mate_information_4_1_8_1/picard_fix_mate_information_bam
    type: File
    secondaryFiles:
      - ^.bai
    'sbg:x': 1981.323974609375
    'sbg:y': 1013.4609375
steps:
  - id: abra2_2_22
    in:
      - id: number_of_threads
        source: number_of_threads
      - id: input_bam
        source:
          - input_bam
      - id: working_directory
        source: temporary_directory
      - id: reference_fasta
        source: reference_fasta
      - id: targets
        source: bedtools_merge/bedtools_merge_bed
      - id: maximum_average_depth
        source: maximum_average_depth
      - id: soft_clip_contig
        source: soft_clip_contig
      - id: maximum_mixmatch_rate
        source: maximum_mixmatch_rate
      - id: scoring_gap_alignments
        source: scoring_gap_alignments
      - id: contig_anchor
        source: contig_anchor
      - id: window_size
        source: window_size
      - id: consensus_sequence
        source: consensus_sequence
      - id: output_bams
        source:
          - output_bams
      - id: ignore_bad_assembly
        source: ignore_bad_assembly
      - id: bam_index
        source: bam_index
      - id: no_edge_complex_indel
        source: no_edge_complex_indel
      - id: no_sort
        source: no_sort
    out:
      - id: abra_realigned_bam
    run: ../command_line_tools/abra2_2.22/abra2_2.22.cwl
    label: abra2_2.22
    'sbg:x': 992.927978515625
    'sbg:y': 1120.1484375
  - id: bedtools_genomecov
    in:
      - id: input
        source: input_bam
      - id: option_bedgraph
        source: option_bedgraph
    out:
      - id: bedtools_genomecove_bedgraph
    run: >-
      ../command_line_tools/bedtools_genomecov_v2.28.0_cv2/bedtools_genomecov_v2.28.0_cv2.cwl
    label: bedtools_genomecov
    'sbg:x': 269.59375
    'sbg:y': 1006.4609375
  - id: bedtools_merge
    in:
      - id: input
        source: bedtools_genomecov/bedtools_genomecove_bedgraph
      - id: distance_between_features
        source: distance_between_features
    out:
      - id: bedtools_merge_bed
    run: >-
      ../command_line_tools/bedtools_merge_v2.28.0_cv2/bedtools_merge_v2.28.0_cv2.cwl
    label: bedtools_merge
    'sbg:x': 635.5108642578125
    'sbg:y': 1006.4609375
  - id: picard_fix_mate_information_4_1_8_1
    in:
      - id: input
        source: abra2_2_22/abra_realigned_bam
      - id: output_file_name
        source: output_file_name
      - id: sort_order
        source: sort_order
      - id: validation_stringency
        source: validation_stringency
      - id: create_bam_index
        source: create_bam_index
      - id: temporary_directory
        source: temporary_directory
    out:
      - id: picard_fix_mate_information_bam
    run: >-
      ../command_line_tools/picard_fix_mate_information_4.1.8.1/picard_fix_mate_information_4.1.8.1.cwl
    label: picard_fix_mate_information_4.1.8.1
    'sbg:x': 1546.70458984375
    'sbg:y': 978.328125
requirements: []
$schemas:
  - 'http://schema.org/version/latest/schemaorg-current-http.rdf'
's:author':
  - class: 's:Person'
    's:email': 'mailto:murphyc4@mskcc.org'
    's:name': Charlie Murphy
's:citation': ''
's:codeRepository': 'https://github.com/msk-access/cwl_subworkflows/indel_realignment'
's:contributor':
  - class: 's:Person'
    's:email': 'mailto:murphyc4@mskcc.org'
    's:name': Charlie Murphy
's:dateCreated': '2020-09-14'
's:license': 'https://spdx.org/licenses/Apache-2.0'
