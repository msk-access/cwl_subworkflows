class: Workflow
cwlVersion: v1.0
id: alignment
label: alignment
$namespaces:
  s: 'https://schema.org/'
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: create_bam_index
    type: boolean?
    'sbg:x': 312.82177734375
    'sbg:y': 515.8241577148438
  - id: output_file_name
    type: string?
    'sbg:x': 307.83258056640625
    'sbg:y': 388.04266357421875
  - id: read_group_description
    type: string?
    'sbg:x': 308.095947265625
    'sbg:y': 268.1795654296875
  - id: read_group_identifier
    type: string
    'sbg:x': 308.8017883300781
    'sbg:y': 136.04547119140625
  - id: read_group_library
    type: string
    'sbg:x': 302.01727294921875
    'sbg:y': 10.046881675720215
  - id: read_group_platform_unit
    type: string
    'sbg:x': 294.26348876953125
    'sbg:y': -106.25950622558594
  - id: read_group_run_date
    type: string?
    'sbg:x': 293.1172790527344
    'sbg:y': -220
  - id: read_group_sample_name
    type: string
    'sbg:x': 291.3558349609375
    'sbg:y': -338.8698425292969
  - id: read_group_sequencing_center
    type: string
    'sbg:x': 292.3250732421875
    'sbg:y': -459.0531311035156
  - id: read_group_sequencing_platform
    type: string
    'sbg:x': 294.25390625
    'sbg:y': -584.0225830078125
  - id: sort_order
    type: string?
    'sbg:x': 289.8829345703125
    'sbg:y': -712.0499877929688
  - id: validation_stringency
    type: string?
    'sbg:x': 290.2070617675781
    'sbg:y': -838.8253784179688
  - id: reference
    type: File
    'sbg:x': 53.21892166137695
    'sbg:y': 838.94482421875
  - id: reads
    type: 'File[]'
    'sbg:x': 49.8884162902832
    'sbg:y': 964.5027465820312
  - id: output
    type: string?
    'sbg:x': 51.22316360473633
    'sbg:y': 1341.708984375
  - id: P
    type: boolean?
    'sbg:x': 48.44633102416992
    'sbg:y': 1209.7047119140625
  - id: M
    type: boolean?
    'sbg:x': 53
    'sbg:y': 1494.043701171875
  - id: bam_compression_level
    type: int?
    'sbg:x': 307.7873840332031
    'sbg:y': 649.9906005859375
  - id: sample_id
    type: string
    'sbg:x': 53.21892166137695
    'sbg:y': 708.4942626953125
  - id: R
    type: string?
    'sbg:x': 46.45319366455078
    'sbg:y': 1094.5814208984375
  - id: t
    type: int?
    'sbg:x': 59.672115325927734
    'sbg:y': 590.3740234375
  - id: T
    type: int?
    'sbg:x': 50.23002624511719
    'sbg:y': 465.7384948730469
  - id: 'Y'
    type: boolean?
    'sbg:x': 52.118446350097656
    'sbg:y': 348.6695556640625
  - id: K
    type: int?
    'sbg:x': 57.846099853515625
    'sbg:y': 1635.44140625
outputs:
  - id: picard_add_or_replace_read_groups_bam
    outputSource:
      - >-
        picard_add_or_replace_read_groups_4_1_8_1/picard_add_or_replace_read_groups_bam
    type: File
    'sbg:x': 1446.0848388671875
    'sbg:y': 264.5576171875
steps:
  - id: picard_add_or_replace_read_groups_4_1_8_1
    in:
      - id: input
        source: bwa_mem_0_7_17/bwa_mem_output_sam
      - id: output_file_name
        source: output_file_name
      - id: sort_order
        source: sort_order
      - id: read_group_identifier
        source: read_group_identifier
      - id: read_group_sequencing_center
        source: read_group_sequencing_center
      - id: read_group_library
        source: read_group_library
      - id: read_group_platform_unit
        source: read_group_platform_unit
      - id: read_group_sample_name
        source: read_group_sample_name
      - id: read_group_sequencing_platform
        source: read_group_sequencing_platform
      - id: read_group_description
        source: read_group_description
      - id: read_group_run_date
        source: read_group_run_date
      - id: validation_stringency
        source: validation_stringency
      - id: bam_compression_level
        source: bam_compression_level
      - id: create_bam_index
        source: create_bam_index
    out:
      - id: picard_add_or_replace_read_groups_bam
    run: >-
      ../command_line_tools/picard_add_or_replace_read_groups_4.1.8.1/picard_add_or_replace_read_groups_4.1.8.1.cwl
    label: picard_add_or_replace_read_groups_4.1.8.1
    'sbg:x': 905.8611450195312
    'sbg:y': 259.5883483886719
  - id: bwa_mem_0_7_17
    in:
      - id: reads
        source:
          - reads
      - id: reference
        source: reference
      - id: sample_id
        source: sample_id
      - id: M
        source: M
      - id: P
        source: P
      - id: T
        source: T
      - id: K
        source: K
      - id: output
        source: output
      - id: 'Y'
        source: 'Y'
      - id: t
        source: t
      - id: R
        source: R
    out:
      - id: bwa_mem_output_sam
    run: ../command_line_tools/bwa_mem_0.7.17/bwa_mem_0.7.17.cwl
    'sbg:x': 311.72674560546875
    'sbg:y': 975.3718872070312
requirements: []
$schemas:
  - 'https://schema.org/version/latest/schema.rdf'
's:author':
  - class: 's:Person'
    's:email': 'mailto:sumans@mskcc.org'
    's:identifier': ''
    's:name': Shalabh Suman
  - class: 's:Person'
    's:email': 'mailto:johnsoni@mskcc.org'
    's:identifier': ''
    's:name': Ian Jonhnson
's:citation': ''
's:codeRepository': 'https://github.com/msk-access/cwl_subworkflows/alignment'
's:contributor':
  - class: 's:Person'
    's:email': 'mailto:johnsoni@mskcc.org'
    's:identifier': ''
    's:name': Ian Jonhnson
  - class: 's:Person'
    's:email': 'mailto:shahr2@mskcc.org'
    's:identifier': 'https://orcid.org/0000-0001-9042-6213'
    's:name': Ronak Shah
  - class: 's:Person'
    's:email': 'mailto:sumans@mskcc.org'
    's:identifier': ''
    's:name': Shalabh Suman
  - class: 's:Person'
    's:email': 'mailto:murphyc4@mskcc.org'
    's:identifier': ''
    's:name': Charlie Murphy
's:dateCreated': '2019-10-01'
's:license': 'https://spdx.org/licenses/Apache-2.0'
