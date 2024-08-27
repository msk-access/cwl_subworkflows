class: Workflow
cwlVersion: v1.0
id: variants_concat
label: variants_concat
$namespaces:
  s: 'https://schema.org/'
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: fastaRef
    type: File
    'sbg:x': 0
    'sbg:y': 853.875
  - id: input
    type: File
    'sbg:x': 0
    'sbg:y': 747.140625
  - id: bgzip_output_name
    type: string?
    'sbg:x': 0
    'sbg:y': 1387.546875
  - id: check_ref
    type: string?
    'sbg:x': 0
    'sbg:y': 1280.8125
  - id: multiallelics
    type: string?
    'sbg:x': 0
    'sbg:y': 640.40625
  - id: norm_output_name
    type: string?
    'sbg:x': 0
    'sbg:y': 533.671875
  - id: output_type
    type: string?
    'sbg:x': 0
    'sbg:y': 320.203125
  - id: preset
    type: string?
    'sbg:x': 0
    'sbg:y': 213.46875
  - id: sort_output_name
    type: string?
    'sbg:x': 0
    'sbg:y': 106.734375
  - id: complex_sort_output_name
    type: string?
    'sbg:x': 0
    'sbg:y': 960.609375
  - id: complex_input
    type: File
    'sbg:x': 0
    'sbg:y': 1067.34375
  - id: complex_bgzip_output_name
    type: string?
    'sbg:x': 0
    'sbg:y': 1174.078125
  - id: output_name
    type: string
    'sbg:x': 0
    'sbg:y': 426.9375
  - id: allow_overlaps
    type: boolean?
    'sbg:x': 284.734375
    'sbg:y': 863.5078125
  - id: stdout
    type: boolean
    'sbg:x': 0
    'sbg:y': 0
outputs:
  - id: concatenated_vcf
    outputSource:
      - bcftools_concat/concatenated_vcf
    type: File
    'sbg:x': 1050.4891357421875
    'sbg:y': 693.7734375
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
    'sbg:x': 284.734375
    'sbg:y': 693.7734375
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
    'sbg:x': 284.734375
    'sbg:y': 489.0390625
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
    'sbg:x': 755.8057250976562
    'sbg:y': 672.7734375
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
's:dateCreated': '2020-07-13'
's:license': 'https://spdx.org/licenses/Apache-2.0'
