{
    "$graph": [
        {
            "class": "Workflow",
            "id": "#bam_qc_stats.cwl",
            "label": "bam_qc_stats",
            "inputs": [
                {
                    "id": "#bam_qc_stats.cwl/bam_qc_stats/input",
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "secondaryFiles": [
                        "^.bai"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 374.0625
                },
                {
                    "id": "#bam_qc_stats.cwl/bam_qc_stats/target_intervals",
                    "type": "File",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 160.3125
                },
                {
                    "id": "#bam_qc_stats.cwl/bam_qc_stats/bait_intervals",
                    "type": "File",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 480.9375
                },
                {
                    "id": "#bam_qc_stats.cwl/bam_qc_stats/reference",
                    "type": "File",
                    "secondaryFiles": [
                        "^.fasta.fai",
                        "^.dict"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 267.1875
                },
                {
                    "id": "#bam_qc_stats.cwl/bam_qc_stats/temporary_directory",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 53.4375
                },
                {
                    "id": "#bam_qc_stats.cwl/bam_qc_stats/hsmetrics_minimum_mapping_quality",
                    "type": [
                        "null",
                        "int"
                    ],
                    "label": "hsmetrics_minimum_mapping_quality",
                    "https://www.sevenbridges.com/x": 1,
                    "https://www.sevenbridges.com/y": 613
                },
                {
                    "id": "#bam_qc_stats.cwl/bam_qc_stats/hsmetrics_minimum_base_quality",
                    "type": [
                        "null",
                        "int"
                    ],
                    "label": "hsmetrics_minimum_base_quality",
                    "https://www.sevenbridges.com/x": 3,
                    "https://www.sevenbridges.com/y": 743
                },
                {
                    "id": "#bam_qc_stats.cwl/bam_qc_stats/hsmetrics_coverage_cap",
                    "type": [
                        "null",
                        "int"
                    ],
                    "label": "hsmetrics_coverage_cap",
                    "https://www.sevenbridges.com/x": 2,
                    "https://www.sevenbridges.com/y": 872
                }
            ],
            "steps": [
                {
                    "id": "#bam_qc_stats.cwl/bam_qc_stats/gatk_collect_alignment_summary_metrics_4_1_3_0",
                    "in": [
                        {
                            "id": "#bam_qc_stats.cwl/bam_qc_stats/gatk_collect_alignment_summary_metrics_4_1_3_0/input",
                            "source": "#bam_qc_stats.cwl/bam_qc_stats/input"
                        },
                        {
                            "id": "#bam_qc_stats.cwl/bam_qc_stats/gatk_collect_alignment_summary_metrics_4_1_3_0/reference",
                            "source": "#bam_qc_stats.cwl/bam_qc_stats/reference"
                        },
                        {
                            "id": "#bam_qc_stats.cwl/bam_qc_stats/gatk_collect_alignment_summary_metrics_4_1_3_0/temporary_directory",
                            "source": "#bam_qc_stats.cwl/bam_qc_stats/temporary_directory"
                        }
                    ],
                    "out": [
                        {
                            "id": "#bam_qc_stats.cwl/bam_qc_stats/gatk_collect_alignment_summary_metrics_4_1_3_0/gatk_collect_alignment_summary_metrics_txt"
                        }
                    ],
                    "run": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl",
                    "label": "GATK-CollectAlignmentSummaryMetrics",
                    "https://www.sevenbridges.com/x": 334.2886657714844,
                    "https://www.sevenbridges.com/y": 560.505126953125
                },
                {
                    "id": "#bam_qc_stats.cwl/bam_qc_stats/gatk_collect_hs_metrics_4_1_8_0",
                    "in": [
                        {
                            "id": "#bam_qc_stats.cwl/bam_qc_stats/gatk_collect_hs_metrics_4_1_8_0/input",
                            "source": "#bam_qc_stats.cwl/bam_qc_stats/input"
                        },
                        {
                            "id": "#bam_qc_stats.cwl/bam_qc_stats/gatk_collect_hs_metrics_4_1_8_0/bait_intervals",
                            "source": "#bam_qc_stats.cwl/bam_qc_stats/bait_intervals"
                        },
                        {
                            "id": "#bam_qc_stats.cwl/bam_qc_stats/gatk_collect_hs_metrics_4_1_8_0/target_intervals",
                            "source": "#bam_qc_stats.cwl/bam_qc_stats/target_intervals"
                        },
                        {
                            "id": "#bam_qc_stats.cwl/bam_qc_stats/gatk_collect_hs_metrics_4_1_8_0/coverage_cap",
                            "source": "#bam_qc_stats.cwl/bam_qc_stats/hsmetrics_coverage_cap"
                        },
                        {
                            "id": "#bam_qc_stats.cwl/bam_qc_stats/gatk_collect_hs_metrics_4_1_8_0/minimum_base_quality",
                            "source": "#bam_qc_stats.cwl/bam_qc_stats/hsmetrics_minimum_base_quality"
                        },
                        {
                            "id": "#bam_qc_stats.cwl/bam_qc_stats/gatk_collect_hs_metrics_4_1_8_0/minimum_mapping_quality",
                            "source": "#bam_qc_stats.cwl/bam_qc_stats/hsmetrics_minimum_mapping_quality"
                        },
                        {
                            "id": "#bam_qc_stats.cwl/bam_qc_stats/gatk_collect_hs_metrics_4_1_8_0/reference",
                            "source": "#bam_qc_stats.cwl/bam_qc_stats/reference"
                        },
                        {
                            "id": "#bam_qc_stats.cwl/bam_qc_stats/gatk_collect_hs_metrics_4_1_8_0/temporary_directory",
                            "source": "#bam_qc_stats.cwl/bam_qc_stats/temporary_directory"
                        }
                    ],
                    "out": [
                        {
                            "id": "#bam_qc_stats.cwl/bam_qc_stats/gatk_collect_hs_metrics_4_1_8_0/gatk_collect_hs_metrics_txt"
                        },
                        {
                            "id": "#bam_qc_stats.cwl/bam_qc_stats/gatk_collect_hs_metrics_4_1_8_0/gatk_collect_hs_metrics_per_base_coverage_txt"
                        },
                        {
                            "id": "#bam_qc_stats.cwl/bam_qc_stats/gatk_collect_hs_metrics_4_1_8_0/gatk_collect_hs_metrics_per_target_coverage_txt"
                        }
                    ],
                    "run": "#gatk_collect_hs_metrics_4.1.8.0.cwl",
                    "label": "GATK-CollectHsMetrics",
                    "https://www.sevenbridges.com/x": 327.8453674316406,
                    "https://www.sevenbridges.com/y": 372.8453674316406
                },
                {
                    "id": "#bam_qc_stats.cwl/bam_qc_stats/gatk_collect_insert_size_metrics_4_1_8_0",
                    "in": [
                        {
                            "id": "#bam_qc_stats.cwl/bam_qc_stats/gatk_collect_insert_size_metrics_4_1_8_0/input",
                            "source": "#bam_qc_stats.cwl/bam_qc_stats/input"
                        },
                        {
                            "id": "#bam_qc_stats.cwl/bam_qc_stats/gatk_collect_insert_size_metrics_4_1_8_0/histogram_file",
                            "default": "histogram.pdf"
                        },
                        {
                            "id": "#bam_qc_stats.cwl/bam_qc_stats/gatk_collect_insert_size_metrics_4_1_8_0/temporary_directory",
                            "source": "#bam_qc_stats.cwl/bam_qc_stats/temporary_directory"
                        }
                    ],
                    "out": [
                        {
                            "id": "#bam_qc_stats.cwl/bam_qc_stats/gatk_collect_insert_size_metrics_4_1_8_0/gatk_collect_insert_size_metrics_txt"
                        },
                        {
                            "id": "#bam_qc_stats.cwl/bam_qc_stats/gatk_collect_insert_size_metrics_4_1_8_0/gatk_collect_insert_size_metrics_histogram_pdf"
                        }
                    ],
                    "run": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl",
                    "label": "GATK-CollectInsertSizeMetrics",
                    "https://www.sevenbridges.com/x": 335.57733154296875,
                    "https://www.sevenbridges.com/y": 194.7628936767578
                }
            ],
            "requirements": [],
            "https://schema.org/author": [
                {
                    "class": "https://schema.org/Person",
                    "https://schema.org/email": "mailto:murphyc4@mskcc.org",
                    "https://schema.org/identifier": "",
                    "https://schema.org/name": "Charles Murphy"
                }
            ],
            "https://schema.org/citation": "",
            "https://schema.org/codeRepository": "https://github.com/msk-access/uncollapsed_bam_generation",
            "https://schema.org/contributor": [
                {
                    "class": "https://schema.org/Person",
                    "https://schema.org/email": "mailto:shahr2@mskcc.org",
                    "https://schema.org/identifier": "https://orcid.org/0000-0001-9042-6213",
                    "https://schema.org/name": "Ronak Shah"
                }
            ],
            "https://schema.org/dateCreated": "2020-09-23",
            "https://schema.org/license": "https://spdx.org/licenses/Apache-2.0",
            "outputs": [
                {
                    "id": "#bam_qc_stats.cwl/bam_qc_stats/gatk_collect_insert_size_metrics_histogram_pdf",
                    "outputSource": [
                        "#bam_qc_stats.cwl/bam_qc_stats/gatk_collect_insert_size_metrics_4_1_8_0/gatk_collect_insert_size_metrics_histogram_pdf"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "https://www.sevenbridges.com/x": 700.636962890625,
                    "https://www.sevenbridges.com/y": 106.875
                },
                {
                    "id": "#bam_qc_stats.cwl/bam_qc_stats/gatk_collect_insert_size_metrics_txt",
                    "outputSource": [
                        "#bam_qc_stats.cwl/bam_qc_stats/gatk_collect_insert_size_metrics_4_1_8_0/gatk_collect_insert_size_metrics_txt"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "https://www.sevenbridges.com/x": 700.636962890625,
                    "https://www.sevenbridges.com/y": 0
                },
                {
                    "id": "#bam_qc_stats.cwl/bam_qc_stats/gatk_collect_hs_metrics_txt",
                    "outputSource": [
                        "#bam_qc_stats.cwl/bam_qc_stats/gatk_collect_hs_metrics_4_1_8_0/gatk_collect_hs_metrics_txt"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "https://www.sevenbridges.com/x": 700.636962890625,
                    "https://www.sevenbridges.com/y": 213.75
                },
                {
                    "id": "#bam_qc_stats.cwl/bam_qc_stats/gatk_collect_hs_metrics_per_base_coverage_txt",
                    "outputSource": [
                        "#bam_qc_stats.cwl/bam_qc_stats/gatk_collect_hs_metrics_4_1_8_0/gatk_collect_hs_metrics_per_base_coverage_txt"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "https://www.sevenbridges.com/x": 700.636962890625,
                    "https://www.sevenbridges.com/y": 427.5
                },
                {
                    "id": "#bam_qc_stats.cwl/bam_qc_stats/gatk_collect_hs_metrics_per_target_coverage_txt",
                    "outputSource": [
                        "#bam_qc_stats.cwl/bam_qc_stats/gatk_collect_hs_metrics_4_1_8_0/gatk_collect_hs_metrics_per_target_coverage_txt"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "https://www.sevenbridges.com/x": 700.636962890625,
                    "https://www.sevenbridges.com/y": 320.625
                },
                {
                    "id": "#bam_qc_stats.cwl/bam_qc_stats/gatk_collect_alignment_summary_metrics_txt",
                    "outputSource": [
                        "#bam_qc_stats.cwl/bam_qc_stats/gatk_collect_alignment_summary_metrics_4_1_3_0/gatk_collect_alignment_summary_metrics_txt"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "https://www.sevenbridges.com/x": 700.636962890625,
                    "https://www.sevenbridges.com/y": 534.375
                }
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#biometrics_extract.cwl",
            "baseCommand": [
                "biometrics",
                "extract"
            ],
            "inputs": [
                {
                    "id": "#biometrics_extract.cwl/biometrics_extract_0_2_13/sample_bam",
                    "type": "File",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--sample-bam"
                    },
                    "doc": "BAM file.",
                    "secondaryFiles": [
                        "^.bai"
                    ]
                },
                {
                    "id": "#biometrics_extract.cwl/biometrics_extract_0_2_13/sample_sex",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--sample-sex"
                    },
                    "doc": "Expected sample sex (i.e. M or F)."
                },
                {
                    "id": "#biometrics_extract.cwl/biometrics_extract_0_2_13/sample_group",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--sample-group"
                    },
                    "doc": "The sample group (e.g. the sample patient ID)."
                },
                {
                    "id": "#biometrics_extract.cwl/biometrics_extract_0_2_13/sample_name",
                    "type": "string",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--sample-name"
                    },
                    "doc": "Sample name. If not specified, sample name is automatically figured out from the BAM file."
                },
                {
                    "id": "#biometrics_extract.cwl/biometrics_extract_0_2_13/fafile",
                    "type": "File",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--fafile"
                    },
                    "doc": "Path to reference fasta.",
                    "secondaryFiles": [
                        "^.fasta.fai"
                    ]
                },
                {
                    "id": "#biometrics_extract.cwl/biometrics_extract_0_2_13/vcf_file",
                    "type": "File",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--vcf"
                    },
                    "doc": "VCF file containing the SNPs to be queried."
                },
                {
                    "id": "#biometrics_extract.cwl/biometrics_extract_0_2_13/bed_file",
                    "type": [
                        "null",
                        "File"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--bed"
                    },
                    "doc": "BED file containing the intervals to be queried."
                },
                {
                    "id": "#biometrics_extract.cwl/biometrics_extract_0_2_13/database",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--database"
                    },
                    "doc": "Directory to store the intermediate files after running the extraction step."
                },
                {
                    "default": 1,
                    "id": "#biometrics_extract.cwl/biometrics_extract_0_2_13/min_mapping_quality",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--min-mapping-quality"
                    },
                    "doc": "Minimum mapping quality of reads to be used for pileup."
                },
                {
                    "default": 1,
                    "id": "#biometrics_extract.cwl/biometrics_extract_0_2_13/min_base_quality",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--min-base-quality"
                    },
                    "doc": "Minimum base quality of reads to be used for pileup."
                },
                {
                    "default": 10,
                    "id": "#biometrics_extract.cwl/biometrics_extract_0_2_13/min_coverage",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--min-coverage"
                    },
                    "doc": "Minimum coverage to count a site."
                },
                {
                    "default": 0.1,
                    "id": "#biometrics_extract.cwl/biometrics_extract_0_2_13/min_homozygous_thresh",
                    "type": [
                        "null",
                        "float"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--min-homozygous-thresh"
                    },
                    "doc": "Minimum threshold to define homozygous."
                },
                {
                    "id": "#biometrics_extract.cwl/biometrics_extract_0_2_13/default_genotype",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--default-genotype"
                    },
                    "doc": "Default genotype if coverage is too low (options are Het or Hom)."
                }
            ],
            "outputs": [
                {
                    "id": "#biometrics_extract.cwl/biometrics_extract_0_2_13/biometrics_extract_pickle",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n  if (inputs.database) {\n    return inputs.database + '/' + inputs.sample_name + '.pickle';\n  } else {\n    return inputs.sample_name + '.pickle';\n  }\n}"
                    }
                }
            ],
            "requirements": [
                {
                    "class": "ResourceRequirement",
                    "ramMin": 16000,
                    "coresMin": 2
                },
                {
                    "class": "DockerRequirement",
                    "dockerPull": "ghcr.io/msk-access/biometrics:0.2.13"
                },
                {
                    "class": "InlineJavascriptRequirement"
                }
            ],
            "http://purl.org/dc/terms/contributor": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:murphyc4@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Charlie Murphy"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://purl.org/dc/terms/creator": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:murphyc4@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Charlie Murphy"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "class": "http://usefulinc.com/ns/doap#Version",
                    "http://usefulinc.com/ns/doap#name": "biometrics",
                    "http://usefulinc.com/ns/doap#revision": "0.2.13"
                }
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#biometrics_major.cwl",
            "baseCommand": [
                "biometrics",
                "major"
            ],
            "inputs": [
                {
                    "id": "#biometrics_major.cwl/biometrics_major_0_2_13/input",
                    "type": {
                        "type": "array",
                        "items": "File",
                        "inputBinding": {
                            "prefix": "--input"
                        }
                    },
                    "inputBinding": {
                        "position": 0
                    },
                    "doc": "Can be one of three types: (1) path to a CSV file containing sample information (one per line). For example: sample_name,sample_bam,sample_type,sample_sex,sample_group. (2) Path to a '*.pk' file that was produced by the 'extract' tool. (3) Name of the sample to analyze; this assumes there is a file named '{sample_name}.pk' in your database directory. Can be specified more than once."
                },
                {
                    "id": "#biometrics_major.cwl/biometrics_major_0_2_13/database",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--database"
                    },
                    "doc": "Directory to store the intermediate files after running the extraction step."
                },
                {
                    "default": 0.6,
                    "id": "#biometrics_major.cwl/biometrics_major_0_2_13/major_threshold",
                    "type": [
                        "null",
                        "float"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--major-threshold"
                    },
                    "doc": "Major contamination threshold for bad sample."
                },
                {
                    "id": "#biometrics_major.cwl/biometrics_major_0_2_13/prefix",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--prefix"
                    },
                    "doc": "Output file prefix."
                },
                {
                    "id": "#biometrics_major.cwl/biometrics_major_0_2_13/plot",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--plot"
                    },
                    "doc": "Also output plots of the data."
                },
                {
                    "id": "#biometrics_major.cwl/biometrics_major_0_2_13/json",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--json"
                    },
                    "doc": "Also output data in JSON format."
                },
                {
                    "id": "#biometrics_major.cwl/biometrics_major_0_2_13/no_db_comparison",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--no-db-compare"
                    },
                    "doc": "Do not compare the sample(s) you provided to all samples in the database, only compare them with each other."
                }
            ],
            "outputs": [
                {
                    "id": "#biometrics_major.cwl/biometrics_major_0_2_13/biometrics_major_csv",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    if (inputs.prefix) {\n      return inputs.prefix + '_major_contamination.csv'\n    } else {\n      return 'major_contamination.csv'\n    }\n}"
                    }
                },
                {
                    "id": "#biometrics_major.cwl/biometrics_major_0_2_13/biometrics_major_json",
                    "type": [
                        "null",
                        "File"
                    ],
                    "outputBinding": {
                        "glob": "${\n    if (inputs.prefix) {\n      return inputs.prefix + '_major_contamination.json'\n    } else {\n      return 'major_contamination.json'\n    }\n}"
                    }
                },
                {
                    "id": "#biometrics_major.cwl/biometrics_major_0_2_13/biometrics_major_plot",
                    "type": [
                        "null",
                        "File"
                    ],
                    "outputBinding": {
                        "glob": "${\n  return 'major_contamination.html'\n}"
                    }
                }
            ],
            "requirements": [
                {
                    "class": "ResourceRequirement",
                    "ramMin": 16000,
                    "coresMin": 2
                },
                {
                    "class": "DockerRequirement",
                    "dockerPull": "ghcr.io/msk-access/biometrics:0.2.13"
                },
                {
                    "class": "InlineJavascriptRequirement"
                }
            ],
            "http://purl.org/dc/terms/contributor": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:murphyc4@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Charlie Murphy"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://purl.org/dc/terms/creator": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:murphyc4@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Charlie Murphy"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "class": "http://usefulinc.com/ns/doap#Version",
                    "http://usefulinc.com/ns/doap#name": "biometrics",
                    "http://usefulinc.com/ns/doap#revision": "0.2.13"
                }
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#biometrics_minor.cwl",
            "baseCommand": [
                "biometrics",
                "minor"
            ],
            "inputs": [
                {
                    "id": "#biometrics_minor.cwl/biometrics_minor_0_2_13/input",
                    "type": {
                        "type": "array",
                        "items": "File",
                        "inputBinding": {
                            "prefix": "--input"
                        }
                    },
                    "inputBinding": {
                        "position": 0
                    },
                    "doc": "Can be one of three types: (1) path to a CSV file containing sample information (one per line). For example: sample_name,sample_bam,sample_type,sample_sex,sample_group. (2) Path to a '*.pk' file that was produced by the 'extract' tool. (3) Name of the sample to analyze; this assumes there is a file named '{sample_name}.pk' in your database directory. Can be specified more than once."
                },
                {
                    "id": "#biometrics_minor.cwl/biometrics_minor_0_2_13/database",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--database"
                    },
                    "doc": "Directory to store the intermediate files after running the extraction step."
                },
                {
                    "default": 0.002,
                    "id": "#biometrics_minor.cwl/biometrics_minor_0_2_13/minor_threshold",
                    "type": [
                        "null",
                        "float"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--minor-threshold"
                    },
                    "doc": "Minor contamination threshold for bad sample."
                },
                {
                    "id": "#biometrics_minor.cwl/biometrics_minor_0_2_13/prefix",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--prefix"
                    },
                    "doc": "Output file prefix."
                },
                {
                    "id": "#biometrics_minor.cwl/biometrics_minor_0_2_13/plot",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--plot"
                    },
                    "doc": "Also output plots of the data."
                },
                {
                    "id": "#biometrics_minor.cwl/biometrics_minor_0_2_13/json",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--json"
                    },
                    "doc": "Also output data in JSON format."
                },
                {
                    "id": "#biometrics_minor.cwl/biometrics_minor_0_2_13/no_db_comparison",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--no-db-compare"
                    },
                    "doc": "Do not compare the sample(s) you provided to all samples in the database, only compare them with each other."
                }
            ],
            "outputs": [
                {
                    "id": "#biometrics_minor.cwl/biometrics_minor_0_2_13/biometrics_minor_csv",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    if (inputs.prefix) {\n      return inputs.prefix + '_minor_contamination.csv'\n    } else {\n      return 'minor_contamination.csv'\n    }\n}"
                    }
                },
                {
                    "id": "#biometrics_minor.cwl/biometrics_minor_0_2_13/biometrics_minor_json",
                    "type": [
                        "null",
                        "File"
                    ],
                    "outputBinding": {
                        "glob": "${\n    if (inputs.prefix) {\n      return inputs.prefix + '_minor_contamination.json'\n    } else {\n      return 'minor_contamination.json'\n    }\n}"
                    }
                },
                {
                    "id": "#biometrics_minor.cwl/biometrics_minor_0_2_13/biometrics_minor_plot",
                    "type": [
                        "null",
                        "File"
                    ],
                    "outputBinding": {
                        "glob": "${\n  return 'minor_contamination.html'\n}"
                    }
                },
                {
                    "id": "#biometrics_minor.cwl/biometrics_minor_0_2_13/biometrics_minor_sites_plot",
                    "type": [
                        "null",
                        "File"
                    ],
                    "outputBinding": {
                        "glob": "${\n  return 'minor_contamination_sites.html'\n}"
                    }
                }
            ],
            "requirements": [
                {
                    "class": "ResourceRequirement",
                    "ramMin": 16000,
                    "coresMin": 2
                },
                {
                    "class": "DockerRequirement",
                    "dockerPull": "ghcr.io/msk-access/biometrics:0.2.13"
                },
                {
                    "class": "InlineJavascriptRequirement"
                }
            ],
            "http://purl.org/dc/terms/contributor": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:murphyc4@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Charlie Murphy"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://purl.org/dc/terms/creator": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:murphyc4@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Charlie Murphy"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "class": "http://usefulinc.com/ns/doap#Version",
                    "http://usefulinc.com/ns/doap#name": "biometrics",
                    "http://usefulinc.com/ns/doap#revision": "0.2.13"
                }
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl",
            "baseCommand": [
                "gatk",
                "CollectAlignmentSummaryMetrics"
            ],
            "inputs": [
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4.1.8.0/memory_per_job",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory per job in megabytes"
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4.1.8.0/memory_overhead",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory overhead per job in megabytes"
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4.1.8.0/number_of_threads",
                    "type": [
                        "null",
                        "int"
                    ]
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4.1.8.0/input",
                    "type": "File",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-I"
                    },
                    "doc": "Input file (bam or sam).  Required."
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4.1.8.0/output_file_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "doc": "File to write the output to.  Required."
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4.1.8.0/reference",
                    "type": [
                        "null",
                        "File"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-R"
                    },
                    "doc": "Reference sequence file. Note that while this argument is not required, without it only a small subset of the metrics will be calculated. Note also that if a reference sequence is provided, it must be accompanied by a sequence dictionary.  Default value: null.",
                    "secondaryFiles": [
                        "^.fasta.fai",
                        "^.dict"
                    ]
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4.1.8.0/adaptor_sequence",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--ADAPTER_SEQUENCE"
                    },
                    "doc": "List of adapter sequences to use when processing the alignment metrics.  This argument may be specified 0 or more times. Default value: [AATGATACGGCGACCACCGAGATCTACACTCTTTCCCTACACGACGCTCTTCCGATCT, AGATCGGAAGAGCTCGTATGCCGTCTTCTGCTTG, AATGATACGGCGACCACCGAGATCTACACTCTTTCCCTACACGACGCTCTTCCGATCT, AGATCGGAAGAGCGGTTCAGCAGGAATGCCGAGACCGATCTCGTATGCCGTCTTCTGCTTG, AATGATACGGCGACCACCGAGATCTACACTCTTTCCCTACACGACGCTCTTCCGATCT, AGATCGGAAGAGCACACGTCTGAACTCCAGTCACNNNNNNNNATCTCGTATGCCGTCTTCTGCTTG]."
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4.1.8.0/metrics_acciumulation_level",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--METRIC_ACCUMULATION_LEVEL"
                    },
                    "doc": "The level(s) at which to accumulate metrics. Default value: [ALL_READS]. This option can be set to 'null' to clear the default value. Possible values: {ALL_READS, SAMPLE, LIBRARY, READ_GROUP} This option may be specified 0 or more times. This option can be set to 'null' to clear the default list."
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4.1.8.0/expected_pair_orientations",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--EXPECTED_PAIR_ORIENTATIONS"
                    },
                    "doc": "Paired-end reads that do not have this expected orientation will be considered chimeric. This argument may be specified 0 or more times. Default value: [FR]. Possible values: {FR, RF, TANDEM}"
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4.1.8.0/is_bisulfite_sequenced",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--IS_BISULFITE_SEQUENCED"
                    },
                    "doc": "Whether the SAM or BAM file consists of bisulfite sequenced reads.  Default value: false. Possible values: {true, false}"
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4.1.8.0/max_insert_size",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--MAX_INSERT_SIZE"
                    },
                    "doc": "Paired-end reads above this insert size will be considered chimeric along with inter-chromosomal pairs.  Default value: 100000."
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4.1.8.0/validation_stringency",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--VALIDATION_STRINGENCY"
                    },
                    "doc": "Validation stringency for all SAM files read by this program.  Setting stringency to SILENT can improve performance when processing a BAM file in which variable-length data (read, qualities, tags) do not otherwise need to be decoded.  Default value: STRICT. This option can be set to 'null' to clear the default value. Possible values: {STRICT,LENIENT, SILENT}"
                },
                {
                    "default": true,
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4.1.8.0/assume_sorted",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--ASSUME_SORTED"
                    },
                    "doc": "If true (default), then the sort order in the header file will be ignored.  Default value: true. This option can be set to 'null' to clear the default value. Possible values: {true, false}"
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4.1.8.0/stop_after",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--STOP_AFTER"
                    },
                    "doc": "Stop after processing N reads, mainly for debugging. Default value: 0. This option can be set to 'null' to clear the default value."
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4.1.8.0/create_index",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--CREATE_INDEX"
                    },
                    "doc": "Whether to create a BAM index when writing a coordinate-sorted BAM file.  Default value: false. Possible values: {true, false}"
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4.1.8.0/create_md5_file",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--CREATE_MD5_FILE"
                    },
                    "doc": "Whether to create an MD5 digest for any BAM or FASTQ files created.    Default value: false. Possible values: {true, false}"
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4.1.8.0/use_jdk_deflater",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--USE_JDK_DEFLATER"
                    },
                    "doc": "Use the JDK Deflater instead of the Intel Deflater for writing compressed output"
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4.1.8.0/use_jdk_inflater",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--USE_JDK_INFLATER"
                    },
                    "doc": "Use the JDK Inflater instead of the Intel Inflater for reading compressed input"
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4.1.8.0/temporary_directory",
                    "type": [
                        "null",
                        "string"
                    ],
                    "doc": "Default value: null. This option may be specified 0 or more times."
                }
            ],
            "outputs": [
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_4.1.8.0/gatk_collect_alignment_summary_metrics_txt",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    if (inputs.output_file_name){\n        return inputs.output_file_name\n    } else {\n        return inputs.input.basename.replace(/.bam/, '_alignment_summary_metrics.txt')\n    }\n}"
                    }
                }
            ],
            "label": "GATK-CollectAlignmentSummaryMetrics",
            "arguments": [
                {
                    "position": 0,
                    "prefix": "--java-options",
                    "valueFrom": "${\n  if(inputs.memory_per_job && inputs.memory_overhead) {\n    if(inputs.memory_per_job % 1000 == 0) {\n      return \"-Xmx\" + (inputs.memory_per_job/1000).toString() + \"G\"\n    }\n    else {\n      return \"-Xmx\" + Math.floor((inputs.memory_per_job/1000)).toString() + \"G\"\n    }\n  }\n  else if (inputs.memory_per_job && !inputs.memory_overhead){\n    if(inputs.memory_per_job % 1000 == 0) {\n      return \"-Xmx\" + (inputs.memory_per_job/1000).toString() + \"G\"\n    }\n    else {\n      return \"-Xmx\" + Math.floor((inputs.memory_per_job/1000)).toString() + \"G\"\n    }\n  }\n  else if(!inputs.memory_per_job && inputs.memory_overhead){\n    return \"-Xmx15G\"\n  }\n  else {\n      return \"-Xmx15G\"\n  }\n}"
                },
                {
                    "position": 0,
                    "prefix": "--TMP_DIR",
                    "valueFrom": "${\n    if(inputs.temporary_directory)\n        return inputs.temporary_directory;\n      return runtime.tmpdir\n}"
                },
                {
                    "position": 0,
                    "prefix": "-O",
                    "valueFrom": "${\n    if(inputs.output_file_name){\n        return inputs.output_file_name\n    } else {\n        return inputs.input.basename.replace(/.bam/, '_alignment_summary_metrics.txt')\n    }\n}"
                }
            ],
            "requirements": [
                {
                    "class": "ResourceRequirement",
                    "ramMin": 32000,
                    "coresMin": 1
                },
                {
                    "class": "DockerRequirement",
                    "dockerPull": "ghcr.io/msk-access/gatk:4.1.8.0"
                },
                {
                    "class": "InlineJavascriptRequirement"
                }
            ],
            "http://purl.org/dc/terms/contributor": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:murphyc4@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Charles Murphy"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://purl.org/dc/terms/creator": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:murphyc4@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Charles Murphy"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "class": "http://usefulinc.com/ns/doap#Version",
                    "http://usefulinc.com/ns/doap#name": "gatk4",
                    "http://usefulinc.com/ns/doap#revision": "4.1.8.0"
                }
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl",
            "baseCommand": [
                "gatk",
                "CollectHsMetrics"
            ],
            "inputs": [
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/gatk_collect_hs_metrics_4_1_8_0/input",
                    "type": "File",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-I"
                    },
                    "doc": "An aligned SAM or BAM file.  Required."
                },
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/gatk_collect_hs_metrics_4_1_8_0/bait_intervals",
                    "type": "File",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--BAIT_INTERVALS"
                    },
                    "doc": "An interval list file that contains the locations of the baits used.  This argument must be specified at least once. Required."
                },
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/gatk_collect_hs_metrics_4_1_8_0/target_intervals",
                    "type": "File",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--TARGET_INTERVALS"
                    },
                    "doc": "An interval list file that contains the locations of the targets.  This argument must be specified at least once. Required."
                },
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/gatk_collect_hs_metrics_4_1_8_0/output_file_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "doc": "The output file to write the metrics to.  Required."
                },
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/gatk_collect_hs_metrics_4_1_8_0/per_base_coverage",
                    "type": [
                        "null",
                        "string"
                    ],
                    "doc": "An optional file to output per base coverage information to. The per-base file contains one line per target base and can grow very large. It is not recommended for use with large target sets.  Default value: null."
                },
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/gatk_collect_hs_metrics_4_1_8_0/per_target_coverage",
                    "type": [
                        "null",
                        "string"
                    ],
                    "doc": "An optional file to output per target coverage information to.  Default value: null."
                },
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/gatk_collect_hs_metrics_4_1_8_0/theoretical_sensitivity_output",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--THEORETICAL_SENSITIVITY_OUTPUT"
                    },
                    "doc": "Output for Theoretical Sensitivity metrics where the allele fractions are provided by the ALLELE_FRACTION argument.  Default value: null."
                },
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/gatk_collect_hs_metrics_4_1_8_0/allele_fraction",
                    "type": [
                        "null",
                        "float"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--ALLELE_FRACTION"
                    },
                    "doc": "Allele fraction for which to calculate theoretical sensitivity.  This argument may be specified 0 or more times. Default value: [0.001, 0.005, 0.01, 0.02, 0.05, 0.1, 0.2, 0.3, 0.5]."
                },
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/gatk_collect_hs_metrics_4_1_8_0/bait_set_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--BAIT_SET_NAME"
                    },
                    "doc": "Bait set name. If not provided it is inferred from the filename of the bait intervals. Default value: null."
                },
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/gatk_collect_hs_metrics_4_1_8_0/clip_overlapping_reads",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--CLIP_OVERLAPPING_READS"
                    },
                    "doc": "True if we are to clip overlapping reads, false otherwise.  Default value: true. Possible values: {true, false}"
                },
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/gatk_collect_hs_metrics_4_1_8_0/coverage_cap",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--COVERAGE_CAP"
                    },
                    "doc": "Parameter to set a max coverage limit for Theoretical Sensitivity calculations. Default is 200.  Default value: 200."
                },
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/gatk_collect_hs_metrics_4_1_8_0/include_indels",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--INCLUDE_INDELS"
                    },
                    "doc": "If true count inserted bases as on target and deleted bases as covered by a read.  Default value: false. Possible values: {true, false}"
                },
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/gatk_collect_hs_metrics_4_1_8_0/minimum_base_quality",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--MINIMUM_BASE_QUALITY"
                    },
                    "doc": "Minimum base quality for a base to contribute coverage.  Default value: 20."
                },
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/gatk_collect_hs_metrics_4_1_8_0/minimum_mapping_quality",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--MINIMUM_MAPPING_QUALITY"
                    },
                    "doc": "Minimum mapping quality for a read to contribute coverage.  Default value: 20."
                },
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/gatk_collect_hs_metrics_4_1_8_0/near_distance",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--NEAR_DISTANCE"
                    },
                    "doc": "The maximum distance between a read and the nearest probe/bait/amplicon for the read to be considered 'near probe' and included in percent selected.  Default value: 250."
                },
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/gatk_collect_hs_metrics_4_1_8_0/sample_size",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--SAMPLE_SIZE"
                    },
                    "doc": "Sample Size used for Theoretical Het Sensitivity sampling. Default is 10000.  Default value: 10000."
                },
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/gatk_collect_hs_metrics_4_1_8_0/reference",
                    "type": [
                        "null",
                        "File"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-R"
                    },
                    "doc": "Reference sequence file. Note that while this argument is not required, without it only a small subset of the metrics will be calculated. Note also that if a reference sequence is provided, it must be accompanied by a sequence dictionary.  Default value: null.",
                    "secondaryFiles": [
                        "^.fasta.fai",
                        "^.dict"
                    ]
                },
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/gatk_collect_hs_metrics_4_1_8_0/metrics_acciumulation_level",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--METRIC_ACCUMULATION_LEVEL"
                    },
                    "doc": "The level(s) at which to accumulate metrics. Default value: [ALL_READS]. This option can be set to 'null' to clear the default value. Possible values: {ALL_READS, SAMPLE, LIBRARY, READ_GROUP} This option may be specified 0 or more times. This option can be set to 'null' to clear the default list."
                },
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/gatk_collect_hs_metrics_4_1_8_0/validation_stringency",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--VALIDATION_STRINGENCY"
                    },
                    "doc": "Validation stringency for all SAM files read by this program.  Setting stringency to SILENT can improve performance when processing a BAM file in which variable-length data (read, qualities, tags) do not otherwise need to be decoded.  Default value: STRICT. This option can be set to 'null' to clear the default value. Possible values: {STRICT,LENIENT, SILENT}"
                },
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/gatk_collect_hs_metrics_4_1_8_0/create_index",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--CREATE_INDEX"
                    },
                    "doc": "Whether to create a BAM index when writing a coordinate-sorted BAM file.  Default value: false. Possible values: {true, false}"
                },
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/gatk_collect_hs_metrics_4_1_8_0/create_md5_file",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--CREATE_MD5_FILE"
                    },
                    "doc": "Whether to create an MD5 digest for any BAM or FASTQ files created.    Default value: false. Possible values: {true, false}"
                },
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/gatk_collect_hs_metrics_4_1_8_0/memory_per_job",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory per job in megabytes"
                },
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/gatk_collect_hs_metrics_4_1_8_0/memory_overhead",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory overhead per job in megabytes"
                },
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/gatk_collect_hs_metrics_4_1_8_0/number_of_threads",
                    "type": [
                        "null",
                        "int"
                    ]
                },
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/gatk_collect_hs_metrics_4_1_8_0/temporary_directory",
                    "type": [
                        "null",
                        "string"
                    ],
                    "doc": "Default value: null. This option may be specified 0 or more times."
                }
            ],
            "outputs": [
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/gatk_collect_hs_metrics_4_1_8_0/gatk_collect_hs_metrics_txt",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    if(inputs.output_file_name){\n        return inputs.output_file_name\n    } else {\n        return inputs.input.basename.replace(/.bam/, '_hs_metrics.txt')\n    }\n}"
                    }
                },
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/gatk_collect_hs_metrics_4_1_8_0/gatk_collect_hs_metrics_per_base_coverage_txt",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    if(inputs.per_base_coverage){\n        return inputs.per_base_coverage\n    } else {\n        return inputs.input.basename.replace(/.bam/, '_per_base_coverage.txt')\n    }\n}"
                    }
                },
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/gatk_collect_hs_metrics_4_1_8_0/gatk_collect_hs_metrics_per_target_coverage_txt",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    if(inputs.per_target_coverage){\n        return inputs.per_target_coverage\n    } else {\n        return inputs.input.basename.replace(/.bam/, '_per_target_coverage.txt')\n    }\n}"
                    }
                }
            ],
            "label": "GATK-CollectHsMetrics",
            "arguments": [
                {
                    "position": 0,
                    "prefix": "--java-options",
                    "valueFrom": "${\n  if(inputs.memory_per_job && inputs.memory_overhead) {\n    if(inputs.memory_per_job % 1000 == 0) {\n      return \"-Xmx\" + (inputs.memory_per_job/1000).toString() + \"G\"\n    }\n    else {\n      return \"-Xmx\" + Math.floor((inputs.memory_per_job/1000)).toString() + \"G\"\n    }\n  }\n  else if (inputs.memory_per_job && !inputs.memory_overhead){\n    if(inputs.memory_per_job % 1000 == 0) {\n      return \"-Xmx\" + (inputs.memory_per_job/1000).toString() + \"G\"\n    }\n    else {\n      return \"-Xmx\" + Math.floor((inputs.memory_per_job/1000)).toString() + \"G\"\n    }\n  }\n  else if(!inputs.memory_per_job && inputs.memory_overhead){\n    return \"-Xmx15G\"\n  }\n  else {\n      return \"-Xmx15G\"\n  }\n}"
                },
                {
                    "position": 0,
                    "prefix": "--TMP_DIR",
                    "valueFrom": "${\n    if(inputs.temporary_directory)\n        return inputs.temporary_directory;\n      return runtime.tmpdir\n}"
                },
                {
                    "position": 0,
                    "prefix": "-O",
                    "valueFrom": "${\n    if(inputs.output_file_name){\n        return inputs.output_file_name\n    } else {\n        return inputs.input.basename.replace(/.bam/, '_hs_metrics.txt')\n    }\n}"
                },
                {
                    "position": 0,
                    "prefix": "--PER_TARGET_COVERAGE",
                    "valueFrom": "${\n    if(inputs.per_target_coverage){\n        return inputs.per_target_coverage\n    } else {\n        return inputs.input.basename.replace(/.bam/, '_per_target_coverage.txt')\n    }\n}"
                },
                {
                    "position": 0,
                    "prefix": "--PER_BASE_COVERAGE",
                    "valueFrom": "${\n    if(inputs.per_base_coverage){\n        return inputs.per_base_coverage\n    } else {\n        return inputs.input.basename.replace(/.bam/, '_per_base_coverage.txt')\n    }\n}"
                }
            ],
            "requirements": [
                {
                    "class": "ResourceRequirement",
                    "ramMin": 32000,
                    "coresMin": 1
                },
                {
                    "class": "DockerRequirement",
                    "dockerPull": "ghcr.io/msk-access/gatk:4.1.8.0"
                },
                {
                    "class": "InlineJavascriptRequirement"
                }
            ],
            "http://purl.org/dc/terms/contributor": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:murphyc4@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Charles Murphy"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://purl.org/dc/terms/creator": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:murphyc4@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Charles Murphy"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "class": "http://usefulinc.com/ns/doap#Version",
                    "http://usefulinc.com/ns/doap#name": "gatk4",
                    "http://usefulinc.com/ns/doap#revision": "4.1.8.0"
                }
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl",
            "baseCommand": [
                "gatk",
                "CollectInsertSizeMetrics"
            ],
            "inputs": [
                {
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/gatk_collect_insert_size_metrics_4_1_8_0/memory_per_job",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory per job in megabytes"
                },
                {
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/gatk_collect_insert_size_metrics_4_1_8_0/memory_overhead",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory overhead per job in megabytes"
                },
                {
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/gatk_collect_insert_size_metrics_4_1_8_0/number_of_threads",
                    "type": [
                        "null",
                        "int"
                    ]
                },
                {
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/gatk_collect_insert_size_metrics_4_1_8_0/input",
                    "type": "File",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-I"
                    },
                    "doc": "Input file (bam or sam).  Required."
                },
                {
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/gatk_collect_insert_size_metrics_4_1_8_0/output_file_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "doc": "File to write the output to.  Required."
                },
                {
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/gatk_collect_insert_size_metrics_4_1_8_0/histogram_file",
                    "type": [
                        "null",
                        "string"
                    ],
                    "doc": "File to write insert size Histogram chart to.  Required."
                },
                {
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/gatk_collect_insert_size_metrics_4_1_8_0/deviations",
                    "type": [
                        "null",
                        "float"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--DEVIATIONS"
                    },
                    "doc": "Generate mean, sd and plots by trimming the data down to MEDIAN + DEVIATIONS*MEDIAN_ABSOLUTE_DEVIATION. This is done because insert size data typically includes enough anomalous values from chimeras and other artifacts to make the mean and sd grossly misleading regarding the real distribution.  Default value: 10.0. This option can be set to 'null' to clear the default value."
                },
                {
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/gatk_collect_insert_size_metrics_4_1_8_0/histogram_width",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--HISTOGRAM_WIDTH"
                    },
                    "doc": "Explicitly sets the Histogram width, overriding automatic truncation of Histogram tail. Also, when calculating mean and standard deviation, only bins <= Histogram_WIDTH will be included.  Default value: null."
                },
                {
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/gatk_collect_insert_size_metrics_4_1_8_0/minimum_pct",
                    "type": [
                        "null",
                        "float"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--MINIMUM_PCT"
                    },
                    "doc": "When generating the Histogram, discard any data categories (out of FR, TANDEM, RF) that have fewer than this percentage of overall reads. (Range: 0 to 1).  Default value: 0.05. This option can be set to 'null' to clear the default value."
                },
                {
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/gatk_collect_insert_size_metrics_4_1_8_0/metrics_acciumulation_level",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--METRIC_ACCUMULATION_LEVEL"
                    },
                    "doc": "The level(s) at which to accumulate metrics. Default value: [ALL_READS]. This option can be set to 'null' to clear the default value. Possible values: {ALL_READS, SAMPLE, LIBRARY, READ_GROUP} This option may be specified 0 or more times. This option can be set to 'null' to clear the default list."
                },
                {
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/gatk_collect_insert_size_metrics_4_1_8_0/include_duplicates",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--INCLUDE_DUPLICATES"
                    },
                    "doc": "If true, also include reads marked as duplicates in the insert size histogram.  Default value: false. This option can be set to 'null' to clear the default value. Possible values: {true, false}"
                },
                {
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/gatk_collect_insert_size_metrics_4_1_8_0/validation_stringency",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--VALIDATION_STRINGENCY"
                    },
                    "doc": "Validation stringency for all SAM files read by this program.  Setting stringency to SILENT can improve performance when processing a BAM file in which variable-length data (read, qualities, tags) do not otherwise need to be decoded.  Default value: STRICT. This option can be set to 'null' to clear the default value. Possible values: {STRICT,LENIENT, SILENT}"
                },
                {
                    "default": true,
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/gatk_collect_insert_size_metrics_4_1_8_0/assume_sorted",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--ASSUME_SORTED"
                    },
                    "doc": "If true (default), then the sort order in the header file will be ignored.  Default value: true. This option can be set to 'null' to clear the default value. Possible values: {true, false}"
                },
                {
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/gatk_collect_insert_size_metrics_4_1_8_0/stop_after",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--STOP_AFTER"
                    },
                    "doc": "Stop after processing N reads, mainly for debugging. Default value: 0. This option can be set to 'null' to clear the default value."
                },
                {
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/gatk_collect_insert_size_metrics_4_1_8_0/create_index",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--CREATE_INDEX"
                    },
                    "doc": "Whether to create a BAM index when writing a coordinate-sorted BAM file.  Default value: false. Possible values: {true, false}"
                },
                {
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/gatk_collect_insert_size_metrics_4_1_8_0/create_md5_file",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--CREATE_MD5_FILE"
                    },
                    "doc": "Whether to create an MD5 digest for any BAM or FASTQ files created.    Default value: false. Possible values: {true, false}"
                },
                {
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/gatk_collect_insert_size_metrics_4_1_8_0/use_jdk_deflater",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--USE_JDK_DEFLATER"
                    },
                    "doc": "Use the JDK Deflater instead of the Intel Deflater for writing compressed output"
                },
                {
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/gatk_collect_insert_size_metrics_4_1_8_0/use_jdk_inflater",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--USE_JDK_INFLATER"
                    },
                    "doc": "Use the JDK Inflater instead of the Intel Inflater for reading compressed input"
                },
                {
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/gatk_collect_insert_size_metrics_4_1_8_0/temporary_directory",
                    "type": [
                        "null",
                        "string"
                    ],
                    "doc": "Default value: null. This option may be specified 0 or more times."
                }
            ],
            "outputs": [
                {
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/gatk_collect_insert_size_metrics_4_1_8_0/gatk_collect_insert_size_metrics_txt",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    if(inputs.output_file_name){\n        return inputs.output_file_name\n    } else {\n        return inputs.input.basename.replace(/.bam/, '_insert_size_metrics.txt')\n    }\n}"
                    }
                },
                {
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/gatk_collect_insert_size_metrics_4_1_8_0/gatk_collect_insert_size_metrics_histogram_pdf",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    if(inputs.histogram_file){\n        return inputs.histogram_file\n    } else {\n        return inputs.input.basename.replace(/.bam/, '_histogram.pdf')\n    }\n}"
                    }
                }
            ],
            "label": "GATK-CollectInsertSizeMetrics",
            "arguments": [
                {
                    "position": 0,
                    "prefix": "--java-options",
                    "valueFrom": "${\n  if(inputs.memory_per_job && inputs.memory_overhead) {\n    if(inputs.memory_per_job % 1000 == 0) {\n      return \"-Xmx\" + (inputs.memory_per_job/1000).toString() + \"G\"\n    }\n    else {\n      return \"-Xmx\" + Math.floor((inputs.memory_per_job/1000)).toString() + \"G\"\n    }\n  }\n  else if (inputs.memory_per_job && !inputs.memory_overhead){\n    if(inputs.memory_per_job % 1000 == 0) {\n      return \"-Xmx\" + (inputs.memory_per_job/1000).toString() + \"G\"\n    }\n    else {\n      return \"-Xmx\" + Math.floor((inputs.memory_per_job/1000)).toString() + \"G\"\n    }\n  }\n  else if(!inputs.memory_per_job && inputs.memory_overhead){\n    return \"-Xmx15G\"\n  }\n  else {\n      return \"-Xmx15G\"\n  }\n}"
                },
                {
                    "position": 0,
                    "prefix": "--TMP_DIR",
                    "valueFrom": "${\n    if(inputs.temporary_directory)\n        return inputs.temporary_directory;\n      return runtime.tmpdir\n}"
                },
                {
                    "position": 2,
                    "prefix": "-O",
                    "valueFrom": "${\n    if(inputs.output_file_name){\n        return inputs.output_file_name\n    } else {\n        return inputs.input.basename.replace(/.bam/, '_insert_size_metrics.txt')\n    }\n}"
                },
                {
                    "position": 2,
                    "prefix": "-H",
                    "valueFrom": "${\n    if(inputs.histogram_file){\n        return inputs.histogram_file\n    } else {\n        return inputs.input.basename.replace(/.bam/, '_histogram.pdf')\n    }\n}"
                }
            ],
            "requirements": [
                {
                    "class": "ResourceRequirement",
                    "ramMin": 32000,
                    "coresMin": 1
                },
                {
                    "class": "DockerRequirement",
                    "dockerPull": "ghcr.io/msk-access/gatk:4.1.8.0"
                },
                {
                    "class": "InlineJavascriptRequirement"
                }
            ],
            "http://purl.org/dc/terms/contributor": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:murphyc4@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Charles Murphy"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://purl.org/dc/terms/creator": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:murphyc4@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Charles Murphy"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "class": "http://usefulinc.com/ns/doap#Version",
                    "http://usefulinc.com/ns/doap#name": "gatk4",
                    "http://usefulinc.com/ns/doap#revision": "4.1.8.0"
                }
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#getbasecountsmultisample_1.2.5.cwl",
            "baseCommand": [
                "GetBaseCountsMultiSample"
            ],
            "inputs": [
                {
                    "id": "#getbasecountsmultisample_1.2.5.cwl/getbasecountsmultisample_1_2_5/memory_per_job",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory per job in megabytes"
                },
                {
                    "id": "#getbasecountsmultisample_1.2.5.cwl/getbasecountsmultisample_1_2_5/memory_overhead",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory overhead per job in megabytes"
                },
                {
                    "id": "#getbasecountsmultisample_1.2.5.cwl/getbasecountsmultisample_1_2_5/number_of_threads",
                    "type": [
                        "null",
                        "int"
                    ]
                },
                {
                    "id": "#getbasecountsmultisample_1.2.5.cwl/getbasecountsmultisample_1_2_5/genotyping_bams",
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "doc": "Input bam file"
                },
                {
                    "id": "#getbasecountsmultisample_1.2.5.cwl/getbasecountsmultisample_1_2_5/genotyping_bams_ids",
                    "type": [
                        "string",
                        {
                            "type": "array",
                            "items": "string"
                        }
                    ],
                    "doc": "Input bam, sample identifier to be used for \"Tumor Sample Barcode\" for maf or Sample name in the header for vcf"
                },
                {
                    "id": "#getbasecountsmultisample_1.2.5.cwl/getbasecountsmultisample_1_2_5/filter_duplicate",
                    "type": "int",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--filter_duplicate"
                    },
                    "doc": "Whether to filter reads that are marked as duplicate. 0=off, 1=on. Default 1"
                },
                {
                    "id": "#getbasecountsmultisample_1.2.5.cwl/getbasecountsmultisample_1_2_5/fragment_count",
                    "type": "int",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--fragment_count"
                    },
                    "doc": "Whether to output fragment read counts DPF/RDF/ADF. 0=off, 1=on. Default 0"
                },
                {
                    "id": "#getbasecountsmultisample_1.2.5.cwl/getbasecountsmultisample_1_2_5/maf",
                    "type": "File",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--maf"
                    },
                    "doc": "Input variant file in TCGA maf format. --maf or --vcf need to be specified at least once. But --maf and --vcf are mutually exclusive"
                },
                {
                    "id": "#getbasecountsmultisample_1.2.5.cwl/getbasecountsmultisample_1_2_5/maq",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--maq"
                    },
                    "doc": "Mapping quality threshold. Default 20"
                },
                {
                    "id": "#getbasecountsmultisample_1.2.5.cwl/getbasecountsmultisample_1_2_5/omaf",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--omaf"
                    },
                    "doc": "Output the result in maf format"
                },
                {
                    "id": "#getbasecountsmultisample_1.2.5.cwl/getbasecountsmultisample_1_2_5/output",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--output",
                        "valueFrom": "${\n    if (inputs.output) {\n        return inputs.output\n    } else if (inputs.genotyping_bams.length) {\n        return inputs.maf.basename.replace('.maf', '_fillout.maf')\n    } else {\n        return inputs.genotyping_bams.basename.replace('.bam', '_fillout.maf')\n    }\n}"
                    },
                    "doc": "Filename for output of raw fillout data in MAF/VCF format"
                },
                {
                    "id": "#getbasecountsmultisample_1.2.5.cwl/getbasecountsmultisample_1_2_5/ref_fasta",
                    "type": "File",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--fasta"
                    },
                    "doc": "Input reference sequence file"
                },
                {
                    "id": "#getbasecountsmultisample_1.2.5.cwl/getbasecountsmultisample_1_2_5/vcf",
                    "type": [
                        "null",
                        "File"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--vcf"
                    },
                    "doc": "Input variant file in vcf-like format(the first 5 columns are used). --maf or --vcf need to be specified at least once. But --maf and --vcf are mutually exclusive"
                },
                {
                    "id": "#getbasecountsmultisample_1.2.5.cwl/getbasecountsmultisample_1_2_5/generic_counting",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--generic_counting"
                    },
                    "doc": "Use the newly implemented generic counting algorithm. Works better for complex variants. You may get different allele count result from the default counting algorithm"
                }
            ],
            "outputs": [
                {
                    "id": "#getbasecountsmultisample_1.2.5.cwl/getbasecountsmultisample_1_2_5/fillout",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    if (inputs.output) {\n        return inputs.output\n    } else if (inputs.genotyping_bams.length) {\n        return inputs.maf.basename.replace('.maf', '_fillout.maf')\n    } else {\n        return inputs.genotyping_bams.basename.replace('.bam', '_fillout.maf')\n    }\n}"
                    }
                }
            ],
            "label": "getbasecountsmultisample_1.2.5",
            "arguments": [
                {
                    "position": 0,
                    "prefix": "",
                    "shellQuote": false,
                    "valueFrom": "$('--bam_fof bam_fof.tsv')\n"
                },
                {
                    "position": 0,
                    "prefix": "--thread",
                    "valueFrom": "$(runtime.cores)"
                }
            ],
            "requirements": [
                {
                    "class": "ShellCommandRequirement"
                },
                {
                    "class": "ResourceRequirement",
                    "ramMin": 16000,
                    "coresMin": 2
                },
                {
                    "class": "DockerRequirement",
                    "dockerPull": "ghcr.io/msk-access/gbcms:1.2.5"
                },
                {
                    "class": "InitialWorkDirRequirement",
                    "listing": [
                        {
                            "entryname": "bam_fof.tsv",
                            "entry": "${\n  if (typeof(inputs.genotyping_bams_ids) == 'object') {\n      return inputs.genotyping_bams_ids.map(function(sid, i) {\n        return sid + \"\\t\" +\n          inputs.genotyping_bams[i].path\n      }).join(\"\\n\")\n  } else {\n      return inputs.genotyping_bams_ids + \"\\t\" + inputs.genotyping_bams.path + \"\\n\"\n  }\n}",
                            "writable": false
                        }
                    ]
                },
                {
                    "class": "InlineJavascriptRequirement"
                },
                {
                    "class": "StepInputExpressionRequirement"
                }
            ],
            "http://purl.org/dc/terms/contributor": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:shahr2@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Ronak Shah"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://purl.org/dc/terms/creator": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:johnsoni@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Ian Johnson"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "class": "http://usefulinc.com/ns/doap#Version",
                    "http://usefulinc.com/ns/doap#name": "GetBaseCountsMultiSample",
                    "http://usefulinc.com/ns/doap#revision": "1.2.5"
                }
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#sequence_qc_0.2.3.cwl",
            "baseCommand": [
                "calculate_noise"
            ],
            "inputs": [
                {
                    "id": "#sequence_qc_0.2.3.cwl/calculate_noise_0_2_3/reference",
                    "type": "File",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--ref_fasta"
                    },
                    "secondaryFiles": [
                        "^.fasta.fai"
                    ],
                    "doc": "Path to reference fasta, containing all regions in bed_file"
                },
                {
                    "id": "#sequence_qc_0.2.3.cwl/calculate_noise_0_2_3/bam_file",
                    "type": "File",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--bam_file"
                    },
                    "secondaryFiles": [
                        "^.bai"
                    ],
                    "doc": "Path to BAM file for calculating noise  [required]"
                },
                {
                    "id": "#sequence_qc_0.2.3.cwl/calculate_noise_0_2_3/bed_file",
                    "type": "File",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--bed_file"
                    },
                    "doc": "Path to BED file containing regions over which to calculate noise  [required]"
                },
                {
                    "id": "#sequence_qc_0.2.3.cwl/calculate_noise_0_2_3/sample_id",
                    "type": "string",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--sample_id"
                    },
                    "doc": "Prefix to include in all output file names"
                },
                {
                    "id": "#sequence_qc_0.2.3.cwl/calculate_noise_0_2_3/threshold",
                    "type": [
                        "null",
                        "float"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--threshold"
                    },
                    "doc": "Alt allele frequency past which to ignore positions from the calculation."
                },
                {
                    "id": "#sequence_qc_0.2.3.cwl/calculate_noise_0_2_3/truncate",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--truncate"
                    },
                    "doc": "Whether to exclude trailing bases from reads that only partially overlap the bed file (0 or 1)"
                },
                {
                    "id": "#sequence_qc_0.2.3.cwl/calculate_noise_0_2_3/min_mapq",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--min_mapq"
                    },
                    "doc": "Exclude reads with a lower mapping quality"
                },
                {
                    "id": "#sequence_qc_0.2.3.cwl/calculate_noise_0_2_3/min_basq",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--min_basq"
                    },
                    "doc": "Exclude bases with a lower base quality"
                }
            ],
            "outputs": [
                {
                    "id": "#sequence_qc_0.2.3.cwl/calculate_noise_0_2_3/sequence_qc_pileup",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    return inputs.sample_id + '_pileup.tsv'\n}"
                    }
                },
                {
                    "id": "#sequence_qc_0.2.3.cwl/calculate_noise_0_2_3/sequence_qc_noise_positions",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    return inputs.sample_id + '_noise_positions.tsv'\n}"
                    }
                },
                {
                    "id": "#sequence_qc_0.2.3.cwl/calculate_noise_0_2_3/sequence_qc_noise_by_substitution",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    return inputs.sample_id + '_noise_by_substitution.tsv'\n}"
                    }
                },
                {
                    "id": "#sequence_qc_0.2.3.cwl/calculate_noise_0_2_3/sequence_qc_noise_acgt",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    return inputs.sample_id + '_noise_acgt.tsv'\n}"
                    }
                },
                {
                    "id": "#sequence_qc_0.2.3.cwl/calculate_noise_0_2_3/sequence_qc_noise_n",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    return inputs.sample_id + '_noise_n.tsv'\n}"
                    }
                },
                {
                    "id": "#sequence_qc_0.2.3.cwl/calculate_noise_0_2_3/sequence_qc_noise_del",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    return inputs.sample_id + '_noise_del.tsv'\n}"
                    }
                },
                {
                    "id": "#sequence_qc_0.2.3.cwl/calculate_noise_0_2_3/sequence_qc_figures",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    return inputs.sample_id + '_noise.html'\n}"
                    }
                }
            ],
            "requirements": [
                {
                    "class": "ResourceRequirement",
                    "ramMin": 8000,
                    "coresMin": 1
                },
                {
                    "class": "DockerRequirement",
                    "dockerPull": "ghcr.io/msk-access/sequence_qc:0.2.3"
                },
                {
                    "class": "InlineJavascriptRequirement"
                },
                {
                    "class": "EnvVarRequirement",
                    "envDef": [
                        {
                            "envValue": "en_US.utf-8",
                            "envName": "LANG"
                        },
                        {
                            "envValue": "en_US.utf-8",
                            "envName": "LC_ALL"
                        }
                    ]
                }
            ],
            "http://purl.org/dc/terms/contributor": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:murphyc4@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Charlie Murphy"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://purl.org/dc/terms/creator": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:murphyc4@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Charlie Murphy"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "class": "http://usefulinc.com/ns/doap#Version",
                    "http://usefulinc.com/ns/doap#name": "sesquence_qc",
                    "http://usefulinc.com/ns/doap#revision": "0.2.3"
                }
            ]
        },
        {
            "class": "Workflow",
            "id": "#main",
            "label": "qc_duplex",
            "inputs": [
                {
                    "id": "#main/reference",
                    "type": "File",
                    "doc": "Path to reference fasta, containing all regions in bed_file",
                    "secondaryFiles": [
                        "^.fasta.fai"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 903.75
                },
                {
                    "id": "#main/duplex_bam",
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "duplex_bam",
                    "secondaryFiles": [
                        "^.bai"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 2399.5625
                },
                {
                    "id": "#main/pool_a_target_intervals",
                    "type": "File",
                    "label": "pool_a_target_intervals",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1331.125
                },
                {
                    "id": "#main/pool_a_bait_intervals",
                    "type": "File",
                    "label": "pool_a_bait_intervals",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1437.96875
                },
                {
                    "id": "#main/pool_b_target_intervals",
                    "type": "File",
                    "label": "pool_b_target_intervals",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1117.4375
                },
                {
                    "id": "#main/pool_b_bait_intervals",
                    "type": "File",
                    "label": "pool_b_bait_intervals",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1224.28125
                },
                {
                    "id": "#main/noise_sites_bed",
                    "type": "File",
                    "label": "noise_sites_bed",
                    "doc": "Path to BED file containing regions over which to calculate noise [required]",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1651.65625
                },
                {
                    "id": "#main/sample_name",
                    "type": [
                        "null",
                        "string",
                        {
                            "type": "array",
                            "items": "string"
                        }
                    ],
                    "doc": "Sample name. If not specified, sample name is automatically figured out from the BAM file.",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 690.0625
                },
                {
                    "id": "#main/plot",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "doc": "Also output plots of the data.",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1544.8125
                },
                {
                    "id": "#main/json",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "doc": "Also output data in JSON format.",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1972.1875
                },
                {
                    "id": "#main/sequence_qc_min_basq",
                    "type": [
                        "null",
                        "int"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 476.375
                },
                {
                    "id": "#main/sequence_qc_min_mapq",
                    "type": [
                        "null",
                        "int"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 369.53125
                },
                {
                    "id": "#main/sequence_qc_threshold",
                    "type": [
                        "null",
                        "float"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 262.6875
                },
                {
                    "id": "#main/sequence_qc_truncate",
                    "type": [
                        "null",
                        "int"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 155.84375
                },
                {
                    "id": "#main/hsmetrics_minimum_mapping_quality",
                    "type": [
                        "null",
                        "int"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 2079.03125
                },
                {
                    "id": "#main/hsmetrics_minimum_base_quality",
                    "type": [
                        "null",
                        "int"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 2185.875
                },
                {
                    "id": "#main/hsmetrics_coverage_cap",
                    "type": [
                        "null",
                        "int"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 2292.71875
                },
                {
                    "id": "#main/prefix",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1010.59375
                },
                {
                    "id": "#main/major_threshold",
                    "type": [
                        "null",
                        "float"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1758.5
                },
                {
                    "id": "#main/vcf_file",
                    "type": "File",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 49
                },
                {
                    "id": "#main/sample_sex",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 583.21875
                },
                {
                    "id": "#main/sample_group",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 796.90625
                },
                {
                    "id": "#main/maf",
                    "type": "File",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1865.34375
                }
            ],
            "outputs": [
                {
                    "id": "#main/sequence_qc_noise_positions",
                    "outputSource": [
                        "#main/calculate_noise/sequence_qc_noise_positions"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 106.84375
                },
                {
                    "id": "#main/sequence_qc_noise_n",
                    "outputSource": [
                        "#main/calculate_noise/sequence_qc_noise_n"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 213.6875
                },
                {
                    "id": "#main/sequence_qc_noise_del",
                    "outputSource": [
                        "#main/calculate_noise/sequence_qc_noise_del"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 320.53125
                },
                {
                    "id": "#main/sequence_qc_noise_acgt",
                    "outputSource": [
                        "#main/calculate_noise/sequence_qc_noise_acgt"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 534.21875
                },
                {
                    "id": "#main/sequence_qc_figures",
                    "outputSource": [
                        "#main/calculate_noise/sequence_qc_figures"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 641.0625
                },
                {
                    "id": "#main/gatk_collect_alignment_summary_metrics_txt_pool_b",
                    "outputSource": [
                        "#main/bam_qc_stats_pool_b/gatk_collect_alignment_summary_metrics_txt"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "gatk_collect_alignment_summary_metrics_txt_pool_b",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 1816.34375
                },
                {
                    "id": "#main/gatk_collect_hs_metrics_per_base_coverage_txt_pool_b",
                    "outputSource": [
                        "#main/bam_qc_stats_pool_b/gatk_collect_hs_metrics_per_base_coverage_txt"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "gatk_collect_hs_metrics_per_base_coverage_txt_pool_b",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 1602.65625
                },
                {
                    "id": "#main/gatk_collect_hs_metrics_per_target_coverage_txt_pool_b",
                    "outputSource": [
                        "#main/bam_qc_stats_pool_b/gatk_collect_hs_metrics_per_target_coverage_txt"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "gatk_collect_hs_metrics_per_target_coverage_txt_pool_b",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 1388.96875
                },
                {
                    "id": "#main/gatk_collect_hs_metrics_txt_pool_b",
                    "outputSource": [
                        "#main/bam_qc_stats_pool_b/gatk_collect_hs_metrics_txt"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "gatk_collect_hs_metrics_txt_pool_b",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 1175.28125
                },
                {
                    "id": "#main/gatk_collect_insert_size_metrics_histogram_pdf_pool_b",
                    "outputSource": [
                        "#main/bam_qc_stats_pool_b/gatk_collect_insert_size_metrics_histogram_pdf"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "gatk_collect_insert_size_metrics_histogram_pdf_pool_b",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 961.59375
                },
                {
                    "id": "#main/gatk_collect_insert_size_metrics_txt_pool_b",
                    "outputSource": [
                        "#main/bam_qc_stats_pool_b/gatk_collect_insert_size_metrics_txt"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "gatk_collect_insert_size_metrics_txt_pool_b",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 747.90625
                },
                {
                    "id": "#main/gatk_collect_alignment_summary_metrics_txt_pool_a",
                    "outputSource": [
                        "#main/bam_qc_stats_pool_a/gatk_collect_alignment_summary_metrics_txt"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "gatk_collect_alignment_summary_metrics_txt_pool_a",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 1923.1875
                },
                {
                    "id": "#main/gatk_collect_hs_metrics_per_base_coverage_txt_pool_a",
                    "outputSource": [
                        "#main/bam_qc_stats_pool_a/gatk_collect_hs_metrics_per_base_coverage_txt"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "gatk_collect_hs_metrics_per_base_coverage_txt_pool_a",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 1709.5
                },
                {
                    "id": "#main/gatk_collect_hs_metrics_per_target_coverage_txt_pool_a",
                    "outputSource": [
                        "#main/bam_qc_stats_pool_a/gatk_collect_hs_metrics_per_target_coverage_txt"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "gatk_collect_hs_metrics_per_target_coverage_txt_pool_a",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 1495.8125
                },
                {
                    "id": "#main/gatk_collect_hs_metrics_txt_pool_a",
                    "outputSource": [
                        "#main/bam_qc_stats_pool_a/gatk_collect_hs_metrics_txt"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "gatk_collect_hs_metrics_txt_pool_a",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 1282.125
                },
                {
                    "id": "#main/gatk_collect_insert_size_metrics_histogram_pdf_pool_a",
                    "outputSource": [
                        "#main/bam_qc_stats_pool_a/gatk_collect_insert_size_metrics_histogram_pdf"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "gatk_collect_insert_size_metrics_histogram_pdf_pool_a",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 1068.4375
                },
                {
                    "id": "#main/gatk_collect_insert_size_metrics_txt_pool_a",
                    "outputSource": [
                        "#main/bam_qc_stats_pool_a/gatk_collect_insert_size_metrics_txt"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "gatk_collect_insert_size_metrics_txt_pool_a",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 854.75
                },
                {
                    "id": "#main/sequence_qc_pileup",
                    "outputSource": [
                        "#main/calculate_noise/sequence_qc_pileup"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 0
                },
                {
                    "id": "#main/sequence_qc_noise_by_substitution",
                    "outputSource": [
                        "#main/calculate_noise/sequence_qc_noise_by_substitution"
                    ],
                    "type": "File",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 427.375
                },
                {
                    "id": "#main/biometrics_major_plot",
                    "outputSource": [
                        "#main/biometrics_major_0_2_13/biometrics_major_plot"
                    ],
                    "type": [
                        "null",
                        "File"
                    ],
                    "https://www.sevenbridges.com/x": 1495.5341796875,
                    "https://www.sevenbridges.com/y": 1331.125
                },
                {
                    "id": "#main/biometrics_major_json",
                    "outputSource": [
                        "#main/biometrics_major_0_2_13/biometrics_major_json"
                    ],
                    "type": [
                        "null",
                        "File"
                    ],
                    "https://www.sevenbridges.com/x": 1495.5341796875,
                    "https://www.sevenbridges.com/y": 1437.96875
                },
                {
                    "id": "#main/biometrics_major_csv",
                    "outputSource": [
                        "#main/biometrics_major_0_2_13/biometrics_major_csv"
                    ],
                    "type": "File",
                    "https://www.sevenbridges.com/x": 1495.5341796875,
                    "https://www.sevenbridges.com/y": 1544.8125
                },
                {
                    "id": "#main/biometrics_extract_pickle",
                    "outputSource": [
                        "#main/biometrics_extract_0_2_13/biometrics_extract_pickle"
                    ],
                    "type": "File",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 2448.5625
                },
                {
                    "id": "#main/biometrics_minor_sites_plot",
                    "outputSource": [
                        "#main/biometrics_minor_0_2_13/biometrics_minor_sites_plot"
                    ],
                    "type": [
                        "null",
                        "File"
                    ],
                    "https://www.sevenbridges.com/x": 1495.5341796875,
                    "https://www.sevenbridges.com/y": 903.75
                },
                {
                    "id": "#main/biometrics_minor_plot",
                    "outputSource": [
                        "#main/biometrics_minor_0_2_13/biometrics_minor_plot"
                    ],
                    "type": [
                        "null",
                        "File"
                    ],
                    "https://www.sevenbridges.com/x": 1495.5341796875,
                    "https://www.sevenbridges.com/y": 1010.59375
                },
                {
                    "id": "#main/biometrics_minor_json",
                    "outputSource": [
                        "#main/biometrics_minor_0_2_13/biometrics_minor_json"
                    ],
                    "type": [
                        "null",
                        "File"
                    ],
                    "https://www.sevenbridges.com/x": 1495.5341796875,
                    "https://www.sevenbridges.com/y": 1117.4375
                },
                {
                    "id": "#main/biometrics_minor_csv",
                    "outputSource": [
                        "#main/biometrics_minor_0_2_13/biometrics_minor_csv"
                    ],
                    "type": "File",
                    "https://www.sevenbridges.com/x": 1495.5341796875,
                    "https://www.sevenbridges.com/y": 1224.28125
                },
                {
                    "id": "#main/fillout_maf",
                    "outputSource": [
                        "#main/getbasecountsmultisample_1_2_5/fillout"
                    ],
                    "type": "File",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 2030.03125
                }
            ],
            "steps": [
                {
                    "id": "#main/bam_qc_stats_pool_a",
                    "in": [
                        {
                            "id": "#main/bam_qc_stats_pool_a/input",
                            "source": [
                                "#main/duplex_bam"
                            ]
                        },
                        {
                            "id": "#main/bam_qc_stats_pool_a/target_intervals",
                            "source": "#main/pool_a_target_intervals"
                        },
                        {
                            "id": "#main/bam_qc_stats_pool_a/bait_intervals",
                            "source": "#main/pool_a_bait_intervals"
                        },
                        {
                            "id": "#main/bam_qc_stats_pool_a/reference",
                            "source": "#main/reference"
                        },
                        {
                            "id": "#main/bam_qc_stats_pool_a/hsmetrics_minimum_mapping_quality",
                            "source": "#main/hsmetrics_minimum_mapping_quality"
                        },
                        {
                            "id": "#main/bam_qc_stats_pool_a/hsmetrics_minimum_base_quality",
                            "source": "#main/hsmetrics_minimum_base_quality"
                        },
                        {
                            "id": "#main/bam_qc_stats_pool_a/hsmetrics_coverage_cap",
                            "source": "#main/hsmetrics_coverage_cap"
                        }
                    ],
                    "out": [
                        {
                            "id": "#main/bam_qc_stats_pool_a/gatk_collect_insert_size_metrics_histogram_pdf"
                        },
                        {
                            "id": "#main/bam_qc_stats_pool_a/gatk_collect_insert_size_metrics_txt"
                        },
                        {
                            "id": "#main/bam_qc_stats_pool_a/gatk_collect_hs_metrics_txt"
                        },
                        {
                            "id": "#main/bam_qc_stats_pool_a/gatk_collect_hs_metrics_per_base_coverage_txt"
                        },
                        {
                            "id": "#main/bam_qc_stats_pool_a/gatk_collect_hs_metrics_per_target_coverage_txt"
                        },
                        {
                            "id": "#main/bam_qc_stats_pool_a/gatk_collect_alignment_summary_metrics_txt"
                        }
                    ],
                    "run": "#bam_qc_stats.cwl",
                    "label": "bam_qc_stats_pool_a",
                    "https://www.sevenbridges.com/x": 351.4375,
                    "https://www.sevenbridges.com/y": 1563.96875
                },
                {
                    "id": "#main/calculate_noise",
                    "in": [
                        {
                            "id": "#main/calculate_noise/reference",
                            "source": "#main/reference"
                        },
                        {
                            "id": "#main/calculate_noise/bam_file",
                            "source": "#main/duplex_bam"
                        },
                        {
                            "id": "#main/calculate_noise/bed_file",
                            "source": "#main/noise_sites_bed"
                        },
                        {
                            "id": "#main/calculate_noise/sample_id",
                            "source": "#main/sample_name"
                        },
                        {
                            "id": "#main/calculate_noise/threshold",
                            "source": "#main/sequence_qc_threshold"
                        },
                        {
                            "id": "#main/calculate_noise/truncate",
                            "source": "#main/sequence_qc_truncate"
                        },
                        {
                            "id": "#main/calculate_noise/min_mapq",
                            "source": "#main/sequence_qc_min_mapq"
                        },
                        {
                            "id": "#main/calculate_noise/min_basq",
                            "source": "#main/sequence_qc_min_basq"
                        }
                    ],
                    "out": [
                        {
                            "id": "#main/calculate_noise/sequence_qc_pileup"
                        },
                        {
                            "id": "#main/calculate_noise/sequence_qc_noise_positions"
                        },
                        {
                            "id": "#main/calculate_noise/sequence_qc_noise_by_substitution"
                        },
                        {
                            "id": "#main/calculate_noise/sequence_qc_noise_acgt"
                        },
                        {
                            "id": "#main/calculate_noise/sequence_qc_noise_n"
                        },
                        {
                            "id": "#main/calculate_noise/sequence_qc_noise_del"
                        },
                        {
                            "id": "#main/calculate_noise/sequence_qc_figures"
                        }
                    ],
                    "run": "#sequence_qc_0.2.3.cwl",
                    "https://www.sevenbridges.com/x": 351.4375,
                    "https://www.sevenbridges.com/y": 998.4375
                },
                {
                    "id": "#main/bam_qc_stats_pool_b",
                    "in": [
                        {
                            "id": "#main/bam_qc_stats_pool_b/input",
                            "source": [
                                "#main/duplex_bam"
                            ]
                        },
                        {
                            "id": "#main/bam_qc_stats_pool_b/target_intervals",
                            "source": "#main/pool_b_target_intervals"
                        },
                        {
                            "id": "#main/bam_qc_stats_pool_b/bait_intervals",
                            "source": "#main/pool_b_bait_intervals"
                        },
                        {
                            "id": "#main/bam_qc_stats_pool_b/reference",
                            "source": "#main/reference"
                        },
                        {
                            "id": "#main/bam_qc_stats_pool_b/hsmetrics_minimum_mapping_quality",
                            "source": "#main/hsmetrics_minimum_mapping_quality"
                        },
                        {
                            "id": "#main/bam_qc_stats_pool_b/hsmetrics_minimum_base_quality",
                            "source": "#main/hsmetrics_minimum_base_quality"
                        },
                        {
                            "id": "#main/bam_qc_stats_pool_b/hsmetrics_coverage_cap",
                            "source": "#main/hsmetrics_coverage_cap"
                        }
                    ],
                    "out": [
                        {
                            "id": "#main/bam_qc_stats_pool_b/gatk_collect_insert_size_metrics_histogram_pdf"
                        },
                        {
                            "id": "#main/bam_qc_stats_pool_b/gatk_collect_insert_size_metrics_txt"
                        },
                        {
                            "id": "#main/bam_qc_stats_pool_b/gatk_collect_hs_metrics_txt"
                        },
                        {
                            "id": "#main/bam_qc_stats_pool_b/gatk_collect_hs_metrics_per_base_coverage_txt"
                        },
                        {
                            "id": "#main/bam_qc_stats_pool_b/gatk_collect_hs_metrics_per_target_coverage_txt"
                        },
                        {
                            "id": "#main/bam_qc_stats_pool_b/gatk_collect_alignment_summary_metrics_txt"
                        }
                    ],
                    "run": "#bam_qc_stats.cwl",
                    "label": "bam_qc_stats_pool_b",
                    "https://www.sevenbridges.com/x": 351.4375,
                    "https://www.sevenbridges.com/y": 1373.125
                },
                {
                    "id": "#main/biometrics_major_0_2_13",
                    "in": [
                        {
                            "id": "#main/biometrics_major_0_2_13/input",
                            "linkMerge": "merge_nested",
                            "source": [
                                "#main/biometrics_extract_0_2_13/biometrics_extract_pickle"
                            ]
                        },
                        {
                            "id": "#main/biometrics_major_0_2_13/major_threshold",
                            "source": "#main/major_threshold"
                        },
                        {
                            "id": "#main/biometrics_major_0_2_13/prefix",
                            "source": "#main/prefix"
                        },
                        {
                            "id": "#main/biometrics_major_0_2_13/plot",
                            "source": "#main/plot"
                        },
                        {
                            "id": "#main/biometrics_major_0_2_13/json",
                            "source": "#main/json"
                        }
                    ],
                    "out": [
                        {
                            "id": "#main/biometrics_major_0_2_13/biometrics_major_csv"
                        },
                        {
                            "id": "#main/biometrics_major_0_2_13/biometrics_major_json"
                        },
                        {
                            "id": "#main/biometrics_major_0_2_13/biometrics_major_plot"
                        }
                    ],
                    "run": "#biometrics_major.cwl",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 2313.71875
                },
                {
                    "id": "#main/biometrics_extract_0_2_13",
                    "in": [
                        {
                            "id": "#main/biometrics_extract_0_2_13/sample_bam",
                            "source": "#main/duplex_bam"
                        },
                        {
                            "id": "#main/biometrics_extract_0_2_13/sample_sex",
                            "source": "#main/sample_sex"
                        },
                        {
                            "id": "#main/biometrics_extract_0_2_13/sample_group",
                            "source": "#main/sample_group"
                        },
                        {
                            "id": "#main/biometrics_extract_0_2_13/sample_name",
                            "source": "#main/sample_name"
                        },
                        {
                            "id": "#main/biometrics_extract_0_2_13/fafile",
                            "source": "#main/reference"
                        },
                        {
                            "id": "#main/biometrics_extract_0_2_13/vcf_file",
                            "source": "#main/vcf_file"
                        },
                        {
                            "id": "#main/biometrics_extract_0_2_13/min_coverage",
                            "default": 200
                        }
                    ],
                    "out": [
                        {
                            "id": "#main/biometrics_extract_0_2_13/biometrics_extract_pickle"
                        }
                    ],
                    "run": "#biometrics_extract.cwl",
                    "https://www.sevenbridges.com/x": 351.4375,
                    "https://www.sevenbridges.com/y": 1189.28125
                },
                {
                    "id": "#main/biometrics_minor_0_2_13",
                    "in": [
                        {
                            "id": "#main/biometrics_minor_0_2_13/input",
                            "linkMerge": "merge_nested",
                            "source": [
                                "#main/biometrics_extract_0_2_13/biometrics_extract_pickle"
                            ]
                        },
                        {
                            "id": "#main/biometrics_minor_0_2_13/prefix",
                            "source": "#main/prefix"
                        },
                        {
                            "id": "#main/biometrics_minor_0_2_13/plot",
                            "source": "#main/plot"
                        },
                        {
                            "id": "#main/biometrics_minor_0_2_13/json",
                            "source": "#main/json"
                        }
                    ],
                    "out": [
                        {
                            "id": "#main/biometrics_minor_0_2_13/biometrics_minor_csv"
                        },
                        {
                            "id": "#main/biometrics_minor_0_2_13/biometrics_minor_json"
                        },
                        {
                            "id": "#main/biometrics_minor_0_2_13/biometrics_minor_plot"
                        },
                        {
                            "id": "#main/biometrics_minor_0_2_13/biometrics_minor_sites_plot"
                        }
                    ],
                    "run": "#biometrics_minor.cwl",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 2157.875
                },
                {
                    "id": "#main/getbasecountsmultisample_1_2_5",
                    "in": [
                        {
                            "id": "#main/getbasecountsmultisample_1_2_5/genotyping_bams",
                            "source": [
                                "#main/duplex_bam"
                            ]
                        },
                        {
                            "id": "#main/getbasecountsmultisample_1_2_5/genotyping_bams_ids",
                            "source": [
                                "#main/sample_name"
                            ]
                        },
                        {
                            "id": "#main/getbasecountsmultisample_1_2_5/filter_duplicate",
                            "default": 0
                        },
                        {
                            "id": "#main/getbasecountsmultisample_1_2_5/fragment_count",
                            "default": 1
                        },
                        {
                            "id": "#main/getbasecountsmultisample_1_2_5/maf",
                            "source": "#main/maf"
                        },
                        {
                            "id": "#main/getbasecountsmultisample_1_2_5/output",
                            "source": "#main/sample_name",
                            "valueFrom": "$(self + '_duplex_hotspots_fillout.maf')"
                        },
                        {
                            "id": "#main/getbasecountsmultisample_1_2_5/ref_fasta",
                            "source": "#main/reference"
                        }
                    ],
                    "out": [
                        {
                            "id": "#main/getbasecountsmultisample_1_2_5/fillout"
                        }
                    ],
                    "run": "#getbasecountsmultisample_1.2.5.cwl",
                    "label": "getbasecountsmultisample_1.2.5",
                    "https://www.sevenbridges.com/x": 351.4375,
                    "https://www.sevenbridges.com/y": 814.59375
                }
            ],
            "requirements": [
                {
                    "class": "SubworkflowFeatureRequirement"
                },
                {
                    "class": "InlineJavascriptRequirement"
                }
            ]
        }
    ],
    "cwlVersion": "v1.0",
    "$schemas": [
        "http://schema.org/version/latest/schemaorg-current-http.rdf"
    ],
    "$namespaces": {
        "sbg": "https://www.sevenbridges.com/"
    }
}
