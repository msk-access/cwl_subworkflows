class: Workflow
cwlVersion: v1.0
id: concat
label: concat
$namespaces:
  s: 'https://schema.org/'
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: normalize_sort_input
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
    'sbg:x': -1072.8909912109375
    'sbg:y': 395.6759033203125
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
    'sbg:x': -441.8370361328125
    'sbg:y': -965.5772094726562
  - id: preset
    type: string?
    'sbg:x': -758.090087890625
    'sbg:y': -554.468994140625
  - id: allow_overlaps
    type: boolean?
    'sbg:x': 107.66560363769531
    'sbg:y': 1210.692138671875
  - id: concat_output_name
    type: string
    'sbg:x': 83.19007873535156
    'sbg:y': 836.5663452148438
  - id: stdout
    type: boolean
    'sbg:x': -672.1541748046875
    'sbg:y': -762.3403930664062
  - id: sortonly_input
    type: File
    'sbg:x': 314.4129638671875
    'sbg:y': -336.0438232421875
  - id: bgzip_sortonly_output_name
    type: string?
    'sbg:x': 424.8155212402344
    'sbg:y': -223.23497009277344
  - id: bcftools_sortonly_output_name
    type: string
    'sbg:x': 359.3756103515625
    'sbg:y': -41.48789596557617
outputs:
  - id: bcftools_concat_output
    outputSource:
      - bcftools_concat/concatenated_vcf
    type: File
    'sbg:x': 761.0638427734375
    'sbg:y': 476
steps:
  - id: bgzip_normalize_sort
    in:
      - id: input
        source: normalize_sort_input
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
  - id: bcftools_concat
    in:
      - id: allow_overlaps
        source: allow_overlaps
      - id: output_name
        source: concat_output_name
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
    'sbg:x': 313.76495361328125
    'sbg:y': 478.2802734375
  - id: bgzip_sort
    in:
      - id: input
        source: sortonly_input
      - id: stdout
        source: stdout
      - id: bgzip_output_name
        source: bgzip_sortonly_output_name
      - id: preset
        source: preset
      - id: output_type
        source: output_type
      - id: bcftools_sort_output_name
        source: bcftools_sortonly_output_name
    out:
      - id: bgzip_sorted_output
    run: ./bgzip_sort-cwl.cwl
    label: bgzip_sort.cwl
    'sbg:x': 650.7271118164062
    'sbg:y': -354.9095764160156
requirements:
  - class: SubworkflowFeatureRequirement
  - class: MultipleInputFeatureRequirement
$schemas:
  - 'http://schema.org/version/latest/schemaorg-current-http.rdf'
's:author':
  - class: 's:Person'
    's:email': 'mailto:sivaprk@mskcc.org'
    's:identifier': ''
    's:name': Karthigayini Sivaprakasam
  - class: 's:Person'
    's:email': 'mailto:shahr@mskcc.org'
    's:identifier': ''
    's:name': Ronak Shah
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
's:dateCreated': '2020-06-2'
's:license': 'https://spdx.org/licenses/Apache-2.0'

