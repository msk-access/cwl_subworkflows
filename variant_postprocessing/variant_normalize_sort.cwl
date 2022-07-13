class: Workflow
cwlVersion: v1.0
id: bgzip_normalize_sort
label: variant_normalize_sort
$namespaces:
  s: 'https://schema.org/'
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: input
    type: File
    'sbg:x': 0
    'sbg:y': 427.6875
  - id: fastaRef
    type: File
    secondaryFiles:
      - .fai
    'sbg:x': 506.94903564453125
    'sbg:y': 374.2265625
  - id: stdout
    type: boolean
    'sbg:x': 0
    'sbg:y': 0
  - id: bgzip_output_name
    type: string?
    'sbg:x': 0
    'sbg:y': 534.609375
  - id: preset
    type: string?
    'sbg:x': 231.125
    'sbg:y': 246.3046875
  - id: output_type
    type: string?
    'sbg:x': 0
    'sbg:y': 213.84375
  - id: norm_output_name
    type: string?
    'sbg:x': 0
    'sbg:y': 320.765625
  - id: multiallelics
    type: string?
    'sbg:x': 506.94903564453125
    'sbg:y': 267.3046875
  - id: check_ref
    type: string?
    'sbg:x': 506.94903564453125
    'sbg:y': 481.1484375
  - id: sort_output_name
    type: string?
    'sbg:x': 0
    'sbg:y': 106.921875
outputs:
  - id: bgzip_normalize_sort_output
    outputSource:
      - tabix_2/tabixIndex
    type: File?
    secondaryFiles:
      - .tbi
    'sbg:x': 1623.7470703125
    'sbg:y': 320.765625
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
    'sbg:x': 231.125
    'sbg:y': 374.2265625
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
    'sbg:x': 506.94903564453125
    'sbg:y': 153.3828125
  - id: norm
    in:
      - id: check_ref
        source: check_ref
      - id: multiallelics
        source: multiallelics
      - id: output_type
        source: output_type
      - id: output_name
        source: norm_output_name
      - id: input
        source: tabix/tabixIndex
      - id: fastaRef
        source: fastaRef
    out:
      - id: normalized_vcf
    run: ../command_line_tools/bcftools_1.15.1/bcftools_norm_1.15.1.cwl
    label: bcftools_norm
    'sbg:x': 697.1942749023438
    'sbg:y': 285.765625
  - id: tabix_1
    in:
      - id: preset
        source: preset
      - id: input
        source: norm/normalized_vcf
    out:
      - id: tabixIndex
    run: ../command_line_tools/bcftools_1.15.1/bcftools_tabix_1.15.1.cwl
    label: tabix
    'sbg:x': 998.9910278320312
    'sbg:y': 313.765625
  - id: bcftools_sort
    in:
      - id: output_name
        source: sort_output_name
      - id: output_type
        source: output_type
      - id: input
        source: tabix_1/tabixIndex
    out:
      - id: sorted_file
    run: ../command_line_tools/bcftools_1.15.1/bcftools_sort._1.15.1.cwl
    label: bcftools_sort
    'sbg:x': 1189.236328125
    'sbg:y': 306.765625
  - id: tabix_2
    in:
      - id: preset
        source: preset
      - id: input
        source: bcftools_sort/sorted_file
    out:
      - id: tabixIndex
    run: ../command_line_tools/bcftools_1.15.1/bcftools_tabix_1.15.1.cwl
    label: tabix
    'sbg:x': 1433.501953125
    'sbg:y': 313.765625
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
's:dateCreated': 2020-13-7
's:license': 'https://spdx.org/licenses/Apache-2.0'
