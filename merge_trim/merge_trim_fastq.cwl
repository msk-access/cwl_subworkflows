class: Workflow
cwlVersion: v1.0
id: merge_trim_fastq
label: merge_trim_fastq
$namespaces:
  s: 'https://schema.org/'
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: merge_fastq_fastq1
    type:
      type: array
      items: File
      inputBinding:
        prefix: '--fastq1'
    doc: >-
      Read 1 FASTQ Files that needs to merged, make sure to maintain the array
      order with Read 2 FASTQ files
    'sbg:x': 0
    'sbg:y': 321
  - id: merge_fastq_fastq2
    type:
      type: array
      items: File
      inputBinding:
        prefix: '--fastq2'
    doc: >-
      Read 2 FASTQ Files that needs to merged, make sure to maintain the array
      order with Read 1 FASTQ files
    'sbg:x': 0
    'sbg:y': 214
  - id: fastp_dont_eval_duplication
    type: boolean?
    doc: 'Disable Evaluation of Duplication (default:True)'
    'sbg:x': 327.28125
    'sbg:y': 214
  - id: fastp_disable_trim_poly_g
    type: boolean?
    doc: 'Disable Trim PolyG (default:True)'
    'sbg:x': 327.28125
    'sbg:y': 321
  - id: fastp_disable_quality_filtering
    type: boolean?
    doc: 'Disable Quality Filtering (default:True)'
    'sbg:x': 327.28125
    'sbg:y': 428
  - id: fastp_disable_length_filtering
    type: boolean?
    doc: 'Disable Length Trimming (default:True)'
    'sbg:x': 327.28125
    'sbg:y': 535
  - id: fastp_disable_adapter_trimming
    type: boolean?
    doc: 'Disable Adapter Trimming (default:True)'
    'sbg:x': 327.28125
    'sbg:y': 642
  - id: fastp_unpaired2_output_file_name
    type: string?
    'sbg:x': 0
    'sbg:y': 428
  - id: fastp_unpaired1_output_file_name
    type: string?
    'sbg:x': 0
    'sbg:y': 535
  - id: fastp_read2_output_file_name
    type: string?
    'sbg:x': 0
    'sbg:y': 642
  - id: fastp_read1_output_file_name
    type: string?
    'sbg:x': 0
    'sbg:y': 749
  - id: fastp_max_len_read2
    type: int?
    doc: 'Max Lenght for Read 2 (default:95)'
    'sbg:x': 0
    'sbg:y': 0
  - id: fastp_max_len_read1
    type: int?
    doc: 'Max Legth for READ 1 (default:95)'
    'sbg:x': 0
    'sbg:y': 107
outputs:
  - id: fastp_unpaired2_output
    outputSource:
      - fastp_0_24_0/fastp_unpaired2_output
    type: File?
    'sbg:x': 1058.288818359375
    'sbg:y': 107
  - id: fastp_unpaired1_output
    outputSource:
      - fastp_0_24_0/fastp_unpaired1_output
    type: File?
    'sbg:x': 1058.288818359375
    'sbg:y': 214
  - id: fastp_read2_output
    outputSource:
      - fastp_0_24_0/fastp_read2_output
    type: File?
    'sbg:x': 1058.288818359375
    'sbg:y': 321
  - id: fastp_read1_output
    outputSource:
      - fastp_0_24_0/fastp_read1_output
    type: File
    'sbg:x': 1058.288818359375
    'sbg:y': 428
  - id: fastp_json_output
    outputSource:
      - fastp_0_24_0/fastp_json_output
    type: File
    'sbg:x': 1058.288818359375
    'sbg:y': 535
  - id: fastp_html_output
    outputSource:
      - fastp_0_24_0/fastp_html_output
    type: File
    'sbg:x': 1058.288818359375
    'sbg:y': 642
steps:
  - id: merge_fastq_0_1_7
    in:
      - id: fastq1
        source:
          - merge_fastq_fastq1
      - id: fastq2
        source:
          - merge_fastq_fastq2
    out:
      - id: merge_fastq_1
      - id: merge_fastq_2
    run: ../command_line_tools/merge_fastq_0.1.7/merge_fastq_0.1.7.cwl
    'sbg:x': 327.28125
    'sbg:y': 100
  - id: fastp_0_24_0
    in:
      - id: read1_input
        source: merge_fastq_0_1_7/merge_fastq_1
      - id: read1_output_path
        default: trimmed_R1.fastq.gz
        source: fastp_read1_output_file_name
      - id: read2_input
        source: merge_fastq_0_1_7/merge_fastq_2
      - id: read2_output_path
        default: trimmed_R2.fastq.gz
        source: fastp_read2_output_file_name
      - id: unpaired1_path
        default: unpaired_R1.fastq.gz
        source: fastp_unpaired1_output_file_name
      - id: unpaired2_path
        default: unpaired_R2.fastq.gz
        source: fastp_unpaired2_output_file_name
      - id: max_len_read1
        default: 95
        source: fastp_max_len_read1
      - id: max_len_read2
        default: 95
        source: fastp_max_len_read2
      - id: disable_quality_filtering
        default: true
        source: fastp_disable_quality_filtering
      - id: disable_trim_poly_g
        default: true
        source: fastp_disable_trim_poly_g
      - id: disable_adapter_trimming
        default: true
        source: fastp_disable_adapter_trimming
      - id: dont_eval_duplication
        default: true
        source: fastp_dont_eval_duplication
      - id: disable_length_filtering
        default: true
        source: fastp_disable_length_filtering
    out:
      - id: fastp_json_output
      - id: fastp_html_output
      - id: fastp_read1_output
      - id: fastp_read2_output
      - id: fastp_unpaired1_output
      - id: fastp_unpaired2_output
    run: ../command_line_tools/fastp_0.24.0/fastp_0.24.0.cwl
    label: fastp_0.24.0
    'sbg:x': 583.671875
    'sbg:y': 290.5
requirements: []
$schemas:
  - 'http://schema.org/version/latest/schemaorg-current-http.rdf'
's:author':
  - class: 's:Person'
    's:email': 'mailto:shahr2@mskcc.org'
    's:name': Ronak Shah
's:citation': ''
's:codeRepository': 'https://github.com/msk-access/cwl_subworkflows/merge_trim'
's:contributor':
  - class: 's:Person'
    's:email': 'mailto:shahr2@mskcc.org'
    's:name': Ronak Shah
's:dateCreated': '2025-03-24'
's:license': 'https://spdx.org/licenses/Apache-2.0'
