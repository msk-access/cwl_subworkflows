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
    'sbg:x': 308.8017883300781
    'sbg:y': 260.1056213378906
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
    'sbg:x': 293.2942810058594
    'sbg:y': -220.62501525878906
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
    'sbg:x': 286.29644775390625
    'sbg:y': -840.7815551757812
  - id: reference
    type: File
    'sbg:x': 40.131065368652344
    'sbg:y': 618.1557006835938
  - id: reads
    type: 'File[]'
    'sbg:x': 48.79703140258789
    'sbg:y': 753.09716796875
  - id: output
    type: string?
    'sbg:x': 55.95198059082031
    'sbg:y': 1066.6053466796875
  - id: P
    type: boolean?
    'sbg:x': 56.22500228881836
    'sbg:y': 917.7505493164062
  - id: M
    type: boolean?
    'sbg:x': 53.7490119934082
    'sbg:y': 1224.7662353515625
  - id: bam_compression_level
    type: int?
    'sbg:x': 307.7873840332031
    'sbg:y': 649.9906005859375
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
      - id: M
        source: M
      - id: P
        source: P
      - id: output
        source: output
    out:
      - id: bwa_mem_output_sam
    run: ../command_line_tools/bwa_mem_0.7.17/bwa_mem_0.7.17.cwl
    'sbg:x': 321.204833984375
    'sbg:y': 827.0160522460938
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
