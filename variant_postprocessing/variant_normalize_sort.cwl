class: Workflow
cwlVersion: v1.0
id: bgzip_normalize_sort
label: bgzip_normalize_sort
$namespaces:
  s: 'https://schema.org/'
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: input
    type: File
    'sbg:x': 0
    'sbg:y': 345.4530029296875
  - id: fastaRef
    type: File
    secondaryFiles:
      - .fai
    'sbg:x': 530.09375
    'sbg:y': 220.75
  - id: stdout
    type: boolean
    'sbg:x': 0
    'sbg:y': 7
  - id: bgzip_output_name
    type: string?
    'sbg:x': 1.529915452003479
    'sbg:y': 219.90597534179688
  - id: preset
    type: string?
    'sbg:x': 764.5779418945312
    'sbg:y': -371.015625
  - id: output_type
    type: string?
    'sbg:x': 1098.478759765625
    'sbg:y': -9.393171310424805
  - id: norm_output_name
    type: string?
    'sbg:x': 530.09375
    'sbg:y': 434.5
  - id: multiallelics
    type: string?
    'sbg:x': 530.09375
    'sbg:y': 113.875
  - id: check_ref
    type: string?
    'sbg:x': 530.09375
    'sbg:y': 327.625
  - id: sort_output_name
    type: string?
    'sbg:x': 1034.2222900390625
    'sbg:y': 86.7093734741211
  - id: bgzip_output_directory
    type: Directory?
    'sbg:x': -161.70230102539062
    'sbg:y': 294.5
outputs:
  - id: bgzip_normalize_sort_output
    outputSource:
      - tabix_2/tabixIndex
    type: File?
    secondaryFiles:
      - .tbi
    'sbg:x': 1734.3028564453125
    'sbg:y': 220.75
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
    'sbg:x': 266.546875
    'sbg:y': 274.1875
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
    'sbg:x': 530
    'sbg:y': -145.842529296875
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
    'sbg:x': 807.75
    'sbg:y': 185.75
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
    'sbg:x': 1109.5467529296875
    'sbg:y': 213.75
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
    'sbg:x': 1299.7919921875
    'sbg:y': 206.75
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
    'sbg:x': 1544.0576171875
    'sbg:y': 213.6875
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
