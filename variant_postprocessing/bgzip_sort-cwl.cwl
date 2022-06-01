class: Workflow
cwlVersion: v1.0
id: bgzip_sort
label: bgzip_sort.cwl
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: input
    type: File
    'sbg:x': 0
    'sbg:y': 0
outputs:
  - id: bgzip_sorted_output
    outputSource:
      - tabix_1/tabixIndex
    type: File?
    secondaryFiles:
      - .tbi
    'sbg:x': 799.203125
    'sbg:y': 0
steps:
  - id: bgzip
    in:
      - id: input
        source: input
    out:
      - id: zippedVcf
    run: ../command_line_tools/bcftools_1.15.1/bcftools_bgzip_1.15.1.cwl
    label: bgzip
    'sbg:x': 109.359375
    'sbg:y': 0
  - id: bcftools_sort
    in:
      - id: input
        source: tabix/tabixIndex
    out:
      - id: sorted_file
    run: ../command_line_tools/bcftools_1.15.1/bcftools_sort._1.15.1.cwl
    label: bcftools_sort
    'sbg:x': 453.1875
    'sbg:y': 0
  - id: tabix
    in:
      - id: input
        source: bgzip/zippedVcf
    out:
      - id: tabixIndex
    run: ../command_line_tools/bcftools_1.15.1/bcftools_tabix_1.15.1.cwl
    label: tabix
    'sbg:x': 280.5
    'sbg:y': 0
  - id: tabix_1
    in:
      - id: input
        source: bcftools_sort/sorted_file
    out:
      - id: tabixIndex
    run: ../command_line_tools/bcftools_1.15.1/bcftools_tabix_1.15.1.cwl
    label: tabix
    'sbg:x': 626.515625
    'sbg:y': 0
requirements: []
