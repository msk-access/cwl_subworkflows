#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: Workflow
inputs:
# input for annotate 
    - id: transcript_file
      type: File
    - id: chunk_size
      type: int?
    - id: output_name 
      type: string?
# input for stat 
    - id: build 
      type: File?
    - id: flagstat
      type: File?
    - id: thresholds   
      type: 'int[]?'
# input for report 
    - id: threshold
      type: int?
    - id: sample_name 
      type: string?
    - id: output
      type: string?
    - id: limit
      type: int?
    - id: summary 
      type: boolean?
    - id: snps
      type:
        - type: array
          items: File?
# shared 
    - id: panel_bed
      type: File
    - id: coverage_file
      type: File
    - id: cores 
      type: int?

    


outputs:
  coverage_report_single:
    type: Directory
    outputSource: report/coverage_report_single

steps:
  annotate:
    run: ../command_line_tools/athena/1.4.2/annotate_bed/annotate_bed.cwl
    in:
      panel_bed: panel_bed
      transcript_file: transcript_file
      coverage_file: coverage_file
      chunk_size: chunk_size
      output_name: output_name
    out: [annotated_bed]
  stats:
    run: ../command_line_tools/athena/1.4.2/coverage_stats_single/coverage_stats_single.cwl
    in:
      file: annotate/annotated_bed
      build: build 
      flagstat: flagstat  
      thresholds: thresholds
      cores: cores
    out: [gene_stats_output, exon_stats_output]
  report:
    run: ../command_line_tools/athena/1.4.2/coverage_report_single/coverage_report_single.cwl
    in:
      raw_coverage: annotate/annotated_bed 
      gene_stats: stats/gene_stats_output
      exon_stats: stats/exon_stats_output 
      per_base_coverage: coverage_file
      panel: panel_bed
      snps: snps
      threshold: threshold
      sample_name: sample_name
      output: output
      limit: limit
      summary: summary
      cores: cores
    out: [coverage_report_single]
