class: Workflow
cwlVersion: v1.0
id: indel_realignment_cwl
label: indel_realignment.cwl
$namespaces:
  s: 'https://schema.org/'
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: window_size
    type: string?
    'sbg:x': 8.834391593933105
    'sbg:y': 201.19451904296875
  - id: soft_clip_contig
    type: string?
    'sbg:x': 10.5871000289917
    'sbg:y': 347.4817810058594
  - id: scoring_gap_alignments
    type: string?
    'sbg:x': 15.195699691772461
    'sbg:y': 485.8731994628906
  - id: reference_fasta
    type: File
    secondaryFiles:
      - ^.fasta.fai
    'sbg:x': 19.608600616455078
    'sbg:y': 620.2431030273438
  - id: no_sort
    type: boolean?
    'sbg:x': 18
    'sbg:y': 1021.0908203125
  - id: maximum_mixmatch_rate
    type: float?
    'sbg:x': 4.87857723236084
    'sbg:y': 1251.0927734375
  - id: maximum_average_depth
    type: int?
    'sbg:x': 9.775715827941895
    'sbg:y': 1374.765625
  - id: input_bam
    type:
      - File
      - type: array
        items: File
    secondaryFiles:
      - ^.bai
    'sbg:x': 12
    'sbg:y': 1493.5413818359375
  - id: ignore_bad_assembly
    type: boolean?
    'sbg:x': 16
    'sbg:y': 1622.2142333984375
  - id: contig_anchor
    type: string?
    'sbg:x': 14.775715827941895
    'sbg:y': 1747.989990234375
  - id: consensus_sequence
    type: boolean?
    'sbg:x': 14
    'sbg:y': 1881.5413818359375
  - id: bam_index
    type: boolean?
    'sbg:x': 17
    'sbg:y': 2013.8685302734375
  - id: number_of_threads
    type: int?
    'sbg:x': 15.735528945922852
    'sbg:y': 904.0529174804688
  - id: option_bedgraph
    type: boolean?
    'sbg:x': 13.505415916442871
    'sbg:y': 66.65933227539062
  - id: no_edge_complex_indel
    type: boolean?
    'sbg:x': 7.0559563636779785
    'sbg:y': 1133.9771728515625
  - id: distance_between_features
    type: int?
    'sbg:x': 16.124685287475586
    'sbg:y': -77.0201187133789
  - id: output_bams
    type:
      - string
      - type: array
        items: string
    'sbg:x': 19.456621170043945
    'sbg:y': 776.728271484375
outputs:
  - id: abra_fx_bam
    outputSource:
      - picard_fix_mate_information_4_1_8_1/picard_fix_mate_information_bam
    type: File
    'sbg:x': 1860.3577880859375
    'sbg:y': 865.3345947265625
steps:
  - id: abra2_2_22
    in:
      - id: number_of_threads
        source: number_of_threads
      - id: input_bam
        source:
          - input_bam
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
    'sbg:x': 1173.35400390625
    'sbg:y': 885.6654052734375
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
    'sbg:x': 673.576904296875
    'sbg:y': 305.3960876464844
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
    'sbg:x': 892.4700317382812
    'sbg:y': 307.1064453125
  - id: picard_fix_mate_information_4_1_8_1
    in:
      - id: input
        source: abra2_2_22/abra_realigned_bam
    out:
      - id: picard_fix_mate_information_bam
    run: >-
      ../command_line_tools/picard_fix_mate_information_4.1.8.1/picard_fix_mate_information_4.1.8.1.cwl
    label: picard_fix_mate_information_4.1.8.1
    'sbg:x': 1535.5885009765625
    'sbg:y': 881
requirements: []
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
