class: Workflow
cwlVersion: v1.0
id: bgzip_sort
label: variant_sort
$namespaces:
  s: 'https://schema.org/'
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: input
    type: File
    'sbg:x': 0
    'sbg:y': 321
  - id: stdout
    type: boolean
    'sbg:x': 0
    'sbg:y': 0
  - id: bgzip_output_name
    type: string?
    'sbg:x': 0
    'sbg:y': 428
  - id: preset
    type: string?
    'sbg:x': 206.859375
    'sbg:y': 146.5
  - id: output_type
    type: string?
    'sbg:x': 0
    'sbg:y': 214
  - id: sort_output_name
    type: string?
    'sbg:x': 0
    'sbg:y': 107
outputs:
  - id: bgzip_sorted_output
    outputSource:
      - tabix_1/tabixIndex
    type: File?
    secondaryFiles:
      - .tbi
    'sbg:x': 1095.162353515625
    'sbg:y': 214
steps:
  - id: bgzip
    in:
      - id: stdout
        source: stdout
      - id: input
        source: input
      - id: output_file_name
        source: bgzip_output_name
    out:
      - id: zippedVcf
    run: ../command_line_tools/bcftools_1.15.1/bcftools_bgzip_1.15.1.cwl
    label: bgzip
    'sbg:x': 206.859375
    'sbg:y': 267.5
  - id: bcftools_sort
    in:
      - id: output_name
        source: sort_output_name
      - id: output_type
        source: output_type
      - id: input
        source: tabix/tabixIndex
    out:
      - id: sorted_file
    run: ../command_line_tools/bcftools_1.15.1/bcftools_sort._1.15.1.cwl
    label: bcftools_sort
    'sbg:x': 660.6514892578125
    'sbg:y': 200
  - id: tabix
    in:
      - id: preset
        source: preset
      - id: input
        source: bgzip/zippedVcf
    out:
      - id: tabixIndex
    run: ../command_line_tools/bcftools_1.15.1/bcftools_tabix_1.15.1.cwl
    label: tabix
    'sbg:x': 470.40625
    'sbg:y': 207
  - id: tabix_1
    in:
      - id: preset
        source: preset
      - id: input
        source: bcftools_sort/sorted_file
    out:
      - id: tabixIndex
    run: ../command_line_tools/bcftools_1.15.1/bcftools_tabix_1.15.1.cwl
    label: tabix
    'sbg:x': 904.9171142578125
    'sbg:y': 207
requirements: []
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
