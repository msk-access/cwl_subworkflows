class: Workflow
cwlVersion: v1.0
id: chipvar_processing
label: chipvar_processing
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: output_maf_name_filter
    type: string?
    'sbg:x': -453
    'sbg:y': -272.5
  - id: output_maf_name_tag
    type: string?
    'sbg:x': -911
    'sbg:y': -200
  - id: input_variant_annotated_maf
    type: File
    'sbg:x': -1012.5234375
    'sbg:y': 20
outputs:
  - id: output_maf_cmoch_filtered
    outputSource:
      - pv_maf_filter/output
    type: File?
    'sbg:x': -183
    'sbg:y': 111
  - id: output_maf_cmoch_tag
    outputSource:
      - pv_maf_tag/output
    type: File?
    'sbg:x': -559
    'sbg:y': 104
steps:
  - id: pv_maf_filter
    in:
      - id: input_maf
        source: pv_maf_tag/output
      - id: output_maf_name
        source: output_maf_name_filter
    out:
      - id: output
    run: >-
      ../command_line_tools/postprocessing_variant_calls/0.2.3/maf_filter_cmoch/maf_filter_cmoch.cwl
    label: pv_maf_filter
    'sbg:x': -303
    'sbg:y': -116
  - id: pv_maf_tag
    in:
      - id: input_maf
        source: input_variant_annotated_maf
      - id: output_maf_name
        source: output_maf_name_tag
    out:
      - id: output
    run: >-
      ../command_line_tools/postprocessing_variant_calls/0.2.3/maf_tag_cmoch/maf_tag_cmoch.cwl
    label: pv_maf_tag
    'sbg:x': -777
    'sbg:y': -80
requirements: []
