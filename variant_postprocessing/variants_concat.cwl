class: Workflow
cwlVersion: v1.0
id: variants_concat
label: variants_concat
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: fastaRef
    type: File
    'sbg:x': -495.60113525390625
    'sbg:y': -51.5
  - id: input
    type: File
    'sbg:x': -468.60113525390625
    'sbg:y': -197.5
  - id: bgzip_output_name
    type: string?
    'sbg:x': -275.7477722167969
    'sbg:y': 175.36965942382812
  - id: check_ref
    type: string?
    'sbg:x': -326.6642761230469
    'sbg:y': 39.93177032470703
  - id: multiallelics
    type: string?
    'sbg:x': -409.58453369140625
    'sbg:y': -127.52545928955078
  - id: norm_output_name
    type: string?
    'sbg:x': -349.4378967285156
    'sbg:y': -236.35031127929688
  - id: output_type
    type: string?
    'sbg:x': -203.44635009765625
    'sbg:y': -346.006103515625
  - id: preset
    type: string?
    'sbg:x': -69.02679443359375
    'sbg:y': -255.37474060058594
  - id: sort_output_name
    type: string?
    'sbg:x': 147.8774871826172
    'sbg:y': -269.6313781738281
  - id: complex_sort_output_name
    type: string?
    'sbg:x': 622.2739868164062
    'sbg:y': -229.81654357910156
  - id: complex_input
    type: File
    'sbg:x': 461.0975036621094
    'sbg:y': 26.654048919677734
  - id: complex_bgzip_output_name
    type: string?
    'sbg:x': 494.0386962890625
    'sbg:y': 265.64788818359375
  - id: output_name
    type: string
    'sbg:x': 21.79051399230957
    'sbg:y': 742.0482177734375
  - id: allow_overlaps
    type: boolean?
    'sbg:x': 93.62149810791016
    'sbg:y': 873.0341186523438
  - id: stdout
    type: boolean
    'sbg:x': 315.8106689453125
    'sbg:y': -71.67112731933594
outputs:
  - id: concatenated_vcf
    outputSource:
      - bcftools_concat/concatenated_vcf
    type: File
    'sbg:x': 689.3961181640625
    'sbg:y': 751.9074096679688
steps:
  - id: bgzip_normalize_sort
    in:
      - id: input
        source: input
      - id: fastaRef
        source: fastaRef
      - id: stdout
        source: stdout
      - id: bgzip_output_name
        source: bgzip_output_name
      - id: preset
        source: preset
      - id: output_type
        source: output_type
      - id: norm_output_name
        source: norm_output_name
      - id: multiallelics
        source: multiallelics
      - id: check_ref
        source: check_ref
      - id: sort_output_name
        source: sort_output_name
    out:
      - id: bgzip_normalize_sort_output
    run: ./variant_normalize_sort.cwl
    label: bgzip_normalize_sort
    'sbg:x': 125.46411895751953
    'sbg:y': 20.04885482788086
  - id: bgzip_sort
    in:
      - id: input
        source: complex_input
      - id: stdout
        source: stdout
      - id: bgzip_output_name
        source: complex_bgzip_output_name
      - id: preset
        source: preset
      - id: output_type
        source: output_type
      - id: sort_output_name
        source: complex_sort_output_name
    out:
      - id: bgzip_sorted_output
    run: ./variant_sort.cwl
    label: bgzip_sort.cwl
    'sbg:x': 1037.812255859375
    'sbg:y': -30.04885482788086
  - id: bcftools_concat
    in:
      - id: allow_overlaps
        source: allow_overlaps
      - id: output_name
        source: output_name
      - id: output_type
        source: output_type
      - id: input
        source:
          - bgzip_normalize_sort/bgzip_normalize_sort_output
          - bgzip_sort/bgzip_sorted_output
    out:
      - id: concatenated_vcf
    run: ../command_line_tools/bcftools_1.15.1/bcftools_concat_1.15.1.cwl
    label: bcftools_concat
    'sbg:x': 369.0542907714844
    'sbg:y': 754.6953125
requirements:
  - class: SubworkflowFeatureRequirement
  - class: MultipleInputFeatureRequirement
