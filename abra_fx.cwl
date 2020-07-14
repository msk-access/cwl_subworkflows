class: Workflow
cwlVersion: v1.0
id: abra_fx_cwl
label: abra_fx.cwl
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: input_bam
    type:
      - File
      - type: array
        items: File
    secondaryFiles:
      - ^.bai
    'sbg:x': 0
    'sbg:y': 1067.03125
  - id: reference_fasta
    type: File
    secondaryFiles:
      - .fai
      - ^.dict
    'sbg:x': 0
    'sbg:y': 426.875
  - id: bam_index
    type: boolean?
    'sbg:x': 0
    'sbg:y': 1493.84375
  - id: option_bedgraph
    type: boolean?
    'sbg:x': 0
    'sbg:y': 533.578125
  - id: window_size
    type: string?
    'sbg:x': 0
    'sbg:y': 0
  - id: soft_clip_contig
    type: string?
    'sbg:x': 0
    'sbg:y': 213.4375
  - id: scoring_gap_alignments
    type: string?
    'sbg:x': 0
    'sbg:y': 320.171875
  - id: no_sort
    type: boolean?
    'sbg:x': 0
    'sbg:y': 746.953125
  - id: maximum_mixmatch_rate
    type: float?
    'sbg:x': 0
    'sbg:y': 853.625
  - id: maximum_average_depth
    type: int?
    'sbg:x': 0
    'sbg:y': 960.328125
  - id: ignore_bad_assembly
    type: boolean?
    'sbg:x': 0
    'sbg:y': 1173.734375
  - id: contig_anchor
    type: string?
    'sbg:x': 0
    'sbg:y': 1280.46875
  - id: consensus_sequence
    type: boolean?
    'sbg:x': 0
    'sbg:y': 1387.171875
  - id: number_of_threads
    type: int?
    label: abra_number_of_threads
    'sbg:x': 0
    'sbg:y': 640.28125
  - id: temporary_directory_1
    type: string?
    'sbg:x': 0
    'sbg:y': 106.703125
outputs:
  - id: output_file
    outputSource:
      - bedtools_merge/output_file
    type: File?
    label: indel_realign_targets
    'sbg:x': 676.9639892578125
    'sbg:y': 602.5546875
  - id: bam
    outputSource:
      - picard_fix_mate_information_2_9_0/bam
    type: File
    secondaryFiles:
      - ^.bai
    'sbg:x': 1418.003662109375
    'sbg:y': 746.921875
steps:
  - id: bedtools_genomecov
    in:
      - id: input
        source: input_bam
      - id: option_bedgraph
        source: option_bedgraph
    out:
      - id: output_file
    run: >-
      command_line_tools/bedtools_genomecov_v2.28.0_cv2/bedtools_genomecov_v2.28.0_cv2.cwl
    label: bedtools_genomecov
    'sbg:x': 257.40625
    'sbg:y': 739.890625
  - id: bedtools_merge
    in:
      - id: input
        source: bedtools_genomecov/output_file
    out:
      - id: output_file
    run: >-
      command_line_tools/bedtools_merge_v2.28.0_cv2/bedtools_merge_v2.28.0_cv2.cwl
    label: bedtools_merge
    'sbg:x': 503.6202697753906
    'sbg:y': 746.890625
  - id: abra2_2_18
    in:
      - id: number_of_threads
        source: number_of_threads
      - id: input_bam
        source:
          - input_bam
      - id: reference_fasta
        source: reference_fasta
      - id: targets
        source: bedtools_merge/output_file
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
      - id: no_sort
        source: no_sort
    out:
      - id: realigned_bam
    run: command_line_tools/abra2_2.17/abra2_2.17.cwl
    label: abra2_2.17
    'sbg:x': 676.9639892578125
    'sbg:y': 800.2578125
  - id: picard_fix_mate_information_2_9_0
    in:
      - id: input
        source: abra2_2_18/realigned_bam
      - id: temporary_directory
        source: temporary_directory_1
    out:
      - id: bam
    run: >-
      command_line_tools/picard_fix_mate_information_2.9.0/picard_fix_mate_information_2.9.0.cwl
    label: picard_fix_mate_information_2.9.0
    'sbg:x': 1163.8521728515625
    'sbg:y': 739.921875
requirements: []
