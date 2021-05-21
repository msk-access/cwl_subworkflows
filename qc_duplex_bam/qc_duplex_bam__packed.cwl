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
                    "https://www.sevenbridges.com/x": 208.8125,
                    "https://www.sevenbridges.com/y": 402.0625
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
                    "https://www.sevenbridges.com/x": 208.8125,
                    "https://www.sevenbridges.com/y": 253.1875
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
                    "https://www.sevenbridges.com/x": 208.8125,
                    "https://www.sevenbridges.com/y": 111.3125
                }
            ],
            "requirements": [
                {
                    "class": "InlineJavascriptRequirement"
                },
                {
                    "class": "StepInputExpressionRequirement"
                }
            ],
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
                    "type": [
                        {
                            "type": "array",
                            "items": "File",
                            "inputBinding": {
                                "position": 0,
                                "prefix": "--sample-bam"
                            }
                        }
                    ],
                    "secondaryFiles": [
                        "^.bai"
                    ],
                    "doc": "BAM file."
                },
                {
                    "id": "#biometrics_extract.cwl/sample_type",
                    "type": [
                        "null",
                        {
                            "type": "array",
                            "items": "string",
                            "inputBinding": {
                                "position": 0,
                                "prefix": "--sample-type"
                            }
                        }
                    ],
                    "doc": "Sample types: Normal or Tumor."
                },
                {
                    "id": "#biometrics_extract.cwl/sample_sex",
                    "type": [
                        "null",
                        {
                            "type": "array",
                            "items": "string",
                            "inputBinding": {
                                "position": 0,
                                "prefix": "--sample-sex"
                            }
                        }
                    ],
                    "doc": "Expected sample sex (i.e. M or F)."
                },
                {
                    "id": "#biometrics_extract.cwl/sample_group",
                    "type": [
                        "null",
                        {
                            "type": "array",
                            "items": "string",
                            "inputBinding": {
                                "position": 0,
                                "prefix": "--sample-group"
                            }
                        }
                    ],
                    "doc": "The sample group (e.g. the sample patient ID)."
                },
                {
                    "id": "#biometrics_extract.cwl/sample_name",
                    "type": [
                        {
                            "type": "array",
                            "items": "string",
                            "inputBinding": {
                                "position": 0,
                                "prefix": "--sample-name"
                            }
                        }
                    ],
                    "doc": "Sample name. If not specified, sample name is automatically figured out from the BAM file."
                },
                {
                    "id": "#biometrics_extract.cwl/fafile",
                    "type": "File",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--fafile"
                    },
                    "secondaryFiles": [
                        "^.fasta.fai"
                    ],
                    "doc": "Path to reference fasta."
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
                    "id": "#biometrics_extract.cwl/min_mapping_quality",
                    "type": [
                        "null",
                        "int"
                    ],
                    "default": 1,
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--min-mapping-quality"
                    },
                    "doc": "Minimum mapping quality of reads to be used for pileup."
                },
                {
                    "id": "#biometrics_extract.cwl/min_base_quality",
                    "type": [
                        "null",
                        "int"
                    ],
                    "default": 1,
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--min-base-quality"
                    },
                    "doc": "Minimum base quality of reads to be used for pileup."
                },
                {
                    "id": "#biometrics_extract.cwl/min_coverage",
                    "type": [
                        "null",
                        "int"
                    ],
                    "default": 10,
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--min-coverage"
                    },
                    "doc": "Minimum coverage to count a site."
                },
                {
                    "id": "#biometrics_extract.cwl/min_homozygous_thresh",
                    "type": [
                        "null",
                        "float"
                    ],
                    "default": 0.1,
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
                    "type": {
                        "type": "array",
                        "items": "File"
                    },
                    "outputBinding": {
                        "glob": "${\n    return inputs.sample_name.map(val => {\n      if (inputs.database) {\n        return inputs.database + '/' + val + '.pk';\n      } else {\n        return val + '.pk';\n      }\n    });\n}"
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
                    "dockerPull": "ghcr.io/msk-access/biometrics:0.2.9"
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
                    "http://usefulinc.com/ns/doap#revision": "0.2.9"
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
                    "id": "#biometrics_major.cwl/major_threshold",
                    "type": [
                        "null",
                        "float"
                    ],
                    "default": 0.6,
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
                    "dockerPull": "ghcr.io/msk-access/biometrics:0.2.9"
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
                    "http://usefulinc.com/ns/doap#revision": "0.2.9"
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
                    "id": "#biometrics_minor.cwl/minor_threshold",
                    "type": [
                        "null",
                        "float"
                    ],
                    "default": 0.002,
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
                    "dockerPull": "ghcr.io/msk-access/biometrics:0.2.9"
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
                    "http://usefulinc.com/ns/doap#revision": "0.2.9"
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
            "id": "#sequence_qc_0.1.19.cwl",
            "baseCommand": [
                "calculate_noise"
            ],
            "inputs": [
                {
                    "id": "#sequence_qc_0.1.19.cwl/reference",
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
                    "id": "#sequence_qc_0.1.19.cwl/bam_file",
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
                    "id": "#sequence_qc_0.1.19.cwl/bed_file",
                    "type": "File",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--bed_file"
                    },
                    "doc": "Path to BED file containing regions over which to calculate noise  [required]"
                },
                {
                    "id": "#sequence_qc_0.1.19.cwl/sample_id",
                    "type": "string",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--sample_id"
                    },
                    "doc": "Prefix to include in all output file names"
                },
                {
                    "id": "#sequence_qc_0.1.19.cwl/threshold",
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
                    "id": "#sequence_qc_0.1.19.cwl/truncate",
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
                    "id": "#sequence_qc_0.1.19.cwl/min_mapq",
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
                    "id": "#sequence_qc_0.1.19.cwl/min_basq",
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
                    "id": "#sequence_qc_0.1.19.cwl/sequence_qc_pileup",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    return inputs.sample_id + 'pileup.tsv'\n}"
                    }
                },
                {
                    "id": "#sequence_qc_0.1.19.cwl/sequence_qc_noise_positions",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    return inputs.sample_id + 'noise_positions.tsv'\n}"
                    }
                },
                {
                    "id": "#sequence_qc_0.1.19.cwl/sequence_qc_noise_acgt",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    return inputs.sample_id + 'noise_acgt.tsv'\n}"
                    }
                },
                {
                    "id": "#sequence_qc_0.1.19.cwl/sequence_qc_noise_n",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    return inputs.sample_id + 'noise_n.tsv'\n}"
                    }
                },
                {
                    "id": "#sequence_qc_0.1.19.cwl/sequence_qc_noise_del",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    return inputs.sample_id + 'noise_del.tsv'\n}"
                    }
                },
                {
                    "id": "#sequence_qc_0.1.19.cwl/sequence_qc_figures",
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
                    "dockerPull": "ghcr.io/msk-access/sequence_qc:0.1.19"
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
                    "http://usefulinc.com/ns/doap#name": "sesquence_qc",
                    "http://usefulinc.com/ns/doap#revision": "0.1.19"
                }
            ]
        },
        {
            "class": "Workflow",
            "id": "#main",
            "label": "qc_duplex",
            "inputs": [
                {
                    "id": "#reference",
                    "type": "File",
                    "doc": "Path to reference fasta, containing all regions in bed_file",
                    "secondaryFiles": [
                        "^.fasta.fai"
                    ],
                    "https://www.sevenbridges.com/x": -1389.233154296875,
                    "https://www.sevenbridges.com/y": -472.8433837890625
                },
                {
                    "id": "#duplex_bam",
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
                    "https://www.sevenbridges.com/x": -1188.919921875,
                    "https://www.sevenbridges.com/y": 746.09033203125
                },
                {
                    "id": "#pool_a_target_intervals",
                    "type": "File",
                    "label": "pool_a_target_intervals",
                    "https://www.sevenbridges.com/x": -1369.597900390625,
                    "https://www.sevenbridges.com/y": -305.27490234375
                },
                {
                    "id": "#pool_a_bait_intervals",
                    "type": "File",
                    "label": "pool_a_bait_intervals",
                    "https://www.sevenbridges.com/x": -1376.3414306640625,
                    "https://www.sevenbridges.com/y": -157
                },
                {
                    "id": "#pool_b_target_intervals",
                    "type": "File",
                    "label": "pool_b_target_intervals",
                    "https://www.sevenbridges.com/x": -1369.759765625,
                    "https://www.sevenbridges.com/y": -12.322619438171387
                },
                {
                    "id": "#pool_b_bait_intervals",
                    "type": "File",
                    "label": "pool_b_bait_intervals",
                    "https://www.sevenbridges.com/x": -1365.1011962890625,
                    "https://www.sevenbridges.com/y": 130.08450317382812
                },
                {
                    "id": "#noise_sites_bed",
                    "type": "File",
                    "label": "noise_sites_bed",
                    "doc": "Path to BED file containing regions over which to calculate noise [required]",
                    "https://www.sevenbridges.com/x": -1380.5565185546875,
                    "https://www.sevenbridges.com/y": -635.455810546875
                },
                {
                    "id": "#biometrics_vcf_file",
                    "type": "File",
                    "doc": "VCF file containing the SNPs to be queried.",
                    "https://www.sevenbridges.com/x": -1373.5452880859375,
                    "https://www.sevenbridges.com/y": 274.6005859375
                },
                {
                    "id": "#sample_type",
                    "type": [
                        "null",
                        "string",
                        {
                            "type": "array",
                            "items": "string"
                        }
                    ],
                    "doc": "Sample types: Normal or Tumor.",
                    "https://www.sevenbridges.com/x": -1181.2960205078125,
                    "https://www.sevenbridges.com/y": 899.139404296875
                },
                {
                    "id": "#sample_sex",
                    "type": [
                        "null",
                        "string",
                        {
                            "type": "array",
                            "items": "string"
                        }
                    ],
                    "doc": "Expected sample sex (i.e. M or F).",
                    "https://www.sevenbridges.com/x": -1187.8372802734375,
                    "https://www.sevenbridges.com/y": 1063.1763916015625
                },
                {
                    "id": "#sample_name",
                    "type": [
                        "null",
                        "string",
                        {
                            "type": "array",
                            "items": "string"
                        }
                    ],
                    "doc": "Sample name. If not specified, sample name is automatically figured out from the BAM file.",
                    "https://www.sevenbridges.com/x": -1184.7547607421875,
                    "https://www.sevenbridges.com/y": 1249.0025634765625
                },
                {
                    "id": "#sample_group",
                    "type": [
                        "null",
                        "string",
                        {
                            "type": "array",
                            "items": "string"
                        }
                    ],
                    "doc": "The sample group (e.g. the sample patient ID).",
                    "https://www.sevenbridges.com/x": -1183.7547607421875,
                    "https://www.sevenbridges.com/y": 1409.03955078125
                },
                {
                    "id": "#min_mapping_quality",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Minimum mapping quality of reads to be used for pileup.",
                    "https://www.sevenbridges.com/x": -402.0198059082031,
                    "https://www.sevenbridges.com/y": 972.8847045898438
                },
                {
                    "id": "#min_homozygous_thresh",
                    "type": [
                        "null",
                        "float"
                    ],
                    "doc": "Minimum threshold to define homozygous.",
                    "https://www.sevenbridges.com/x": -398.8325500488281,
                    "https://www.sevenbridges.com/y": 1101.96923828125
                },
                {
                    "id": "#min_coverage",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Minimum coverage to count a site.",
                    "https://www.sevenbridges.com/x": -387.6770935058594,
                    "https://www.sevenbridges.com/y": 1226.272705078125
                },
                {
                    "id": "#min_base_quality",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Minimum base quality of reads to be used for pileup.",
                    "https://www.sevenbridges.com/x": -382.89617919921875,
                    "https://www.sevenbridges.com/y": 1347.3890380859375
                },
                {
                    "id": "#plot",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "doc": "Also output plots of the data.",
                    "https://www.sevenbridges.com/x": -376.41387939453125,
                    "https://www.sevenbridges.com/y": 1510.7532958984375
                },
                {
                    "id": "#major_threshold",
                    "type": [
                        "null",
                        "float"
                    ],
                    "doc": "Major contamination threshold for bad sample.",
                    "https://www.sevenbridges.com/x": -373.6401672363281,
                    "https://www.sevenbridges.com/y": 1656.323974609375
                },
                {
                    "id": "#minor_threshold",
                    "type": [
                        "null",
                        "float"
                    ],
                    "doc": "Minor contamination threshold for bad sample.",
                    "https://www.sevenbridges.com/x": -375.43487548828125,
                    "https://www.sevenbridges.com/y": 1803.476806640625
                },
                {
                    "id": "#json",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "doc": "Also output data in JSON format.",
                    "https://www.sevenbridges.com/x": -375.43487548828125,
                    "https://www.sevenbridges.com/y": 1945.246826171875
                },
                {
                    "id": "#sequence_qc_min_basq",
                    "type": [
                        "null",
                        "int"
                    ],
                    "https://www.sevenbridges.com/x": -1374.6207275390625,
                    "https://www.sevenbridges.com/y": -798.4012451171875
                },
                {
                    "id": "#sequence_qc_min_mapq",
                    "type": [
                        "null",
                        "int"
                    ],
                    "https://www.sevenbridges.com/x": -1380.14501953125,
                    "https://www.sevenbridges.com/y": -951.69873046875
                },
                {
                    "id": "#sequence_qc_threshold",
                    "type": [
                        "null",
                        "float"
                    ],
                    "https://www.sevenbridges.com/x": -1384.2880859375,
                    "https://www.sevenbridges.com/y": -1102.2271728515625
                },
                {
                    "id": "#sequence_qc_truncate",
                    "type": [
                        "null",
                        "int"
                    ],
                    "https://www.sevenbridges.com/x": -1382.9071044921875,
                    "https://www.sevenbridges.com/y": -1252.7550048828125
                }
            ],
            "outputs": [
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
                    "https://www.sevenbridges.com/x": 800.5043334960938,
                    "https://www.sevenbridges.com/y": 1475.69189453125
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
                    "https://www.sevenbridges.com/x": 793.9630126953125,
                    "https://www.sevenbridges.com/y": 1179.9027099609375
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
                    "https://www.sevenbridges.com/x": 798.0455932617188,
                    "https://www.sevenbridges.com/y": 1334.6092529296875
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
                    "https://www.sevenbridges.com/x": 788.9630126953125,
                    "https://www.sevenbridges.com/y": 1020.7374877929688
                },
                {
                    "id": "#biometrics_major_csv",
                    "outputSource": [
                        "#biometrics_major/biometrics_major_csv"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "https://www.sevenbridges.com/x": 768.3390502929688,
                    "https://www.sevenbridges.com/y": 872.6092529296875
                },
                {
                    "id": "#biometrics_major_json",
                    "outputSource": [
                        "#biometrics_major/biometrics_major_json"
                    ],
                    "type": [
                        "null",
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "https://www.sevenbridges.com/x": 779.9630126953125,
                    "https://www.sevenbridges.com/y": 721.8201293945312
                },
                {
                    "id": "#biometrics_major_plot",
                    "outputSource": [
                        "#biometrics_major/biometrics_major_plot"
                    ],
                    "type": [
                        "null",
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "https://www.sevenbridges.com/x": 773.4216918945312,
                    "https://www.sevenbridges.com/y": 582.1961669921875
                },
                {
                    "id": "#sequence_qc_noise_positions",
                    "outputSource": [
                        "#calculate_noise_0_1_16/sequence_qc_noise_positions"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "https://www.sevenbridges.com/x": 307.75909423828125,
                    "https://www.sevenbridges.com/y": -1031.4013671875
                },
                {
                    "id": "#sequence_qc_noise_n",
                    "outputSource": [
                        "#calculate_noise_0_1_16/sequence_qc_noise_n"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "https://www.sevenbridges.com/x": 312.423828125,
                    "https://www.sevenbridges.com/y": -913.6166381835938
                },
                {
                    "id": "#sequence_qc_noise_del",
                    "outputSource": [
                        "#calculate_noise_0_1_16/sequence_qc_noise_del"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "https://www.sevenbridges.com/x": 313.5899963378906,
                    "https://www.sevenbridges.com/y": -794.6656494140625
                },
                {
                    "id": "#sequence_qc_noise_acgt",
                    "outputSource": [
                        "#calculate_noise_0_1_16/sequence_qc_noise_acgt"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "https://www.sevenbridges.com/x": 312.423828125,
                    "https://www.sevenbridges.com/y": -669.8837280273438
                },
                {
                    "id": "#sequence_qc_figures",
                    "outputSource": [
                        "#calculate_noise_0_1_16/sequence_qc_figures"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "https://www.sevenbridges.com/x": 311.25762939453125,
                    "https://www.sevenbridges.com/y": -539.2709350585938
                },
                {
                    "id": "#biometrics_extract_pickle",
                    "outputSource": [
                        "#biometrics_extract/biometrics_extract_pickle"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "https://www.sevenbridges.com/x": 804.253662109375,
                    "https://www.sevenbridges.com/y": 1651.220947265625
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_txt_pool_b",
                    "outputSource": [
                        "#bam_qc_stats_pool_b/gatk_collect_alignment_summary_metrics_txt"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "gatk_collect_alignment_summary_metrics_txt_pool_b",
                    "https://www.sevenbridges.com/x": 335.32611083984375,
                    "https://www.sevenbridges.com/y": 490.64373779296875
                },
                {
                    "id": "#gatk_collect_hs_metrics_per_base_coverage_txt_pool_b",
                    "outputSource": [
                        "#bam_qc_stats_pool_b/gatk_collect_hs_metrics_per_base_coverage_txt"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "gatk_collect_hs_metrics_per_base_coverage_txt_pool_b",
                    "https://www.sevenbridges.com/x": 333.6207580566406,
                    "https://www.sevenbridges.com/y": 371.2675476074219
                },
                {
                    "id": "#gatk_collect_hs_metrics_per_target_coverage_txt_pool_b",
                    "outputSource": [
                        "#bam_qc_stats_pool_b/gatk_collect_hs_metrics_per_target_coverage_txt"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "gatk_collect_hs_metrics_per_target_coverage_txt_pool_b",
                    "https://www.sevenbridges.com/x": 330.7894287109375,
                    "https://www.sevenbridges.com/y": 255.84107971191406
                },
                {
                    "id": "#gatk_collect_hs_metrics_txt_pool_b",
                    "outputSource": [
                        "#bam_qc_stats_pool_b/gatk_collect_hs_metrics_txt"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "gatk_collect_hs_metrics_txt_pool_b",
                    "https://www.sevenbridges.com/x": 334.6937255859375,
                    "https://www.sevenbridges.com/y": 138.71177673339844
                },
                {
                    "id": "#gatk_collect_insert_size_metrics_histogram_pdf_pool_b",
                    "outputSource": [
                        "#bam_qc_stats_pool_b/gatk_collect_insert_size_metrics_histogram_pdf"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "gatk_collect_insert_size_metrics_histogram_pdf_pool_b",
                    "https://www.sevenbridges.com/x": 337.2966003417969,
                    "https://www.sevenbridges.com/y": 20.281023025512695
                },
                {
                    "id": "#gatk_collect_insert_size_metrics_txt_pool_b",
                    "outputSource": [
                        "#bam_qc_stats_pool_b/gatk_collect_insert_size_metrics_txt"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "gatk_collect_insert_size_metrics_txt_pool_b",
                    "https://www.sevenbridges.com/x": 329.48797607421875,
                    "https://www.sevenbridges.com/y": -99.45116424560547
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_txt_pool_a",
                    "outputSource": [
                        "#bam_qc_stats_pool_a/gatk_collect_alignment_summary_metrics_txt"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "gatk_collect_alignment_summary_metrics_txt_pool_a",
                    "https://www.sevenbridges.com/x": 732.9334106445312,
                    "https://www.sevenbridges.com/y": 143.91751098632812
                },
                {
                    "id": "#gatk_collect_hs_metrics_per_base_coverage_txt_pool_a",
                    "outputSource": [
                        "#bam_qc_stats_pool_a/gatk_collect_hs_metrics_per_base_coverage_txt"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "gatk_collect_hs_metrics_per_base_coverage_txt_pool_a",
                    "https://www.sevenbridges.com/x": 725.124755859375,
                    "https://www.sevenbridges.com/y": 25.486770629882812
                },
                {
                    "id": "#gatk_collect_hs_metrics_per_target_coverage_txt_pool_a",
                    "outputSource": [
                        "#bam_qc_stats_pool_a/gatk_collect_hs_metrics_per_target_coverage_txt"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "gatk_collect_hs_metrics_per_target_coverage_txt_pool_a",
                    "https://www.sevenbridges.com/x": 710.8089599609375,
                    "https://www.sevenbridges.com/y": -92.94397735595703
                },
                {
                    "id": "#gatk_collect_hs_metrics_txt_pool_a",
                    "outputSource": [
                        "#bam_qc_stats_pool_a/gatk_collect_hs_metrics_txt"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "gatk_collect_hs_metrics_txt_pool_a",
                    "https://www.sevenbridges.com/x": 723.8233032226562,
                    "https://www.sevenbridges.com/y": -208.7718505859375
                },
                {
                    "id": "#gatk_collect_insert_size_metrics_histogram_pdf_pool_a",
                    "outputSource": [
                        "#bam_qc_stats_pool_a/gatk_collect_insert_size_metrics_histogram_pdf"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "gatk_collect_insert_size_metrics_histogram_pdf_pool_a",
                    "https://www.sevenbridges.com/x": 712.1104125976562,
                    "https://www.sevenbridges.com/y": -325.9011535644531
                },
                {
                    "id": "#gatk_collect_insert_size_metrics_txt_pool_a",
                    "outputSource": [
                        "#bam_qc_stats_pool_a/gatk_collect_insert_size_metrics_txt"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "gatk_collect_insert_size_metrics_txt_pool_a",
                    "https://www.sevenbridges.com/x": 712.1104125976562,
                    "https://www.sevenbridges.com/y": -446.9347839355469
                }
            ],
            "steps": [
                {
                    "id": "#bam_qc_stats_pool_a",
                    "in": [
                        {
                            "id": "#bam_qc_stats_pool_a/input",
                            "source": [
                                "#duplex_bam"
                            ]
                        },
                        {
                            "id": "#bam_qc_stats_pool_a/target_intervals",
                            "source": "#pool_a_target_intervals"
                        },
                        {
                            "id": "#bam_qc_stats_pool_a/bait_intervals",
                            "source": "#pool_a_bait_intervals"
                        },
                        {
                            "id": "#bam_qc_stats_pool_a/reference",
                            "source": "#reference"
                        }
                    ],
                    "out": [
                        {
                            "id": "#bam_qc_stats_pool_a/gatk_collect_insert_size_metrics_histogram_pdf"
                        },
                        {
                            "id": "#bam_qc_stats_pool_a/gatk_collect_insert_size_metrics_txt"
                        },
                        {
                            "id": "#bam_qc_stats_pool_a/gatk_collect_hs_metrics_txt"
                        },
                        {
                            "id": "#bam_qc_stats_pool_a/gatk_collect_hs_metrics_per_base_coverage_txt"
                        },
                        {
                            "id": "#bam_qc_stats_pool_a/gatk_collect_hs_metrics_per_target_coverage_txt"
                        },
                        {
                            "id": "#bam_qc_stats_pool_a/gatk_collect_alignment_summary_metrics_txt"
                        }
                    ],
                    "run": "#bam_qc_stats.cwl",
                    "label": "bam_qc_stats_pool_a",
                    "https://www.sevenbridges.com/x": -201.51846313476562,
                    "https://www.sevenbridges.com/y": -271.1477355957031
                },
                {
                    "id": "#calculate_noise_0_1_16",
                    "in": [
                        {
                            "id": "#calculate_noise_0_1_16/reference",
                            "source": "#reference"
                        },
                        {
                            "id": "#calculate_noise_0_1_16/bam_file",
                            "source": "#duplex_bam"
                        },
                        {
                            "id": "#calculate_noise_0_1_16/bed_file",
                            "source": "#noise_sites_bed"
                        },
                        {
                            "id": "#calculate_noise_0_1_16/sample_id",
                            "source": "#sample_name"
                        },
                        {
                            "id": "#calculate_noise_0_1_16/threshold",
                            "source": "#sequence_qc_threshold"
                        },
                        {
                            "id": "#calculate_noise_0_1_16/truncate",
                            "source": "#sequence_qc_truncate"
                        },
                        {
                            "id": "#calculate_noise_0_1_16/min_mapq",
                            "source": "#sequence_qc_min_mapq"
                        },
                        {
                            "id": "#calculate_noise_0_1_16/min_basq",
                            "source": "#sequence_qc_min_basq"
                        }
                    ],
                    "out": [
                        {
                            "id": "#calculate_noise_0_1_16/sequence_qc_pileup"
                        },
                        {
                            "id": "#calculate_noise_0_1_16/sequence_qc_noise_positions"
                        },
                        {
                            "id": "#calculate_noise_0_1_16/sequence_qc_noise_acgt"
                        },
                        {
                            "id": "#calculate_noise_0_1_16/sequence_qc_noise_n"
                        },
                        {
                            "id": "#calculate_noise_0_1_16/sequence_qc_noise_del"
                        },
                        {
                            "id": "#calculate_noise_0_1_16/sequence_qc_figures"
                        }
                    ],
                    "run": "#sequence_qc_0.1.19.cwl",
                    "https://www.sevenbridges.com/x": -205.99472045898438,
                    "https://www.sevenbridges.com/y": -716.7506103515625
                },
                {
                    "id": "#bam_qc_stats_pool_b",
                    "in": [
                        {
                            "id": "#bam_qc_stats_pool_b/input",
                            "source": [
                                "#duplex_bam"
                            ]
                        },
                        {
                            "id": "#bam_qc_stats_pool_b/target_intervals",
                            "source": "#pool_b_target_intervals"
                        },
                        {
                            "id": "#bam_qc_stats_pool_b/bait_intervals",
                            "source": "#pool_b_bait_intervals"
                        },
                        {
                            "id": "#bam_qc_stats_pool_b/reference",
                            "source": "#reference"
                        }
                    ],
                    "out": [
                        {
                            "id": "#bam_qc_stats_pool_b/gatk_collect_insert_size_metrics_histogram_pdf"
                        },
                        {
                            "id": "#bam_qc_stats_pool_b/gatk_collect_insert_size_metrics_txt"
                        },
                        {
                            "id": "#bam_qc_stats_pool_b/gatk_collect_hs_metrics_txt"
                        },
                        {
                            "id": "#bam_qc_stats_pool_b/gatk_collect_hs_metrics_per_base_coverage_txt"
                        },
                        {
                            "id": "#bam_qc_stats_pool_b/gatk_collect_hs_metrics_per_target_coverage_txt"
                        },
                        {
                            "id": "#bam_qc_stats_pool_b/gatk_collect_alignment_summary_metrics_txt"
                        }
                    ],
                    "run": "#bam_qc_stats.cwl",
                    "label": "bam_qc_stats_pool_b",
                    "https://www.sevenbridges.com/x": -200.22406005859375,
                    "https://www.sevenbridges.com/y": 144.43153381347656
                },
                {
                    "id": "#biometrics_extract",
                    "in": [
                        {
                            "id": "#biometrics_extract/sample_bam",
                            "linkMerge": "merge_nested",
                            "source": [
                                "#duplex_bam"
                            ]
                        },
                        {
                            "id": "#biometrics_extract/sample_type",
                            "linkMerge": "merge_nested",
                            "source": [
                                "#sample_type"
                            ]
                        },
                        {
                            "id": "#biometrics_extract/sample_sex",
                            "linkMerge": "merge_nested",
                            "source": [
                                "#sample_sex"
                            ]
                        },
                        {
                            "id": "#biometrics_extract/sample_group",
                            "linkMerge": "merge_nested",
                            "source": [
                                "#sample_group"
                            ]
                        },
                        {
                            "id": "#biometrics_extract/sample_name",
                            "linkMerge": "merge_nested",
                            "source": [
                                "#sample_name"
                            ]
                        },
                        {
                            "id": "#biometrics_extract/fafile",
                            "source": "#reference"
                        },
                        {
                            "id": "#biometrics_extract/vcf_file",
                            "source": "#biometrics_vcf_file"
                        },
                        {
                            "id": "#biometrics_extract/min_mapping_quality",
                            "source": "#min_mapping_quality"
                        },
                        {
                            "id": "#biometrics_extract/min_base_quality",
                            "source": "#min_base_quality"
                        },
                        {
                            "id": "#biometrics_extract/min_coverage",
                            "source": "#min_coverage"
                        },
                        {
                            "id": "#biometrics_extract/min_homozygous_thresh",
                            "source": "#min_homozygous_thresh"
                        }
                    ],
                    "out": [
                        {
                            "id": "#biometrics_extract/biometrics_extract_pickle"
                        }
                    ],
                    "run": "#biometrics_extract.cwl",
                    "https://www.sevenbridges.com/x": -176.97422790527344,
                    "https://www.sevenbridges.com/y": 734.6185302734375
                },
                {
                    "id": "#biometrics_minor",
                    "in": [
                        {
                            "id": "#biometrics_minor/input",
                            "source": [
                                "#biometrics_extract/biometrics_extract_pickle"
                            ]
                        },
                        {
                            "id": "#biometrics_minor/minor_threshold",
                            "source": "#minor_threshold"
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
                    "https://www.sevenbridges.com/x": 464.28485107421875,
                    "https://www.sevenbridges.com/y": 1208.646240234375
                },
                {
                    "id": "#biometrics_major",
                    "in": [
                        {
                            "id": "#biometrics_major/input",
                            "source": [
                                "#biometrics_extract/biometrics_extract_pickle"
                            ]
                        },
                        {
                            "id": "#biometrics_major/major_threshold",
                            "source": "#major_threshold"
                        },
                        {
                            "id": "#biometrics_major/plot",
                            "default": false,
                            "source": "#plot"
                        },
                        {
                            "id": "#biometrics_major/json",
                            "default": true,
                            "source": "#json"
                        }
                    ],
                    "out": [
                        {
                            "id": "#biometrics_major/biometrics_major_csv"
                        },
                        {
                            "id": "#biometrics_major/biometrics_major_json"
                        },
                        {
                            "id": "#biometrics_major/biometrics_major_plot"
                        }
                    ],
                    "run": "#biometrics_major.cwl",
                    "https://www.sevenbridges.com/x": 413.70654296875,
                    "https://www.sevenbridges.com/y": 681.5068969726562
                }
            ],
            "requirements": [
                {
                    "class": "SubworkflowFeatureRequirement"
                }
            ]
        }
    ],
    "cwlVersion": "v1.0",
    "$schemas": [
        "http://schema.org/version/latest/schemaorg-current-http.rdf"
    ]
}