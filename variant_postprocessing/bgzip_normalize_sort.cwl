class: Workflow
cwlVersion: v1.0
id: bgzip_normalize_sort
label: bgzip_normalize_sort
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: input
    type: File
    'sbg:x': -622.0040893554688
    'sbg:y': -118
  - id: fastaRef
    type: File
    'sbg:x': -543.0069580078125
    'sbg:y': 105
outputs:
  - id: bgzip_normalize_sort_output
    outputSource:
      - tabix_2/tabixIndex
    type: File?
    secondaryFiles:
      - .tbi
    'sbg:x': 508.9930419921875
    'sbg:y': 12
steps:
  - id: bgzip
    in:
      - id: input
        source: input
    out:
      - id: zippedVcf
    run: ../command_line_tools/bcftools_1.15.1/bcftools_bgzip_1.15.1.cwl
    label: bgzip
    'sbg:x': -317
    'sbg:y': 12
  - id: tabix
    in:
      - id: input
        source: bgzip/zippedVcf
    out:
      - id: tabixIndex
    run: ../command_line_tools/bcftools_1.15.1/bcftools_tabix_1.15.1.cwl
    label: tabix
    'sbg:x': -132
    'sbg:y': 41
  - id: norm
    in:
      - id: input
        source: tabix/tabixIndex
      - id: fastaRef
        source: fastaRef
    out:
      - id: normalized_vcf
    run: ../command_line_tools/bcftools_1.15.1/bcftools_norm_1.15.1.cwl
    label: bcftools_norm
    'sbg:x': 68
    'sbg:y': 42
  - id: tabix_1
    in:
      - id: input
        source: norm/normalized_vcf
    out:
      - id: tabixIndex
    run: ../command_line_tools/bcftools_1.15.1/bcftools_tabix_1.15.1.cwl
    label: tabix
    'sbg:x': 279
    'sbg:y': 22
  - id: bcftools_sort
    in:
      - id: input
        source: tabix_1/tabixIndex
    out:
      - id: sorted_file
    run: ../command_line_tools/bcftools_1.15.1/bcftools_sort._1.15.1.cwl
    label: bcftools_sort
    'sbg:x': 329
    'sbg:y': -110
  - id: tabix_2
    in:
      - id: input
        source: bcftools_sort/sorted_file
    out:
      - id: tabixIndex
    run: ../command_line_tools/bcftools_1.15.1/bcftools_tabix_1.15.1.cwl
    label: tabix
    'sbg:x': 442
    'sbg:y': -149
requirements: []
