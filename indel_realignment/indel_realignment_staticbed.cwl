class: Workflow
cwlVersion: v1.0
id: indel_realignment_staticbed
label: indel_realignment_staticbed
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
    'sbg:y': 533.75
  - id: scoring_gap_alignments
    type: string?
    'sbg:x': 0
    'sbg:y': 640.5
  - id: reference_fasta
    type: File
    secondaryFiles:
      - .fai
    'sbg:x': 0
    'sbg:y': 747.25
  - id: no_sort
    type: boolean?
    'sbg:x': 0
    'sbg:y': 1067.5
  - id: maximum_mixmatch_rate
    type: float?
    'sbg:x': 0
    'sbg:y': 1281
  - id: maximum_average_depth
    type: int?
    'sbg:x': 0
    'sbg:y': 1387.75
  - id: input_bam
    type: File
    secondaryFiles:
      - ^.bai
    'sbg:x': 0
    'sbg:y': 1494.5
  - id: ignore_bad_assembly
    type: boolean?
    'sbg:x': 0
    'sbg:y': 1601.25
  - id: contig_anchor
    type: string?
    'sbg:x': 0
    'sbg:y': 1708
  - id: consensus_sequence
    type: boolean?
    'sbg:x': 0
    'sbg:y': 1814.75
  - id: bam_index
    type: boolean?
    'sbg:x': 0
    'sbg:y': 1921.5
  - id: number_of_threads
    type: int?
    'sbg:x': 0
    'sbg:y': 960.75
  - id: no_edge_complex_indel
    type: boolean?
    'sbg:x': 0
    'sbg:y': 1174.25
  - id: output_bams
    type:
      - string
      - type: array
        items: string
    'sbg:x': 0
    'sbg:y': 854
  - id: validation_stringency
    type: string?
    'sbg:x': 0
    'sbg:y': 106.75
  - id: sort_order
    type: string?
    'sbg:x': 0
    'sbg:y': 427
  - id: output_file_name
    type: string?
    'sbg:x': 257.390625
    'sbg:y': 742
  - id: create_bam_index
    type: boolean?
    'sbg:x': 257.390625
    'sbg:y': 848.75
  - id: temporary_directory
    type: string?
    'sbg:x': 0
    'sbg:y': 213.5
  - id: targets
    type: File
    'sbg:x': 0
    'sbg:y': 320.25
outputs:
  - id: indel_realignment_bam
    outputSource:
      - picard_fix_mate_information_4_1_8_1/picard_fix_mate_information_bam
    type: File
    secondaryFiles:
      - ^.bai
    'sbg:x': 1245.78662109375
    'sbg:y': 960.75
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
        source: targets
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
    'sbg:x': 257.390625
    'sbg:y': 1067.5
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
    'sbg:x': 811.167236328125
    'sbg:y': 925.75
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
