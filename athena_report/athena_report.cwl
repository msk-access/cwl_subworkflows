#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: Workflow
inputs:
# input for annotate 
    transcript_file: File
    chunk_size: int
    output_name: string
# input for stat 
    build: File  
    flagstat: File  
    thresholds:     
      type:
        - type: array
          items: int
# input for report 
    threshold: int
    sample_name: string
    output: string
    limit: int
    summary: boolean
    snps: 
      type:
        - type: array
          items: File
# shared 
    panel_bed: File
    coverage_file: File
    cores: int

    


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
