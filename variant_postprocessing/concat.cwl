class: Workflow
cwlVersion: v1.0
id: concat
label: concat
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: input
    type: File
    'sbg:x': -948.3859252929688
    'sbg:y': -124.5
  - id: fastaRef
    type: File
    'sbg:x': -914.3859252929688
    'sbg:y': -0.5
  - id: check_ref
    type: string?
    'sbg:x': -897.890625
    'sbg:y': 164
  - id: bgzip_output_name
    type: string?
    'sbg:x': -949.890625
    'sbg:y': 290
  - id: bcftools_sort_output_name
    type: string
    'sbg:x': -687.890625
    'sbg:y': 299
  - id: bcftools_norm_output_name
    type: string?
    'sbg:x': -462.890625
    'sbg:y': 449.99603271484375
  - id: multiallelics
    type: string?
    'sbg:x': -866.60791015625
    'sbg:y': -248.6446990966797
  - id: output_type
    type: string?
    'sbg:x': -767.2164306640625
    'sbg:y': -358.17816162109375
  - id: preset
    type: string?
    'sbg:x': -514.020751953125
    'sbg:y': -389.33612060546875
  - id: input_1
    type: File
    'sbg:x': -40.834815979003906
    'sbg:y': -370.9695129394531
  - id: bgzip_output_name_1
    type: string?
    'sbg:x': 197.94068908691406
    'sbg:y': -250.56134033203125
  - id: bcftools_sort_output_name_1
    type: string
    'sbg:x': 489.7774353027344
    'sbg:y': -138.31643676757812
  - id: output_type_1
    type: string?
    'sbg:x': -134.02490234375
    'sbg:y': -628.5560302734375
  - id: preset_1
    type: string?
    'sbg:x': 197.2157440185547
    'sbg:y': -587.6514282226562
  - id: stdout
    type: boolean
    'sbg:x': 495.8998718261719
    'sbg:y': -687.2761840820312
  - id: allow_overlaps
    type: boolean?
    'sbg:x': 107.66560363769531
    'sbg:y': 1210.692138671875
  - id: output_name
    type: string
    'sbg:x': 83.19007873535156
    'sbg:y': 836.5663452148438
  - id: concat_output_type
    type: string?
    'sbg:x': -32.19453811645508
    'sbg:y': 677.4754028320312
outputs:
  - id: bcftools_concat_output
    outputSource:
      - bcftools_concat/concatenated_vcf
    type: File
    'sbg:x': 494.02923583984375
    'sbg:y': 476.42645263671875
steps:
  - id: bgzip_normalize_sort
    in:
      - id: input
        source: input
      - id: fastaRef
        source: fastaRef
      - id: bgzip_output_name
        source: bgzip_output_name
      - id: preset
        source: preset
      - id: output_type
        source: output_type
      - id: bcftools_norm_output_name
        source: bcftools_norm_output_name
      - id: multiallelics
        source: multiallelics
      - id: check_ref
        source: check_ref
      - id: bcftools_sort_output_name
        source: bcftools_sort_output_name
    out:
      - id: bgzip_normalize_sort_output
    run: ./bgzip_normalize_sort.cwl
    label: bgzip_normalize_sort
    'sbg:x': -299.3984375
    'sbg:y': -81.5
  - id: bgzip_sort
    in:
      - id: input
        source: input_1
      - id: stdout
        source: stdout
      - id: bgzip_output_name
        source: bgzip_output_name_1
      - id: preset
        source: preset_1
      - id: output_type
        source: output_type
      - id: bcftools_sort_output_name
        source: bcftools_sort_output_name_1
    out:
      - id: bgzip_sorted_output
    run: ./bgzip_sort-cwl.cwl
    label: bgzip_sort.cwl
    'sbg:x': 513.9744873046875
    'sbg:y': -428.7419738769531
  - id: bcftools_concat
    in:
      - id: allow_overlaps
        source: allow_overlaps
      - id: output_name
        source: output_name
      - id: output_type
        source: concat_output_type
      - id: input
        source:
          - bgzip_normalize_sort/bgzip_normalize_sort_output
          - bgzip_sort/bgzip_sorted_output
    out:
      - id: concatenated_vcf
    run: ../command_line_tools/bcftools_1.15.1/bcftools_concat_1.15.1.cwl
    label: bcftools_concat
    'sbg:x': 313.76495361328125
    'sbg:y': 478.2802734375
requirements:
  - class: SubworkflowFeatureRequirement
  - class: MultipleInputFeatureRequirement
