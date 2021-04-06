class: Workflow
cwlVersion: v1.0
id: biometrics_cwl
label: biometrics.cwl
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: vcf_file
    type: File
    doc: VCF file containing the SNPs to be queried.
    'sbg:x': -705
    'sbg:y': -400.42425537109375
  - id: fafile
    type: File
    doc: Path to reference fasta.
    secondaryFiles:
      - ^.fasta.fai
    'sbg:x': -712.1212158203125
    'sbg:y': -278.2727355957031
  - id: bed_file
    type: File?
    doc: BED file containing the intervals to be queried.
    'sbg:x': -708.6900634765625
    'sbg:y': -142.8758544921875
  - id: sample_name
    type:
      - 'null'
      - string
      - type: array
        items: string
    doc: >-
      Sample name. If not specified, sample name is automatically figured out
      from the BAM file.
    'sbg:x': -701.1143188476562
    'sbg:y': 110.15444946289062
  - id: sample_sex
    type:
      - 'null'
      - string
      - type: array
        items: string
    doc: Expected sample sex (i.e. M or F).
    'sbg:x': -701.1143188476562
    'sbg:y': 243.48779296875
  - id: sample_type
    type:
      - 'null'
      - string
      - type: array
        items: string
    doc: 'Sample types: Normal or Tumor.'
    'sbg:x': -690.5082397460938
    'sbg:y': 385.9120178222656
  - id: sample_group
    type:
      - 'null'
      - string
      - type: array
        items: string
    doc: The sample group (e.g. the sample patient ID).
    'sbg:x': -704.1445922851562
    'sbg:y': 528.32373046875
  - id: sample_bam
    type:
      - 'null'
      - File
      - type: array
        items: File
    doc: BAM file.
    secondaryFiles:
      - ^.bai
    'sbg:x': -685.9627685546875
    'sbg:y': 670.7479858398438
  - id: min_mapping_quality
    type: int?
    doc: Minimum mapping quality of reads to be used for pileup.
    'sbg:x': -701.1143188476562
    'sbg:y': -623.19140625
  - id: min_homozygous_thresh
    type: float?
    doc: Minimum threshold to define homozygous.
    'sbg:x': -702.6294555664062
    'sbg:y': -761.0701904296875
  - id: min_coverage
    type: int?
    doc: Minimum coverage to count a site.
    'sbg:x': -701.1143188476562
    'sbg:y': -886.8278198242188
  - id: min_base_quality
    type: int?
    doc: Minimum base quality of reads to be used for pileup.
    'sbg:x': -704.1445922851562
    'sbg:y': -1003.4835205078125
  - id: default_genotype
    type: string?
    doc: Default genotype if coverage is too low (options are Het or Hom).
    'sbg:x': -704.1445922851562
    'sbg:y': -1127.7166748046875
  - id: database
    type: string?
    doc: >-
      Directory to store the intermediate files after running the extraction
      step.
    'sbg:x': -704.1445922851562
    'sbg:y': -1279.2203369140625
outputs:
  - id: biometrics_sexmismatch_csv
    outputSource:
      - biometrics_sexmismatch/biometrics_sexmismatch_csv
    type: File
    'sbg:x': 622.51513671875
    'sbg:y': 611.0302734375
  - id: biometrics_sexmismatch_json
    outputSource:
      - biometrics_sexmismatch/biometrics_sexmismatch_json
    type: File?
    'sbg:x': 613.9091186523438
    'sbg:y': 494.57574462890625
  - id: biometrics_major_csv
    outputSource:
      - biometrics_major/biometrics_major_csv
    type: File
    'sbg:x': 612.5220336914062
    'sbg:y': 270.77960205078125
  - id: biometrics_major_json
    outputSource:
      - biometrics_major/biometrics_major_json
    type: File?
    'sbg:x': 607.9766235351562
    'sbg:y': 149.56748962402344
  - id: biometrics_major_plot
    outputSource:
      - biometrics_major/biometrics_major_plot
    type: File?
    'sbg:x': 604.9462890625
    'sbg:y': 25.325057983398438
  - id: biometrics_minor_csv
    outputSource:
      - biometrics_minor/biometrics_minor_csv
    type: File
    'sbg:x': 603.43115234375
    'sbg:y': -127.70524597167969
  - id: biometrics_minor_json
    outputSource:
      - biometrics_minor/biometrics_minor_json
    type: File?
    'sbg:x': 594.3402099609375
    'sbg:y': -244.37191772460938
  - id: biometrics_minor_plot
    outputSource:
      - biometrics_minor/biometrics_minor_plot
    type: File?
    'sbg:x': 595.8554077148438
    'sbg:y': -362.5537414550781
  - id: biometrics_minor_sites_plot
    outputSource:
      - biometrics_minor/biometrics_minor_sites_plot
    type: File?
    'sbg:x': 586.7644653320312
    'sbg:y': -483.7554931640625
  - id: biometrics_genotype_cluster_input
    outputSource:
      - biometrics_genotype/biometrics_genotype_cluster_input
    type: File
    'sbg:x': 586.7644653320312
    'sbg:y': -614.0585327148438
  - id: biometrics_genotype_cluster_input_database
    outputSource:
      - biometrics_genotype/biometrics_genotype_cluster_input_database
    type: File?
    'sbg:x': 581.6060791015625
    'sbg:y': -750
  - id: biometrics_genotype_comparisons
    outputSource:
      - biometrics_genotype/biometrics_genotype_comparisons
    type: File
    'sbg:x': 577.673583984375
    'sbg:y': -880.7251586914062
  - id: biometrics_genotype_plot_input
    outputSource:
      - biometrics_genotype/biometrics_genotype_plot_input
    type: File?
    'sbg:x': 573.1281127929688
    'sbg:y': -1011.0227661132812
  - id: biometrics_genotype_plot_input_database
    outputSource:
      - biometrics_genotype/biometrics_genotype_plot_input_database
    type: File?
    'sbg:x': 573.1281127929688
    'sbg:y': -1138.2955322265625
  - id: biometrics_extract_pickle
    outputSource:
      - biometrics_extract/biometrics_extract_pickle
    type: File
    'sbg:x': 570.8660888671875
    'sbg:y': -1278.5732421875
steps:
  - id: biometrics_extract
    in:
      - id: sample_bam
        source: sample_bam
      - id: sample_type
        source: sample_type
      - id: sample_sex
        source: sample_sex
      - id: sample_group
        source: sample_group
      - id: sample_name
        source: sample_name
      - id: fafile
        source: fafile
      - id: vcf_file
        source: vcf_file
      - id: bed_file
        source: bed_file
      - id: database
        source: database
      - id: min_mapping_quality
        source: min_mapping_quality
      - id: min_base_quality
        source: min_base_quality
      - id: min_coverage
        source: min_coverage
      - id: min_homozygous_thresh
        source: min_homozygous_thresh
      - id: default_genotype
        source: default_genotype
    out:
      - id: biometrics_extract_pickle
    run: >-
      ../../cwl-commandlinetools/biometrics_extract_0.2.5/biometrics_extract_0.2.5.cwl
    'sbg:x': -309
    'sbg:y': -89.33333587646484
  - id: biometrics_genotype
    in:
      - id: input
        source:
          - biometrics_extract/biometrics_extract_pickle
    out:
      - id: biometrics_genotype_comparisons
      - id: biometrics_genotype_cluster_input
      - id: biometrics_genotype_cluster_input_database
      - id: biometrics_genotype_plot_input
      - id: biometrics_genotype_plot_input_database
    run: >-
      ../../cwl-commandlinetools/biometrics_genotype_0.2.5/biometrics_genotype_0.2.5.cwl
    'sbg:x': 75
    'sbg:y': -258
  - id: biometrics_minor
    in:
      - id: input
        source:
          - biometrics_extract/biometrics_extract_pickle
    out:
      - id: biometrics_minor_csv
      - id: biometrics_minor_json
      - id: biometrics_minor_plot
      - id: biometrics_minor_sites_plot
    run: >-
      ../../cwl-commandlinetools/biometrics_minor_0.2.5/biometrics_minor_0.2.5.cwl
    'sbg:x': 73
    'sbg:y': -58
  - id: biometrics_sexmismatch
    in:
      - id: input
        source:
          - biometrics_extract/biometrics_extract_pickle
    out:
      - id: biometrics_sexmismatch_csv
      - id: biometrics_sexmismatch_json
    run: >-
      ../../cwl-commandlinetools/biometrics_sexmismatch_0.2.5/biometrics_sexmismatch_0.2.5.cwl
    'sbg:x': 78
    'sbg:y': 343
  - id: biometrics_major
    in:
      - id: input
        source:
          - biometrics_extract/biometrics_extract_pickle
    out:
      - id: biometrics_major_csv
      - id: biometrics_major_json
      - id: biometrics_major_plot
    run: >-
      ../../cwl-commandlinetools/biometrics_major_0.2.5/biometrics_major_0.2.5.cwl
    'sbg:x': 78
    'sbg:y': 155
requirements:
  - class: InlineJavascriptRequirement
  - class: StepInputExpressionRequirement
