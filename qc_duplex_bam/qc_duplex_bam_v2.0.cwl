class: Workflow
cwlVersion: v1.0
id: qc_duplex
doc: Calcualte Quality Control Metrics from Duplex BAM
label: qc_duplex
$namespaces:
  s: 'https://schema.org/'
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: reference
    type: File
    doc: 'Path to reference fasta, containing all regions in bed_file'
    secondaryFiles:
      - ^.fasta.fai
      - ^.dict
    'sbg:x': 0
    'sbg:y': 960.0625
  - id: duplex_bam
    type:
      - File
      - type: array
        items: File
    label: duplex_bam
    secondaryFiles:
      - ^.bai
    'sbg:x': 0
    'sbg:y': 2773.921875
  - id: target_intervals
    type: File
    label: target_intervals
    'sbg:x': 0
    'sbg:y': 106.6953125
  - id: bait_intervals
    type: File
    label: bait_intervals
    'sbg:x': 0
    'sbg:y': 2880.578125
  - id: noise_sites_bed
    type: File
    label: noise_sites_bed
    doc: >-
      Path to BED file containing regions over which to calculate noise
      [required]
    'sbg:x': 0
    'sbg:y': 1386.6875
  - id: sample_name
    type:
      - 'null'
      - string
      - type: array
        items: string
    doc: >-
      Sample name. If not specified, sample name is automatically figured out
      from the BAM file.
    'sbg:x': 0
    'sbg:y': 746.671875
  - id: plot
    type: boolean?
    doc: Also output plots of the data.
    'sbg:x': 0
    'sbg:y': 1173.375
  - id: json
    type: boolean?
    doc: Also output data in JSON format.
    'sbg:x': 0
    'sbg:y': 2026.8984375
  - id: sequence_qc_min_basq
    type: int?
    'sbg:x': 0
    'sbg:y': 533.359375
  - id: sequence_qc_min_mapq
    type: int?
    'sbg:x': 0
    'sbg:y': 426.703125
  - id: sequence_qc_threshold
    type: float?
    'sbg:x': 0
    'sbg:y': 320.046875
  - id: sequence_qc_truncate
    type: int?
    'sbg:x': 0
    'sbg:y': 213.390625
  - id: hsmetrics_minimum_mapping_quality
    type: int?
    'sbg:x': 0
    'sbg:y': 2133.6328125
  - id: hsmetrics_minimum_base_quality
    type: int?
    'sbg:x': 0
    'sbg:y': 2240.3671875
  - id: hsmetrics_coverage_cap
    type: int?
    'sbg:x': 0
    'sbg:y': 2347.1015625
  - id: prefix
    type: string?
    'sbg:x': 0
    'sbg:y': 1066.71875
  - id: vcf_file
    type: File
    'sbg:x': 0
    'sbg:y': 0
  - id: sample_sex
    type: string?
    'sbg:x': 0
    'sbg:y': 640.015625
  - id: sample_group
    type: string?
    'sbg:x': 0
    'sbg:y': 853.3671875
  - id: maf
    type: File
    'sbg:x': 0
    'sbg:y': 1920.203125
  - id: mosdepth_bed
    type: File?
    doc: optional BED file to restrict coverage calculation with mosdepth
    'sbg:x': 0
    'sbg:y': 1706.8125
  - id: mosdepth_flag
    type: int?
    'sbg:x': 0
    'sbg:y': 1600.1171875
  - id: mosdepth_minimum_mapping_quality
    type: int?
    'sbg:x': 0
    'sbg:y': 1493.3828125
  - id: omaf
    type: boolean?
    'sbg:x': 0
    'sbg:y': 1280.03125
  - id: generic_counting
    type: boolean?
    'sbg:x': 0
    'sbg:y': 2453.8359375
  - id: fragment_count
    type: int
    'sbg:x': 0
    'sbg:y': 2560.5703125
  - id: filter_duplicate
    type: int
    'sbg:x': 0
    'sbg:y': 2667.265625
  - id: duplex_biometrics_extract_file_type
    type: string?
    'sbg:x': 829.6761474609375
    'sbg:y': 1418.3421630859375
outputs:
  - id: sequence_qc_noise_positions
    outputSource:
      - calculate_noise/sequence_qc_noise_positions
    type:
      - File
      - type: array
        items: File
    'sbg:x': 984.2216796875
    'sbg:y': 430.875
  - id: sequence_qc_noise_n
    outputSource:
      - calculate_noise/sequence_qc_noise_n
    type:
      - File
      - type: array
        items: File
    'sbg:x': 984.2216796875
    'sbg:y': 537.53125
  - id: sequence_qc_noise_del
    outputSource:
      - calculate_noise/sequence_qc_noise_del
    type:
      - File
      - type: array
        items: File
    'sbg:x': 984.2216796875
    'sbg:y': 644.1875
  - id: sequence_qc_noise_acgt
    outputSource:
      - calculate_noise/sequence_qc_noise_acgt
    type:
      - File
      - type: array
        items: File
    'sbg:x': 984.2216796875
    'sbg:y': 857.6171875
  - id: sequence_qc_figures
    outputSource:
      - calculate_noise/sequence_qc_figures
    type:
      - File
      - type: array
        items: File
    'sbg:x': 984.2216796875
    'sbg:y': 964.3515625
  - id: gatk_collect_alignment_summary_metrics_txt
    outputSource:
      - bam_qc_stats/gatk_collect_alignment_summary_metrics_txt
    type:
      - File
      - type: array
        items: File
    label: gatk_collect_alignment_summary_metrics_txt
    'sbg:x': 984.2216796875
    'sbg:y': 2031.6171875
  - id: gatk_collect_hs_metrics_per_base_coverage_txt
    outputSource:
      - bam_qc_stats/gatk_collect_hs_metrics_per_base_coverage_txt
    type:
      - File
      - type: array
        items: File
    label: gatk_collect_hs_metrics_per_base_coverage_txt
    'sbg:x': 984.2216796875
    'sbg:y': 1924.8828125
  - id: gatk_collect_hs_metrics_per_target_coverage_txt
    outputSource:
      - bam_qc_stats/gatk_collect_hs_metrics_per_target_coverage_txt
    type:
      - File
      - type: array
        items: File
    label: gatk_collect_hs_metrics_per_target_coverage_txt
    'sbg:x': 984.2216796875
    'sbg:y': 1818.1484375
  - id: gatk_collect_hs_metrics_txt
    outputSource:
      - bam_qc_stats/gatk_collect_hs_metrics_txt
    type:
      - File
      - type: array
        items: File
    label: gatk_collect_hs_metrics_txt
    'sbg:x': 984.2216796875
    'sbg:y': 1711.4140625
  - id: gatk_collect_insert_size_metrics_histogram_pdf
    outputSource:
      - bam_qc_stats/gatk_collect_insert_size_metrics_histogram_pdf
    type:
      - File
      - type: array
        items: File
    label: gatk_collect_insert_size_metrics_histogram_pdf
    'sbg:x': 984.2216796875
    'sbg:y': 1604.6796875
  - id: gatk_collect_insert_size_metrics_txt
    outputSource:
      - bam_qc_stats/gatk_collect_insert_size_metrics_txt
    type:
      - File
      - type: array
        items: File
    label: gatk_collect_insert_size_metrics_txt
    'sbg:x': 984.2216796875
    'sbg:y': 1497.9453125
  - id: sequence_qc_pileup
    outputSource:
      - calculate_noise/sequence_qc_pileup
    type:
      - File
      - type: array
        items: File
    'sbg:x': 984.2216796875
    'sbg:y': 324.21875
  - id: sequence_qc_noise_by_substitution
    outputSource:
      - calculate_noise/sequence_qc_noise_by_substitution
    type: File
    'sbg:x': 984.2216796875
    'sbg:y': 750.8828125
  - id: biometrics_extract_pickle
    outputSource:
      - biometrics_extract_0_2_13/biometrics_extract_pickle
    type: File
    'sbg:x': 984.2216796875
    'sbg:y': 2556.359375
  - id: biometrics_minor_sites_plot
    outputSource:
      - biometrics_minor_0_2_13/biometrics_minor_sites_plot
    type: File?
    'sbg:x': 1432.8466796875
    'sbg:y': 1120.1640625
  - id: biometrics_minor_plot
    outputSource:
      - biometrics_minor_0_2_13/biometrics_minor_plot
    type: File?
    'sbg:x': 1432.8466796875
    'sbg:y': 1226.8203125
  - id: biometrics_minor_json
    outputSource:
      - biometrics_minor_0_2_13/biometrics_minor_json
    type: File?
    'sbg:x': 1432.8466796875
    'sbg:y': 1333.515625
  - id: biometrics_minor_csv
    outputSource:
      - biometrics_minor_0_2_13/biometrics_minor_csv
    type: File
    'sbg:x': 1432.8466796875
    'sbg:y': 1440.2109375
  - id: fillout_maf
    outputSource:
      - getbasecountsmultisample_1_2_5/fillout
    type: File
    'sbg:x': 984.2216796875
    'sbg:y': 2138.3125
  - id: per_base_bed
    outputSource:
      - mosdepth_0_3_3/per_base_bed
    type: File
    'sbg:x': 984.2216796875
    'sbg:y': 1284.515625
  - id: per_region_bed
    outputSource:
      - mosdepth_0_3_3/per_region_bed
    type: File?
    'sbg:x': 984.2216796875
    'sbg:y': 1177.8203125
  - id: global_distribution
    outputSource:
      - mosdepth_0_3_3/global_distribution
    type: File?
    'sbg:x': 984.2216796875
    'sbg:y': 1391.2109375
  - id: region_distribution
    outputSource:
      - mosdepth_0_3_3/region_distribution
    type: File?
    'sbg:x': 984.2216796875
    'sbg:y': 1071.0859375
steps:
  - id: bam_qc_stats
    in:
      - id: input
        source:
          - duplex_bam
      - id: target_intervals
        source: target_intervals
      - id: bait_intervals
        source: bait_intervals
      - id: reference
        source: reference
      - id: hsmetrics_minimum_mapping_quality
        source: hsmetrics_minimum_mapping_quality
      - id: hsmetrics_minimum_base_quality
        source: hsmetrics_minimum_base_quality
      - id: hsmetrics_coverage_cap
        source: hsmetrics_coverage_cap
    out:
      - id: gatk_collect_insert_size_metrics_histogram_pdf
      - id: gatk_collect_insert_size_metrics_txt
      - id: gatk_collect_hs_metrics_txt
      - id: gatk_collect_hs_metrics_per_base_coverage_txt
      - id: gatk_collect_hs_metrics_per_target_coverage_txt
      - id: gatk_collect_alignment_summary_metrics_txt
    run: ../bam_qc_stats/bam_qc_stats.cwl
    label: bam_qc_stats
    'sbg:x': 353.515625
    'sbg:y': 1800.640625
  - id: calculate_noise
    in:
      - id: reference
        source: reference
      - id: bam_file
        source: duplex_bam
      - id: bed_file
        source: noise_sites_bed
      - id: sample_id
        source: sample_name
      - id: threshold
        source: sequence_qc_threshold
      - id: truncate
        source: sequence_qc_truncate
      - id: min_mapq
        source: sequence_qc_min_mapq
      - id: min_basq
        source: sequence_qc_min_basq
    out:
      - id: sequence_qc_pileup
      - id: sequence_qc_noise_positions
      - id: sequence_qc_noise_by_substitution
      - id: sequence_qc_noise_acgt
      - id: sequence_qc_noise_n
      - id: sequence_qc_noise_del
      - id: sequence_qc_figures
    run: ../command_line_tools/sequence_qc/0.2.3/sequence_qc_0.2.3.cwl
    'sbg:x': 353.515625
    'sbg:y': 1426.328125
  - id: biometrics_extract_0_2_13
    in:
      - id: sample_bam
        source: duplex_bam
      - id: sample_sex
        source: sample_sex
      - id: sample_group
        source: sample_group
      - id: sample_name
        source: sample_name
      - id: fafile
        source: reference
      - id: vcf_file
        source: vcf_file
      - id: min_coverage
        default: 200
      - id: file_type
        default: duplex
        source: duplex_biometrics_extract_file_type
    out:
      - id: biometrics_extract_pickle
    run: ../command_line_tools/biometrics_extract/0.2.13/biometrics_extract.cwl
    'sbg:x': 353.515625
    'sbg:y': 1616.984375
  - id: biometrics_minor_0_2_13
    in:
      - id: input
        linkMerge: merge_nested
        source:
          - biometrics_extract_0_2_13/biometrics_extract_pickle
      - id: prefix
        source: prefix
      - id: plot
        source: plot
      - id: json
        source: json
    out:
      - id: biometrics_minor_csv
      - id: biometrics_minor_json
      - id: biometrics_minor_plot
      - id: biometrics_minor_sites_plot
    run: ../command_line_tools/biometrics_minor/0.2.13/biometrics_minor.cwl
    'sbg:x': 984.2216796875
    'sbg:y': 2265.96875
  - id: getbasecountsmultisample_1_2_5
    in:
      - id: genotyping_bams
        source:
          - duplex_bam
      - id: genotyping_bams_ids
        source:
          - sample_name
      - id: filter_duplicate
        default: 0
        source: filter_duplicate
      - id: fragment_count
        default: 1
        source: fragment_count
      - id: maf
        source: maf
      - id: maq
        source: sequence_qc_min_mapq
      - id: omaf
        source: omaf
      - id: output
        source: sample_name
        valueFrom: $(self + '_duplex_hotspots_fillout.maf')
      - id: ref_fasta
        source: reference
      - id: generic_counting
        source: generic_counting
    out:
      - id: fillout
    run: >-
      ../command_line_tools/getbasecountsmultisample/1.2.5/getbasecountsmultisample_1.2.5.cwl
    label: getbasecountsmultisample_1.2.5
    'sbg:x': 353.515625
    'sbg:y': 1207.6328125
  - id: mosdepth_0_3_3
    in:
      - id: bed
        source: mosdepth_bed
      - id: input_bam
        source:
          - duplex_bam
      - id: prefix
        source: sample_name
      - id: flag
        default: 1796
        source: mosdepth_flag
      - id: mapq
        default: 20
        source: mosdepth_minimum_mapping_quality
    out:
      - id: per_base_bed
      - id: per_region_bed
      - id: global_distribution
      - id: region_distribution
    run: ../command_line_tools/mosdepth_0.3.3/mosdepth_0.3.3.cwl
    label: mosdepth_0.3.3
    'sbg:x': 353.515625
    'sbg:y': 1009.9375
requirements:
  - class: SubworkflowFeatureRequirement
$schemas:
  - 'http://schema.org/version/latest/schemaorg-current-http.rdf'
's:author':
  - class: 's:Person'
    's:email': 'mailto:charalk@mskcc.org'
    's:identifier': ''
    's:name': Carmelina Charalambous
's:citation': ''
's:codeRepository': 'https://github.com/msk-access/uncollapsed_bam_generation'
's:contributor':
  - class: 's:Person'
    's:email': 'mailto:shahr2@mskcc.org'
    's:identifier': 'https://orcid.org/0000-0001-9042-6213'
    's:name': Ronak Shah
's:dateCreated': '2022-03-23'
's:license': 'https://spdx.org/licenses/Apache-2.0'
