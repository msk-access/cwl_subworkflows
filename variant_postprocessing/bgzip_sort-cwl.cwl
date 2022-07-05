class: Workflow
cwlVersion: v1.0
id: bgzip_sort
label: bgzip_sort.cwl
$namespaces:
  s: 'https://schema.org/'
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: input
    type: File
    'sbg:x': -518.9956665039062
    'sbg:y': 42
  - id: stdout
    type: boolean
    'sbg:x': -432
    'sbg:y': -172
  - id: bgzip_output_name
    type: string?
    'sbg:x': -504
    'sbg:y': -84
  - id: preset
    type: string?
    'sbg:x': -253
    'sbg:y': -228
  - id: output_type
    type: string?
    'sbg:x': 53.55900573730469
    'sbg:y': -245.5
  - id: sort_output_name
    type: string?
    'sbg:x': -9
    'sbg:y': 90
  - id: bgzip_output_directory
    type: Directory?
    'sbg:x': -674.9921875
    'sbg:y': 2.5
outputs:
  - id: bgzip_sorted_output
    outputSource:
      - tabix_1/tabixIndex
    type: File?
    secondaryFiles:
      - .tbi
    'sbg:x': 591
    'sbg:y': 33
steps:
  - id: bgzip
    in:
      - id: stdout
        source: stdout
      - id: input
        source: input
      - id: output_file_name
        source: bgzip_output_name
      - id: output_directory
        source: bgzip_output_directory
    out:
      - id: zippedVcf
    run: ../command_line_tools/bcftools_1.15.1/bcftools_bgzip_1.15.1.cwl
    label: bgzip
    'sbg:x': -245
    'sbg:y': -43
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
    'sbg:x': 190
    'sbg:y': -79
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
    'sbg:x': -31
    'sbg:y': -85
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
    'sbg:x': 383
    'sbg:y': -115
requirements: []
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
's:dateCreated': 2020-06-2
's:license': 'https://spdx.org/licenses/Apache-2.0'
