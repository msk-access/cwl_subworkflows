class: Workflow
cwlVersion: v1.0
id: abra_fx_cwl
label: abra_fx.cwl
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: targets
    type: File
    'sbg:x': 15.996973991394043
    'sbg:y': 339.2330017089844
  - id: window_size
    type: string?
    'sbg:x': 14.86524486541748
    'sbg:y': 224.2661895751953
  - id: soft_clip_contig
    type: string?
    'sbg:x': 16.210084915161133
    'sbg:y': 481.13067626953125
  - id: scoring_gap_alignments
    type: string?
    'sbg:x': 17.5549259185791
    'sbg:y': 623.6837158203125
  - id: reference_fasta
    type: File
    'sbg:x': 16.210084915161133
    'sbg:y': 770.2713012695312
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
    'sbg:x': 14.788423538208008
    'sbg:y': 104.05289459228516
  - id: no_edge_complex_indel
    type: boolean?
    'sbg:x': 7.0559563636779785
    'sbg:y': 1133.9771728515625
outputs:
  - id: abra_fx_bam
    outputSource:
      - picard_fix_mate_information_4_1_8_1/picard_fix_mate_information_bam
    type: File
    'sbg:x': 1477.4757080078125
    'sbg:y': 871.328125
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
    run: command_line_tools/abra2_2.22/abra2_2.22.cwl
    label: abra2_2.22
    'sbg:x': 773.9833984375
    'sbg:y': 880.1202392578125
  - id: bedtools_genomecov
    in:
      - id: input
        source: input_bam
      - id: option_bedgraph
        source: option_bedgraph
    out:
      - id: bedtools_genomecove_bedgraph
    run: >-
      command_line_tools/bedtools_genomecov_v2.28.0_cv2/bedtools_genomecov_v2.28.0_cv2.cwl
    label: bedtools_genomecov
    'sbg:x': 768.715576171875
    'sbg:y': 583.307373046875
  - id: bedtools_merge
    in: []
    out:
      - id: bedtools_merge_bed
    run: >-
      command_line_tools/bedtools_merge_v2.28.0_cv2/bedtools_merge_v2.28.0_cv2.cwl
    label: bedtools_merge
    'sbg:x': 762.4281005859375
    'sbg:y': 410.26446533203125
  - id: picard_fix_mate_information_4_1_8_1
    in:
      - id: input
        source: abra2_2_22/abra_realigned_bam
    out:
      - id: picard_fix_mate_information_bam
    run: >-
      command_line_tools/picard_fix_mate_information_4.1.8.1/picard_fix_mate_information_4.1.8.1.cwl
    label: picard_fix_mate_information_4.1.8.1
    'sbg:x': 1190.5587158203125
    'sbg:y': 881.240478515625
requirements: []
