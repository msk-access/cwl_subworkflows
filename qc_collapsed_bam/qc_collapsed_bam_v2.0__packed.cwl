{
    "$graph": [
        {
            "class": "Workflow",
            "id": "#bam_qc_stats.cwl",
            "label": "bam_qc_stats",
            "inputs": [
                {
                    "id": "#bam_qc_stats.cwl/input",
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
                    "id": "#bam_qc_stats.cwl/target_intervals",
                    "type": "File",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 160.3125
                },
                {
                    "id": "#bam_qc_stats.cwl/bait_intervals",
                    "type": "File",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 480.9375
                },
                {
                    "id": "#bam_qc_stats.cwl/reference",
                    "type": "File",
                    "secondaryFiles": [
                        "^.fasta.fai",
                        "^.dict"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 267.1875
                },
                {
                    "id": "#bam_qc_stats.cwl/temporary_directory",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 53.4375
                },
                {
                    "id": "#bam_qc_stats.cwl/hsmetrics_minimum_mapping_quality",
                    "type": [
                        "null",
                        "int"
                    ],
                    "label": "hsmetrics_minimum_mapping_quality",
                    "https://www.sevenbridges.com/x": 1,
                    "https://www.sevenbridges.com/y": 613
                },
                {
                    "id": "#bam_qc_stats.cwl/hsmetrics_minimum_base_quality",
                    "type": [
                        "null",
                        "int"
                    ],
                    "label": "hsmetrics_minimum_base_quality",
                    "https://www.sevenbridges.com/x": 3,
                    "https://www.sevenbridges.com/y": 743
                },
                {
                    "id": "#bam_qc_stats.cwl/hsmetrics_coverage_cap",
                    "type": [
                        "null",
                        "int"
                    ],
                    "label": "hsmetrics_coverage_cap",
                    "https://www.sevenbridges.com/x": 2,
                    "https://www.sevenbridges.com/y": 872
                }
            ],
            "outputs": [
                {
                    "id": "#bam_qc_stats.cwl/gatk_collect_insert_size_metrics_histogram_pdf",
                    "outputSource": [
                        "#bam_qc_stats.cwl/gatk_collect_insert_size_metrics_4_1_8_0/gatk_collect_insert_size_metrics_histogram_pdf"
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
                    "id": "#bam_qc_stats.cwl/gatk_collect_insert_size_metrics_txt",
                    "outputSource": [
                        "#bam_qc_stats.cwl/gatk_collect_insert_size_metrics_4_1_8_0/gatk_collect_insert_size_metrics_txt"
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
                    "id": "#bam_qc_stats.cwl/gatk_collect_hs_metrics_txt",
                    "outputSource": [
                        "#bam_qc_stats.cwl/gatk_collect_hs_metrics_4_1_8_0/gatk_collect_hs_metrics_txt"
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
                    "id": "#bam_qc_stats.cwl/gatk_collect_hs_metrics_per_base_coverage_txt",
                    "outputSource": [
                        "#bam_qc_stats.cwl/gatk_collect_hs_metrics_4_1_8_0/gatk_collect_hs_metrics_per_base_coverage_txt"
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
                    "id": "#bam_qc_stats.cwl/gatk_collect_hs_metrics_per_target_coverage_txt",
                    "outputSource": [
                        "#bam_qc_stats.cwl/gatk_collect_hs_metrics_4_1_8_0/gatk_collect_hs_metrics_per_target_coverage_txt"
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
                    "id": "#bam_qc_stats.cwl/gatk_collect_alignment_summary_metrics_txt",
                    "outputSource": [
                        "#bam_qc_stats.cwl/gatk_collect_alignment_summary_metrics_4_1_3_0/gatk_collect_alignment_summary_metrics_txt"
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
            ],
            "steps": [
                {
                    "id": "#bam_qc_stats.cwl/gatk_collect_alignment_summary_metrics_4_1_3_0",
                    "in": [
                        {
                            "id": "#bam_qc_stats.cwl/gatk_collect_alignment_summary_metrics_4_1_3_0/input",
                            "source": "#bam_qc_stats.cwl/input"
                        },
                        {
                            "id": "#bam_qc_stats.cwl/gatk_collect_alignment_summary_metrics_4_1_3_0/reference",
                            "source": "#bam_qc_stats.cwl/reference"
                        },
                        {
                            "id": "#bam_qc_stats.cwl/gatk_collect_alignment_summary_metrics_4_1_3_0/temporary_directory",
                            "source": "#bam_qc_stats.cwl/temporary_directory"
                        }
                    ],
                    "out": [
                        {
                            "id": "#bam_qc_stats.cwl/gatk_collect_alignment_summary_metrics_4_1_3_0/gatk_collect_alignment_summary_metrics_txt"
                        }
                    ],
                    "run": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl",
                    "label": "GATK-CollectAlignmentSummaryMetrics",
                    "https://www.sevenbridges.com/x": 334.2886657714844,
                    "https://www.sevenbridges.com/y": 560.505126953125
                },
                {
                    "id": "#bam_qc_stats.cwl/gatk_collect_hs_metrics_4_1_8_0",
                    "in": [
                        {
                            "id": "#bam_qc_stats.cwl/gatk_collect_hs_metrics_4_1_8_0/input",
                            "source": "#bam_qc_stats.cwl/input"
                        },
                        {
                            "id": "#bam_qc_stats.cwl/gatk_collect_hs_metrics_4_1_8_0/bait_intervals",
                            "source": "#bam_qc_stats.cwl/bait_intervals"
                        },
                        {
                            "id": "#bam_qc_stats.cwl/gatk_collect_hs_metrics_4_1_8_0/target_intervals",
                            "source": "#bam_qc_stats.cwl/target_intervals"
                        },
                        {
                            "id": "#bam_qc_stats.cwl/gatk_collect_hs_metrics_4_1_8_0/coverage_cap",
                            "source": "#bam_qc_stats.cwl/hsmetrics_coverage_cap"
                        },
                        {
                            "id": "#bam_qc_stats.cwl/gatk_collect_hs_metrics_4_1_8_0/minimum_base_quality",
                            "source": "#bam_qc_stats.cwl/hsmetrics_minimum_base_quality"
                        },
                        {
                            "id": "#bam_qc_stats.cwl/gatk_collect_hs_metrics_4_1_8_0/minimum_mapping_quality",
                            "source": "#bam_qc_stats.cwl/hsmetrics_minimum_mapping_quality"
                        },
                        {
                            "id": "#bam_qc_stats.cwl/gatk_collect_hs_metrics_4_1_8_0/reference",
                            "source": "#bam_qc_stats.cwl/reference"
                        },
                        {
                            "id": "#bam_qc_stats.cwl/gatk_collect_hs_metrics_4_1_8_0/temporary_directory",
                            "source": "#bam_qc_stats.cwl/temporary_directory"
                        }
                    ],
                    "out": [
                        {
                            "id": "#bam_qc_stats.cwl/gatk_collect_hs_metrics_4_1_8_0/gatk_collect_hs_metrics_txt"
                        },
                        {
                            "id": "#bam_qc_stats.cwl/gatk_collect_hs_metrics_4_1_8_0/gatk_collect_hs_metrics_per_base_coverage_txt"
                        },
                        {
                            "id": "#bam_qc_stats.cwl/gatk_collect_hs_metrics_4_1_8_0/gatk_collect_hs_metrics_per_target_coverage_txt"
                        }
                    ],
                    "run": "#gatk_collect_hs_metrics_4.1.8.0.cwl",
                    "label": "GATK-CollectHsMetrics",
                    "https://www.sevenbridges.com/x": 327.8453674316406,
                    "https://www.sevenbridges.com/y": 372.8453674316406
                },
                {
                    "id": "#bam_qc_stats.cwl/gatk_collect_insert_size_metrics_4_1_8_0",
                    "in": [
                        {
                            "id": "#bam_qc_stats.cwl/gatk_collect_insert_size_metrics_4_1_8_0/input",
                            "source": "#bam_qc_stats.cwl/input"
                        },
                        {
                            "id": "#bam_qc_stats.cwl/gatk_collect_insert_size_metrics_4_1_8_0/histogram_file",
                            "default": "histogram.pdf"
                        },
                        {
                            "id": "#bam_qc_stats.cwl/gatk_collect_insert_size_metrics_4_1_8_0/temporary_directory",
                            "source": "#bam_qc_stats.cwl/temporary_directory"
                        }
                    ],
                    "out": [
                        {
                            "id": "#bam_qc_stats.cwl/gatk_collect_insert_size_metrics_4_1_8_0/gatk_collect_insert_size_metrics_txt"
                        },
                        {
                            "id": "#bam_qc_stats.cwl/gatk_collect_insert_size_metrics_4_1_8_0/gatk_collect_insert_size_metrics_histogram_pdf"
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
            "$namespaces": {
                "sbg": "https://www.sevenbridges.com/"
            }
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
                    "id": "#biometrics_extract.cwl/sample_bam",
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
                    "id": "#biometrics_extract.cwl/sample_sex",
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
                    "id": "#biometrics_extract.cwl/sample_group",
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
                    "id": "#biometrics_extract.cwl/sample_name",
                    "type": "string",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--sample-name"
                    },
                    "doc": "Sample name. If not specified, sample name is automatically figured out from the BAM file."
                },
                {
                    "id": "#biometrics_extract.cwl/fafile",
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
                    "id": "#biometrics_extract.cwl/vcf_file",
                    "type": "File",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--vcf"
                    },
                    "doc": "VCF file containing the SNPs to be queried."
                },
                {
                    "id": "#biometrics_extract.cwl/bed_file",
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
                    "id": "#biometrics_extract.cwl/database",
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
                    "id": "#biometrics_extract.cwl/min_mapping_quality",
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
                    "id": "#biometrics_extract.cwl/min_base_quality",
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
                    "id": "#biometrics_extract.cwl/min_coverage",
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
                    "id": "#biometrics_extract.cwl/min_homozygous_thresh",
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
                    "id": "#biometrics_extract.cwl/default_genotype",
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
                    "id": "#biometrics_extract.cwl/biometrics_extract_pickle",
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
                    "id": "#biometrics_major.cwl/input",
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
                    "id": "#biometrics_major.cwl/database",
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
                    "id": "#biometrics_major.cwl/major_threshold",
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
                    "id": "#biometrics_major.cwl/prefix",
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
                    "id": "#biometrics_major.cwl/plot",
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
                    "id": "#biometrics_major.cwl/json",
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
                    "id": "#biometrics_major.cwl/no_db_comparison",
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
                    "id": "#biometrics_major.cwl/biometrics_major_csv",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    if (inputs.prefix) {\n      return inputs.prefix + '_major_contamination.csv'\n    } else {\n      return 'major_contamination.csv'\n    }\n}"
                    }
                },
                {
                    "id": "#biometrics_major.cwl/biometrics_major_json",
                    "type": [
                        "null",
                        "File"
                    ],
                    "outputBinding": {
                        "glob": "${\n    if (inputs.prefix) {\n      return inputs.prefix + '_major_contamination.json'\n    } else {\n      return 'major_contamination.json'\n    }\n}"
                    }
                },
                {
                    "id": "#biometrics_major.cwl/biometrics_major_plot",
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
                    "id": "#biometrics_minor.cwl/input",
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
                    "id": "#biometrics_minor.cwl/database",
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
                    "id": "#biometrics_minor.cwl/minor_threshold",
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
                    "id": "#biometrics_minor.cwl/prefix",
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
                    "id": "#biometrics_minor.cwl/plot",
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
                    "id": "#biometrics_minor.cwl/json",
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
                    "id": "#biometrics_minor.cwl/no_db_comparison",
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
                    "id": "#biometrics_minor.cwl/biometrics_minor_csv",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    if (inputs.prefix) {\n      return inputs.prefix + '_minor_contamination.csv'\n    } else {\n      return 'minor_contamination.csv'\n    }\n}"
                    }
                },
                {
                    "id": "#biometrics_minor.cwl/biometrics_minor_json",
                    "type": [
                        "null",
                        "File"
                    ],
                    "outputBinding": {
                        "glob": "${\n    if (inputs.prefix) {\n      return inputs.prefix + '_minor_contamination.json'\n    } else {\n      return 'minor_contamination.json'\n    }\n}"
                    }
                },
                {
                    "id": "#biometrics_minor.cwl/biometrics_minor_plot",
                    "type": [
                        "null",
                        "File"
                    ],
                    "outputBinding": {
                        "glob": "${\n  return 'minor_contamination.html'\n}"
                    }
                },
                {
                    "id": "#biometrics_minor.cwl/biometrics_minor_sites_plot",
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
            "id": "#biometrics_sexmismatch.cwl",
            "baseCommand": [
                "biometrics",
                "sexmismatch"
            ],
            "inputs": [
                {
                    "id": "#biometrics_sexmismatch.cwl/input",
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
                    "id": "#biometrics_sexmismatch.cwl/database",
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
                    "default": 50,
                    "id": "#biometrics_sexmismatch.cwl/coverage_threshold",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--coverage-threshold"
                    },
                    "doc": "Samples with Y chromosome above this value will be considered male."
                },
                {
                    "id": "#biometrics_sexmismatch.cwl/prefix",
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
                    "id": "#biometrics_sexmismatch.cwl/json",
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
                    "id": "#biometrics_sexmismatch.cwl/no_db_comparison",
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
                    "id": "#biometrics_sexmismatch.cwl/biometrics_sexmismatch_csv",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    if (inputs.prefix) {\n      return inputs.prefix + '_sex_mismatch.csv'\n    } else {\n      return 'sex_mismatch.csv'\n    }\n}"
                    }
                },
                {
                    "id": "#biometrics_sexmismatch.cwl/biometrics_sexmismatch_json",
                    "type": [
                        "null",
                        "File"
                    ],
                    "outputBinding": {
                        "glob": "${\n    if (inputs.prefix) {\n      return inputs.prefix + '_sex_mismatch.json'\n    } else {\n      return 'sex_mismatch.json'\n    }\n}"
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
            "id": "#fgbio_collect_duplex_seq_metrics_1.2.0.cwl",
            "baseCommand": [
                "fgbio"
            ],
            "inputs": [
                {
                    "id": "#fgbio_collect_duplex_seq_metrics_1.2.0.cwl/memory_per_job",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory per job in megabytes"
                },
                {
                    "id": "#fgbio_collect_duplex_seq_metrics_1.2.0.cwl/memory_overhead",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory overhead per job in megabytes"
                },
                {
                    "id": "#fgbio_collect_duplex_seq_metrics_1.2.0.cwl/number_of_threads",
                    "type": [
                        "null",
                        "int"
                    ]
                },
                {
                    "id": "#fgbio_collect_duplex_seq_metrics_1.2.0.cwl/input",
                    "type": "File",
                    "inputBinding": {
                        "position": 2,
                        "prefix": "--input"
                    },
                    "doc": "Input BAM file generated by GroupReadByUmi."
                },
                {
                    "id": "#fgbio_collect_duplex_seq_metrics_1.2.0.cwl/output_prefix",
                    "type": [
                        "null",
                        "string"
                    ],
                    "doc": "Prefix of output files to write."
                },
                {
                    "id": "#fgbio_collect_duplex_seq_metrics_1.2.0.cwl/intervals",
                    "type": [
                        "null",
                        "File"
                    ],
                    "inputBinding": {
                        "position": 2,
                        "prefix": "--intervals"
                    },
                    "doc": "Optional set of intervals over which to restrict analysis. [Optional]."
                },
                {
                    "id": "#fgbio_collect_duplex_seq_metrics_1.2.0.cwl/description",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 2,
                        "prefix": "--description"
                    },
                    "doc": "Description of data set used to label plots. Defaults to sample/library. [Optional]."
                },
                {
                    "id": "#fgbio_collect_duplex_seq_metrics_1.2.0.cwl/duplex_umi_counts",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 2,
                        "prefix": "--duplex-umi-counts"
                    },
                    "doc": "If true, produce the .duplex_umi_counts.txt file with counts of duplex UMI observations. [Optional]."
                },
                {
                    "id": "#fgbio_collect_duplex_seq_metrics_1.2.0.cwl/min_ab_reads",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 2,
                        "prefix": "--min-ab-reads"
                    },
                    "doc": "Minimum AB reads to call a tag family a 'duplex'. [Optional]."
                },
                {
                    "id": "#fgbio_collect_duplex_seq_metrics_1.2.0.cwl/min_ba_reads",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 2,
                        "prefix": "--min-ba-reads"
                    },
                    "doc": "Minimum BA reads to call a tag family a 'duplex'. [Optional]."
                },
                {
                    "id": "#fgbio_collect_duplex_seq_metrics_1.2.0.cwl/umi_tag",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 2,
                        "prefix": "--umi-tag"
                    },
                    "doc": "The tag containing the raw UMI. [Optional]."
                },
                {
                    "id": "#fgbio_collect_duplex_seq_metrics_1.2.0.cwl/mi_tag",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 2,
                        "prefix": "--mi-tag"
                    },
                    "doc": "The output tag for UMI grouping. [Optional]."
                },
                {
                    "id": "#fgbio_collect_duplex_seq_metrics_1.2.0.cwl/temporary_directory",
                    "type": [
                        "null",
                        "string"
                    ],
                    "doc": "Default value: null."
                },
                {
                    "id": "#fgbio_collect_duplex_seq_metrics_1.2.0.cwl/async_io",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "separate": false,
                        "prefix": "--async-io="
                    },
                    "doc": "'Use asynchronous I/O where possible, e.g. for SAM and BAM files [=true|false].'"
                }
            ],
            "outputs": [
                {
                    "id": "#fgbio_collect_duplex_seq_metrics_1.2.0.cwl/fgbio_collect_duplex_seq_metrics_family_size",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n     if(inputs.output_prefix){\n         return  inputs.output_prefix + '.family_sizes.txt'\n     }\n     else{\n         return inputs.input.basename.replace('.bam','.family_sizes.txt')\n     }\n}"
                    }
                },
                {
                    "id": "#fgbio_collect_duplex_seq_metrics_1.2.0.cwl/fgbio_collect_duplex_seq_metrics_duplex_family_size",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    if(inputs.output_prefix){\n        return  inputs.output_prefix + '.duplex_family_sizes.txt'\n    }\n    else{\n        return inputs.input.basename.replace('.bam','.duplex_family_sizes.txt')\n    }\n}"
                    }
                },
                {
                    "id": "#fgbio_collect_duplex_seq_metrics_1.2.0.cwl/fgbio_collect_duplex_seq_metrics_duplex_yield_metrics",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    if(inputs.output_prefix){\n        return  inputs.output_prefix + '.duplex_yield_metrics.txt'\n    }\n    else{\n        return inputs.input.basename.replace('.bam','.duplex_yield_metrics.txt')\n    }\n}"
                    }
                },
                {
                    "id": "#fgbio_collect_duplex_seq_metrics_1.2.0.cwl/fgbio_collect_duplex_seq_metrics_umi_counts",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    if(inputs.output_prefix){\n        return  inputs.output_prefix + '.umi_counts.txt'\n    }\n    else{\n        return inputs.input.basename.replace('.bam','.umi_counts.txt')\n    }\n}"
                    }
                },
                {
                    "id": "#fgbio_collect_duplex_seq_metrics_1.2.0.cwl/fgbio_collect_duplex_seq_metrics_duplex_qc",
                    "type": [
                        "null",
                        "File"
                    ],
                    "outputBinding": {
                        "glob": "${\n    if(inputs.output_prefix){\n        return  inputs.output_prefix + '.duplex_qc.pdf'\n    }\n    else{\n        return inputs.input.basename.replace('.bam','.duplex_qc.pdf')\n    }\n}"
                    }
                },
                {
                    "id": "#fgbio_collect_duplex_seq_metrics_1.2.0.cwl/fgbio_collect_duplex_seq_metrics_duplex_umi_counts",
                    "type": [
                        "null",
                        "File"
                    ],
                    "outputBinding": {
                        "glob": "${\n    if (inputs.output_prefix) {\n        return  inputs.output_prefix + '.duplex_umi_counts.txt'\n    } else {\n        return inputs.input.basename.replace('.bam','.duplex_umi_counts.txt')\n    }\n}"
                    }
                }
            ],
            "doc": "Collects a suite of metrics to QC duplex sequencing data.\nInputs ------\nThe input to this tool must be a BAM file that is either:\n1. The exact BAM output by the 'GroupReadsByUmi' tool (in the sort-order it was produced in) 2. A BAM file that has MI tags present on all reads (usually set by 'GroupReadsByUmi' and has been sorted with\n   'SortBam' into 'TemplateCoordinate' order.\n\nCalculation of metrics may be restricted to a set of regions using the '--intervals' parameter. This can significantly affect results as off-target reads in duplex sequencing experiments often have very different properties than on-target reads due to the lack of enrichment.\nSeveral metrics are calculated related to the fraction of tag families that have duplex coverage. The definition of \"duplex\" is controlled by the '--min-ab-reads' and '--min-ba-reads' parameters. The default is to treat any tag family with at least one observation of each strand as a duplex, but this could be made more stringent, e.g. by setting '--min-ab-reads=3 --min-ba-reads=3'. If different thresholds are used then '--min-ab-reads' must be the higher value.\nOutputs -------\nThe following output files are produced:\n1. <output>.family_sizes.txt: metrics on the frequency of different types of families of different sizes 2. <output>.duplex_family_sizes.txt: metrics on the frequency of duplex tag families by the number of observations\n   from each strand\n3. <output>.duplex_yield_metrics.txt: summary QC metrics produced using 5%, 10%, 15%...100% of the data 4. <output>.umi_counts.txt: metrics on the frequency of observations of UMIs within reads and tag families 5. <output>.duplex_qc.pdf: a series of plots generated from the preceding metrics files for visualization 6. <output>.duplex_umi_counts.txt: (optional) metrics on the frequency of observations of duplex UMIs within reads\n   and tag families. This file is only produced if the '--duplex-umi-counts' option is used as it requires significantly\n   more memory to track all pairs of UMIs seen when a large number of UMI sequences are present.\n\nWithin the metrics files the prefixes 'CS', 'SS' and 'DS' are used to mean:\n* CS: tag families where membership is defined solely on matching genome coordinates and strand * SS: single-stranded tag families where membership is defined by genome coordinates, strand and UMI; ie. 50/A and\n  50/B are considered different tag families.\n* DS: double-stranded tag families where membership is collapsed across single-stranded tag families from the same\n  double-stranded source molecule; i.e. 50/A and 50/B become one family\n\nRequirements ------------\nFor plots to be generated R must be installed and the ggplot2 package installed with suggested dependencies. Successfully executing the following in R will ensure a working installation:\ninstall.packages(\"ggplot2\", repos=\"http://cran.us.r-project.org\", dependencies=TRUE)",
            "label": "fgbio_collect_duplex_seq_metrics_1.2.0",
            "arguments": [
                {
                    "position": 0,
                    "valueFrom": "${\n  if(inputs.memory_per_job && inputs.memory_overhead) {\n    if(inputs.memory_per_job % 1000 == 0) {\n      return \"-Xmx\" + (inputs.memory_per_job/1000).toString() + \"G\"\n    }\n    else {\n      return \"-Xmx\" + Math.floor((inputs.memory_per_job/1000)).toString() + \"G\"\n    }\n  }\n  else if (inputs.memory_per_job && !inputs.memory_overhead){\n    if(inputs.memory_per_job % 1000 == 0) {\n      return \"-Xmx\" + (inputs.memory_per_job/1000).toString() + \"G\"\n    }\n    else {\n      return \"-Xmx\" + Math.floor((inputs.memory_per_job/1000)).toString() + \"G\"\n    }\n  }\n  else if(!inputs.memory_per_job && inputs.memory_overhead){\n    return \"-Xmx12G\"\n  }\n  else {\n      return \"-Xmx12G\"\n  }\n}"
                },
                {
                    "position": 0,
                    "valueFrom": "-XX:-UseGCOverheadLimit"
                },
                {
                    "position": 1,
                    "valueFrom": "CollectDuplexSeqMetrics"
                },
                {
                    "position": 0,
                    "prefix": "--tmp-dir=",
                    "separate": false,
                    "valueFrom": "${\n    if(inputs.temporary_directory)\n        return inputs.temporary_directory;\n      return runtime.tmpdir\n}"
                },
                {
                    "position": 2,
                    "prefix": "--output",
                    "valueFrom": "${\n    if(inputs.output_prefix){\n        return inputs.output_prefix\n    }\n    else{\n        return inputs.input.basename.replace(/.bam/,'')\n    }\n}"
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
                    "dockerPull": "ghcr.io/msk-access/fgbio:1.2.0"
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
                    "http://usefulinc.com/ns/doap#name": "fgbio CollectDuplexSeqMetrics",
                    "http://usefulinc.com/ns/doap#revision": "1.2.0"
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
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/memory_per_job",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory per job in megabytes"
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/memory_overhead",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory overhead per job in megabytes"
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/number_of_threads",
                    "type": [
                        "null",
                        "int"
                    ]
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/input",
                    "type": "File",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-I"
                    },
                    "doc": "Input file (bam or sam).  Required."
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/output_file_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "doc": "File to write the output to.  Required."
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/reference",
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
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/adaptor_sequence",
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
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/metrics_acciumulation_level",
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
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/expected_pair_orientations",
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
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/is_bisulfite_sequenced",
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
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/max_insert_size",
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
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/validation_stringency",
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
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/assume_sorted",
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
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/stop_after",
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
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/create_index",
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
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/create_md5_file",
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
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/use_jdk_deflater",
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
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/use_jdk_inflater",
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
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/temporary_directory",
                    "type": [
                        "null",
                        "string"
                    ],
                    "doc": "Default value: null. This option may be specified 0 or more times."
                }
            ],
            "outputs": [
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_txt",
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
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/input",
                    "type": "File",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-I"
                    },
                    "doc": "An aligned SAM or BAM file.  Required."
                },
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/bait_intervals",
                    "type": "File",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--BAIT_INTERVALS"
                    },
                    "doc": "An interval list file that contains the locations of the baits used.  This argument must be specified at least once. Required."
                },
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/target_intervals",
                    "type": "File",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--TARGET_INTERVALS"
                    },
                    "doc": "An interval list file that contains the locations of the targets.  This argument must be specified at least once. Required."
                },
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/output_file_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "doc": "The output file to write the metrics to.  Required."
                },
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/per_base_coverage",
                    "type": [
                        "null",
                        "string"
                    ],
                    "doc": "An optional file to output per base coverage information to. The per-base file contains one line per target base and can grow very large. It is not recommended for use with large target sets.  Default value: null."
                },
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/per_target_coverage",
                    "type": [
                        "null",
                        "string"
                    ],
                    "doc": "An optional file to output per target coverage information to.  Default value: null."
                },
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/theoretical_sensitivity_output",
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
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/allele_fraction",
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
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/bait_set_name",
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
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/clip_overlapping_reads",
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
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/coverage_cap",
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
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/include_indels",
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
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/minimum_base_quality",
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
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/minimum_mapping_quality",
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
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/near_distance",
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
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/sample_size",
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
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/reference",
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
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/metrics_acciumulation_level",
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
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/validation_stringency",
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
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/create_index",
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
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/create_md5_file",
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
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/memory_per_job",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory per job in megabytes"
                },
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/memory_overhead",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory overhead per job in megabytes"
                },
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/number_of_threads",
                    "type": [
                        "null",
                        "int"
                    ]
                },
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/temporary_directory",
                    "type": [
                        "null",
                        "string"
                    ],
                    "doc": "Default value: null. This option may be specified 0 or more times."
                }
            ],
            "outputs": [
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/gatk_collect_hs_metrics_txt",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    if(inputs.output_file_name){\n        return inputs.output_file_name\n    } else {\n        return inputs.input.basename.replace(/.bam/, '_hs_metrics.txt')\n    }\n}"
                    }
                },
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/gatk_collect_hs_metrics_per_base_coverage_txt",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    if(inputs.per_base_coverage){\n        return inputs.per_base_coverage\n    } else {\n        return inputs.input.basename.replace(/.bam/, '_per_base_coverage.txt')\n    }\n}"
                    }
                },
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/gatk_collect_hs_metrics_per_target_coverage_txt",
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
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/memory_per_job",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory per job in megabytes"
                },
                {
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/memory_overhead",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory overhead per job in megabytes"
                },
                {
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/number_of_threads",
                    "type": [
                        "null",
                        "int"
                    ]
                },
                {
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/input",
                    "type": "File",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-I"
                    },
                    "doc": "Input file (bam or sam).  Required."
                },
                {
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/output_file_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "doc": "File to write the output to.  Required."
                },
                {
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/histogram_file",
                    "type": [
                        "null",
                        "string"
                    ],
                    "doc": "File to write insert size Histogram chart to.  Required."
                },
                {
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/deviations",
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
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/histogram_width",
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
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/minimum_pct",
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
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/metrics_acciumulation_level",
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
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/include_duplicates",
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
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/validation_stringency",
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
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/assume_sorted",
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
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/stop_after",
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
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/create_index",
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
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/create_md5_file",
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
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/use_jdk_deflater",
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
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/use_jdk_inflater",
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
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/temporary_directory",
                    "type": [
                        "null",
                        "string"
                    ],
                    "doc": "Default value: null. This option may be specified 0 or more times."
                }
            ],
            "outputs": [
                {
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/gatk_collect_insert_size_metrics_txt",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    if(inputs.output_file_name){\n        return inputs.output_file_name\n    } else {\n        return inputs.input.basename.replace(/.bam/, '_insert_size_metrics.txt')\n    }\n}"
                    }
                },
                {
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/gatk_collect_insert_size_metrics_histogram_pdf",
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
                    "id": "#getbasecountsmultisample_1.2.5.cwl/memory_per_job",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory per job in megabytes"
                },
                {
                    "id": "#getbasecountsmultisample_1.2.5.cwl/memory_overhead",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory overhead per job in megabytes"
                },
                {
                    "id": "#getbasecountsmultisample_1.2.5.cwl/number_of_threads",
                    "type": [
                        "null",
                        "int"
                    ]
                },
                {
                    "id": "#getbasecountsmultisample_1.2.5.cwl/genotyping_bams",
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
                    "id": "#getbasecountsmultisample_1.2.5.cwl/genotyping_bams_ids",
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
                    "id": "#getbasecountsmultisample_1.2.5.cwl/filter_duplicate",
                    "type": "int",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--filter_duplicate"
                    },
                    "doc": "Whether to filter reads that are marked as duplicate. 0=off, 1=on. Default 1"
                },
                {
                    "id": "#getbasecountsmultisample_1.2.5.cwl/fragment_count",
                    "type": "int",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--fragment_count"
                    },
                    "doc": "Whether to output fragment read counts DPF/RDF/ADF. 0=off, 1=on. Default 0"
                },
                {
                    "id": "#getbasecountsmultisample_1.2.5.cwl/maf",
                    "type": "File",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--maf"
                    },
                    "doc": "Input variant file in TCGA maf format. --maf or --vcf need to be specified at least once. But --maf and --vcf are mutually exclusive"
                },
                {
                    "id": "#getbasecountsmultisample_1.2.5.cwl/maq",
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
                    "id": "#getbasecountsmultisample_1.2.5.cwl/omaf",
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
                    "id": "#getbasecountsmultisample_1.2.5.cwl/output",
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
                    "id": "#getbasecountsmultisample_1.2.5.cwl/ref_fasta",
                    "type": "File",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--fasta"
                    },
                    "doc": "Input reference sequence file"
                },
                {
                    "id": "#getbasecountsmultisample_1.2.5.cwl/vcf",
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
                    "id": "#getbasecountsmultisample_1.2.5.cwl/generic_counting",
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
                    "id": "#getbasecountsmultisample_1.2.5.cwl/fillout",
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
            "class": "Workflow",
            "id": "#main",
            "label": "qc_collapsed_bam",
            "inputs": [
                {
                    "id": "#reference",
                    "type": "File",
                    "secondaryFiles": [
                        "^.fasta.fai",
                        "^.dict"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 824.90625
                },
                {
                    "id": "#target_intervals",
                    "type": "File",
                    "label": "target_intervals",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1038.59375
                },
                {
                    "id": "#collapsed_bam",
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "collapsed_bam",
                    "secondaryFiles": [
                        "^.bai"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 2748.09375
                },
                {
                    "id": "#group_reads_by_umi_bam",
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "group_reads_by_umi_bam",
                    "doc": "Input BAM file generated by GroupReadByUmi.",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 2534.40625
                },
                {
                    "id": "#bait_intervals",
                    "type": [
                        "null",
                        "File"
                    ],
                    "label": "bait_intervals",
                    "doc": "Optional set of intervals over which to restrict analysis. [Optional].",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1359.125
                },
                {
                    "id": "#json",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "doc": "Also output data in JSON format.",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 2107.03125
                },
                {
                    "id": "#plot",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "doc": "Also output plots of the data.",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1572.8125
                },
                {
                    "id": "#minor_threshold",
                    "type": [
                        "null",
                        "float"
                    ],
                    "doc": "Minor contamination threshold for bad sample.",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1679.65625
                },
                {
                    "id": "#coverage_threshold",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Samples with Y chromosome above this value will be considered male.",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 2641.25
                },
                {
                    "id": "#hsmetrics_minimum_mapping_quality",
                    "type": [
                        "null",
                        "int"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 2213.875
                },
                {
                    "id": "#hsmetrics_minimum_base_quality",
                    "type": [
                        "null",
                        "int"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 2320.71875
                },
                {
                    "id": "#hsmetrics_coverage_cap",
                    "type": [
                        "null",
                        "int"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 2427.5625
                },
                {
                    "id": "#prefix",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 931.75
                },
                {
                    "id": "#major_threshold",
                    "type": [
                        "null",
                        "float"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1786.5
                },
                {
                    "id": "#json_1",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 2000.1875
                },
                {
                    "id": "#vcf_file",
                    "type": "File",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 397.53125
                },
                {
                    "id": "#sample_name",
                    "type": "string",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 611.21875
                },
                {
                    "id": "#sample_sex",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 504.375
                },
                {
                    "id": "#sample_group",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 718.0625
                },
                {
                    "id": "#maf",
                    "type": "File",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1893.34375
                },
                {
                    "id": "#bed_file",
                    "type": [
                        "null",
                        "File"
                    ],
                    "https://www.sevenbridges.com/x": -5.7914533615112305,
                    "https://www.sevenbridges.com/y": 1468.1177978515625
                }
            ],
            "outputs": [
                {
                    "id": "#fgbio_collect_duplex_seq_metrics_duplex_family_size",
                    "outputSource": [
                        "#fgbio_collect_duplex_seq_metrics_1_2_0/fgbio_collect_duplex_seq_metrics_duplex_family_size"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "fgbio_collect_duplex_seq_metrics_duplex_family_size",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 2564.25
                },
                {
                    "id": "#fgbio_collect_duplex_seq_metrics_duplex_qc",
                    "outputSource": [
                        "#fgbio_collect_duplex_seq_metrics_1_2_0/fgbio_collect_duplex_seq_metrics_duplex_qc"
                    ],
                    "type": [
                        "null",
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "fgbio_collect_duplex_seq_metrics_duplex_qc",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 2243.71875
                },
                {
                    "id": "#fgbio_collect_duplex_seq_metrics_duplex",
                    "outputSource": [
                        "#fgbio_collect_duplex_seq_metrics_1_2_0/fgbio_collect_duplex_seq_metrics_duplex_umi_counts"
                    ],
                    "type": [
                        "null",
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "fgbio_collect_duplex_seq_metrics_duplex",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 2350.5625
                },
                {
                    "id": "#fgbio_collect_duplex_seq_metrics_duplex_yield_metrics",
                    "outputSource": [
                        "#fgbio_collect_duplex_seq_metrics_1_2_0/fgbio_collect_duplex_seq_metrics_duplex_yield_metrics"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "fgbio_collect_duplex_seq_metrics_duplex_yield_metrics",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 1923.1875
                },
                {
                    "id": "#fgbio_collect_duplex_seq_metrics_family_size",
                    "outputSource": [
                        "#fgbio_collect_duplex_seq_metrics_1_2_0/fgbio_collect_duplex_seq_metrics_family_size"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "fgbio_collect_duplex_seq_metrics_family_size",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 1709.5
                },
                {
                    "id": "#fgbio_collect_duplex_seq_metrics_umi_counts",
                    "outputSource": [
                        "#fgbio_collect_duplex_seq_metrics_1_2_0/fgbio_collect_duplex_seq_metrics_umi_counts"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "fgbio_collect_duplex_seq_metrics_umi_counts",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 1495.8125
                },
                {
                    "id": "#biometrics_minor_csv",
                    "outputSource": [
                        "#biometrics_minor/biometrics_minor_csv"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "https://www.sevenbridges.com/x": 1547.1123046875,
                    "https://www.sevenbridges.com/y": 1679.65625
                },
                {
                    "id": "#biometrics_minor_json",
                    "outputSource": [
                        "#biometrics_minor/biometrics_minor_json"
                    ],
                    "type": [
                        "null",
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "https://www.sevenbridges.com/x": 1547.1123046875,
                    "https://www.sevenbridges.com/y": 1572.8125
                },
                {
                    "id": "#biometrics_minor_plot",
                    "outputSource": [
                        "#biometrics_minor/biometrics_minor_plot"
                    ],
                    "type": [
                        "null",
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "https://www.sevenbridges.com/x": 1547.1123046875,
                    "https://www.sevenbridges.com/y": 1465.96875
                },
                {
                    "id": "#biometrics_minor_sites_plot",
                    "outputSource": [
                        "#biometrics_minor/biometrics_minor_sites_plot"
                    ],
                    "type": [
                        "null",
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "https://www.sevenbridges.com/x": 1547.1123046875,
                    "https://www.sevenbridges.com/y": 1359.125
                },
                {
                    "id": "#biometrics_sexmismatch_json",
                    "outputSource": [
                        "#biometrics_sexmismatch/biometrics_sexmismatch_json"
                    ],
                    "type": [
                        "null",
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "https://www.sevenbridges.com/x": 1547.1123046875,
                    "https://www.sevenbridges.com/y": 1145.4375
                },
                {
                    "id": "#biometrics_sexmismatch_csv",
                    "outputSource": [
                        "#biometrics_sexmismatch/biometrics_sexmismatch_csv"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "https://www.sevenbridges.com/x": 1547.1123046875,
                    "https://www.sevenbridges.com/y": 1252.28125
                },
                {
                    "id": "#gatk_collect_insert_size_metrics_txt",
                    "outputSource": [
                        "#bam_qc_stats/gatk_collect_insert_size_metrics_txt"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "gatk_collect_insert_size_metrics_txt",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 106.84375
                },
                {
                    "id": "#gatk_collect_insert_size_metrics_histogram_pdf",
                    "outputSource": [
                        "#bam_qc_stats/gatk_collect_insert_size_metrics_histogram_pdf"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "gatk_collect_insert_size_metrics_histogram_pdf",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 320.53125
                },
                {
                    "id": "#gatk_collect_hs_metrics_txt",
                    "outputSource": [
                        "#bam_qc_stats/gatk_collect_hs_metrics_txt"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "gatk_collect_hs_metrics_txt",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 534.21875
                },
                {
                    "id": "#gatk_collect_hs_metrics_per_target_coverage_txt",
                    "outputSource": [
                        "#bam_qc_stats/gatk_collect_hs_metrics_per_target_coverage_txt"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "gatk_collect_hs_metrics_per_target_coverage_txt",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 747.90625
                },
                {
                    "id": "#gatk_collect_hs_metrics_per_base_coverage_txt",
                    "outputSource": [
                        "#bam_qc_stats/gatk_collect_hs_metrics_per_base_coverage_txt"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "gatk_collect_hs_metrics_per_base_coverage_txt",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 961.59375
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_txt",
                    "outputSource": [
                        "#bam_qc_stats/gatk_collect_alignment_summary_metrics_txt"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "gatk_collect_alignment_summary_metrics_txt",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 1175.28125
                },
                {
                    "id": "#biometrics_major_plot",
                    "outputSource": [
                        "#biometrics_major_0_2_13/biometrics_major_plot"
                    ],
                    "type": [
                        "null",
                        "File"
                    ],
                    "https://www.sevenbridges.com/x": 1547.1123046875,
                    "https://www.sevenbridges.com/y": 1786.5
                },
                {
                    "id": "#biometrics_major_json",
                    "outputSource": [
                        "#biometrics_major_0_2_13/biometrics_major_json"
                    ],
                    "type": [
                        "null",
                        "File"
                    ],
                    "https://www.sevenbridges.com/x": 1547.1123046875,
                    "https://www.sevenbridges.com/y": 1893.34375
                },
                {
                    "id": "#biometrics_major_csv",
                    "outputSource": [
                        "#biometrics_major_0_2_13/biometrics_major_csv"
                    ],
                    "type": "File",
                    "https://www.sevenbridges.com/x": 1547.1123046875,
                    "https://www.sevenbridges.com/y": 2000.1875
                },
                {
                    "id": "#biometrics_extract_pickle",
                    "outputSource": [
                        "#biometrics_extract_0_2_13/biometrics_extract_pickle"
                    ],
                    "type": "File",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 3145.625
                },
                {
                    "id": "#fillout_maf",
                    "outputSource": [
                        "#getbasecountsmultisample_1_2_5/fillout"
                    ],
                    "type": "File",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 1282.125
                }
            ],
            "steps": [
                {
                    "id": "#bam_qc_stats",
                    "in": [
                        {
                            "id": "#bam_qc_stats/input",
                            "source": [
                                "#collapsed_bam"
                            ]
                        },
                        {
                            "id": "#bam_qc_stats/target_intervals",
                            "source": "#target_intervals"
                        },
                        {
                            "id": "#bam_qc_stats/bait_intervals",
                            "source": "#bait_intervals"
                        },
                        {
                            "id": "#bam_qc_stats/reference",
                            "source": "#reference"
                        },
                        {
                            "id": "#bam_qc_stats/hsmetrics_minimum_mapping_quality",
                            "source": "#hsmetrics_minimum_mapping_quality"
                        },
                        {
                            "id": "#bam_qc_stats/hsmetrics_minimum_base_quality",
                            "source": "#hsmetrics_minimum_base_quality"
                        },
                        {
                            "id": "#bam_qc_stats/hsmetrics_coverage_cap",
                            "source": "#hsmetrics_coverage_cap"
                        }
                    ],
                    "out": [
                        {
                            "id": "#bam_qc_stats/gatk_collect_insert_size_metrics_histogram_pdf"
                        },
                        {
                            "id": "#bam_qc_stats/gatk_collect_insert_size_metrics_txt"
                        },
                        {
                            "id": "#bam_qc_stats/gatk_collect_hs_metrics_txt"
                        },
                        {
                            "id": "#bam_qc_stats/gatk_collect_hs_metrics_per_base_coverage_txt"
                        },
                        {
                            "id": "#bam_qc_stats/gatk_collect_hs_metrics_per_target_coverage_txt"
                        },
                        {
                            "id": "#bam_qc_stats/gatk_collect_alignment_summary_metrics_txt"
                        }
                    ],
                    "run": "#bam_qc_stats.cwl",
                    "label": "bam_qc_stats",
                    "https://www.sevenbridges.com/x": 351.4375,
                    "https://www.sevenbridges.com/y": 1986.921875
                },
                {
                    "id": "#fgbio_collect_duplex_seq_metrics_1_2_0",
                    "in": [
                        {
                            "id": "#fgbio_collect_duplex_seq_metrics_1_2_0/input",
                            "source": "#group_reads_by_umi_bam"
                        },
                        {
                            "id": "#fgbio_collect_duplex_seq_metrics_1_2_0/intervals",
                            "source": "#bait_intervals"
                        }
                    ],
                    "out": [
                        {
                            "id": "#fgbio_collect_duplex_seq_metrics_1_2_0/fgbio_collect_duplex_seq_metrics_family_size"
                        },
                        {
                            "id": "#fgbio_collect_duplex_seq_metrics_1_2_0/fgbio_collect_duplex_seq_metrics_duplex_family_size"
                        },
                        {
                            "id": "#fgbio_collect_duplex_seq_metrics_1_2_0/fgbio_collect_duplex_seq_metrics_duplex_yield_metrics"
                        },
                        {
                            "id": "#fgbio_collect_duplex_seq_metrics_1_2_0/fgbio_collect_duplex_seq_metrics_umi_counts"
                        },
                        {
                            "id": "#fgbio_collect_duplex_seq_metrics_1_2_0/fgbio_collect_duplex_seq_metrics_duplex_qc"
                        },
                        {
                            "id": "#fgbio_collect_duplex_seq_metrics_1_2_0/fgbio_collect_duplex_seq_metrics_duplex_umi_counts"
                        }
                    ],
                    "run": "#fgbio_collect_duplex_seq_metrics_1.2.0.cwl",
                    "label": "fgbio_collect_duplex_seq_metrics_1.2.0",
                    "https://www.sevenbridges.com/x": 351.4375,
                    "https://www.sevenbridges.com/y": 1435.390625
                },
                {
                    "id": "#biometrics_minor",
                    "in": [
                        {
                            "id": "#biometrics_minor/input",
                            "linkMerge": "merge_nested",
                            "source": [
                                "#biometrics_extract_0_2_13/biometrics_extract_pickle"
                            ]
                        },
                        {
                            "id": "#biometrics_minor/minor_threshold",
                            "source": "#minor_threshold"
                        },
                        {
                            "id": "#biometrics_minor/prefix",
                            "default": "collapsed",
                            "source": "#prefix"
                        },
                        {
                            "id": "#biometrics_minor/plot",
                            "default": false,
                            "source": "#plot"
                        },
                        {
                            "id": "#biometrics_minor/json",
                            "default": true,
                            "source": "#json"
                        }
                    ],
                    "out": [
                        {
                            "id": "#biometrics_minor/biometrics_minor_csv"
                        },
                        {
                            "id": "#biometrics_minor/biometrics_minor_json"
                        },
                        {
                            "id": "#biometrics_minor/biometrics_minor_plot"
                        },
                        {
                            "id": "#biometrics_minor/biometrics_minor_sites_plot"
                        }
                    ],
                    "run": "#biometrics_minor.cwl",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 2847.9375
                },
                {
                    "id": "#biometrics_sexmismatch",
                    "in": [
                        {
                            "id": "#biometrics_sexmismatch/input",
                            "linkMerge": "merge_flattened",
                            "source": [
                                "#biometrics_extract_0_2_13/biometrics_extract_pickle"
                            ]
                        },
                        {
                            "id": "#biometrics_sexmismatch/coverage_threshold",
                            "source": "#coverage_threshold"
                        },
                        {
                            "id": "#biometrics_sexmismatch/prefix",
                            "default": "collapsed",
                            "source": "#prefix"
                        },
                        {
                            "id": "#biometrics_sexmismatch/json",
                            "source": "#json"
                        }
                    ],
                    "out": [
                        {
                            "id": "#biometrics_sexmismatch/biometrics_sexmismatch_csv"
                        },
                        {
                            "id": "#biometrics_sexmismatch/biometrics_sexmismatch_json"
                        }
                    ],
                    "run": "#biometrics_sexmismatch.cwl",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 2692.09375
                },
                {
                    "id": "#biometrics_major_0_2_13",
                    "in": [
                        {
                            "id": "#biometrics_major_0_2_13/input",
                            "linkMerge": "merge_nested",
                            "source": [
                                "#biometrics_extract_0_2_13/biometrics_extract_pickle"
                            ]
                        },
                        {
                            "id": "#biometrics_major_0_2_13/major_threshold",
                            "source": "#major_threshold"
                        },
                        {
                            "id": "#biometrics_major_0_2_13/prefix",
                            "source": "#prefix"
                        },
                        {
                            "id": "#biometrics_major_0_2_13/plot",
                            "source": "#plot"
                        },
                        {
                            "id": "#biometrics_major_0_2_13/json",
                            "source": "#json_1"
                        }
                    ],
                    "out": [
                        {
                            "id": "#biometrics_major_0_2_13/biometrics_major_csv"
                        },
                        {
                            "id": "#biometrics_major_0_2_13/biometrics_major_json"
                        },
                        {
                            "id": "#biometrics_major_0_2_13/biometrics_major_plot"
                        }
                    ],
                    "run": "#biometrics_major.cwl",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 3010.78125
                },
                {
                    "id": "#biometrics_extract_0_2_13",
                    "in": [
                        {
                            "id": "#biometrics_extract_0_2_13/sample_bam",
                            "source": "#collapsed_bam"
                        },
                        {
                            "id": "#biometrics_extract_0_2_13/sample_sex",
                            "source": "#sample_sex"
                        },
                        {
                            "id": "#biometrics_extract_0_2_13/sample_group",
                            "source": "#sample_group"
                        },
                        {
                            "id": "#biometrics_extract_0_2_13/sample_name",
                            "source": "#sample_name"
                        },
                        {
                            "id": "#biometrics_extract_0_2_13/fafile",
                            "source": "#reference"
                        },
                        {
                            "id": "#biometrics_extract_0_2_13/vcf_file",
                            "source": "#vcf_file"
                        },
                        {
                            "id": "#biometrics_extract_0_2_13/bed_file",
                            "source": "#bed_file"
                        }
                    ],
                    "out": [
                        {
                            "id": "#biometrics_extract_0_2_13/biometrics_extract_pickle"
                        }
                    ],
                    "run": "#biometrics_extract.cwl",
                    "https://www.sevenbridges.com/x": 351.4375,
                    "https://www.sevenbridges.com/y": 1612.234375
                },
                {
                    "id": "#getbasecountsmultisample_1_2_5",
                    "in": [
                        {
                            "id": "#getbasecountsmultisample_1_2_5/genotyping_bams",
                            "source": [
                                "#collapsed_bam"
                            ]
                        },
                        {
                            "id": "#getbasecountsmultisample_1_2_5/genotyping_bams_ids",
                            "source": [
                                "#sample_name"
                            ]
                        },
                        {
                            "id": "#getbasecountsmultisample_1_2_5/filter_duplicate",
                            "default": 0
                        },
                        {
                            "id": "#getbasecountsmultisample_1_2_5/fragment_count",
                            "default": 1
                        },
                        {
                            "id": "#getbasecountsmultisample_1_2_5/maf",
                            "source": "#maf"
                        },
                        {
                            "id": "#getbasecountsmultisample_1_2_5/output",
                            "source": "#sample_name",
                            "valueFrom": "$(self + '_collapsed_hotspots_fillout.maf')"
                        },
                        {
                            "id": "#getbasecountsmultisample_1_2_5/ref_fasta",
                            "source": "#reference"
                        }
                    ],
                    "out": [
                        {
                            "id": "#getbasecountsmultisample_1_2_5/fillout"
                        }
                    ],
                    "run": "#getbasecountsmultisample_1.2.5.cwl",
                    "label": "getbasecountsmultisample_1.2.5",
                    "https://www.sevenbridges.com/x": 351.4375,
                    "https://www.sevenbridges.com/y": 1102.703125
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
    ]
}