{
    "$graph": [
        {
            "class": "Workflow",
            "id": "#main",
            "label": "base_quality_recalibration",
            "inputs": [
                {
                    "id": "#main/input",
                    "type": "File",
                    "secondaryFiles": [
                        "^.bai"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 533.390625
                },
                {
                    "id": "#main/reference",
                    "type": "File",
                    "secondaryFiles": [
                        ".fai",
                        "^.dict"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 106.703125
                },
                {
                    "id": "#main/read_filter",
                    "type": [
                        "null",
                        {
                            "type": "array",
                            "items": "string"
                        }
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 213.375
                },
                {
                    "id": "#main/known_sites",
                    "type": {
                        "type": "array",
                        "items": "File"
                    },
                    "secondaryFiles": [
                        ".idx"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 426.71875
                },
                {
                    "id": "#main/base_recalibrator_output_file_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 746.734375
                },
                {
                    "id": "#main/add_output_sam_program_record",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 853.4375
                },
                {
                    "id": "#main/disable_read_filter",
                    "type": [
                        "null",
                        {
                            "type": "array",
                            "items": "string"
                        }
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 640.0625
                },
                {
                    "id": "#main/lenient",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 320.046875
                },
                {
                    "id": "#main/apply_bqsr_create_output_bam_index",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "https://www.sevenbridges.com/x": 337.34375,
                    "https://www.sevenbridges.com/y": 533.453125
                },
                {
                    "id": "#main/apply_bqsr_output_file_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 337.34375,
                    "https://www.sevenbridges.com/y": 426.71875
                },
                {
                    "id": "#main/temporary_directory",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 0
                }
            ],
            "steps": [
                {
                    "id": "#main/gatk_base_recalibrator_4_1_8_1",
                    "in": [
                        {
                            "id": "#main/gatk_base_recalibrator_4_1_8_1/input",
                            "source": "#main/input"
                        },
                        {
                            "id": "#main/gatk_base_recalibrator_4_1_8_1/known_sites",
                            "source": [
                                "#main/known_sites"
                            ]
                        },
                        {
                            "id": "#main/gatk_base_recalibrator_4_1_8_1/reference",
                            "source": "#main/reference"
                        },
                        {
                            "id": "#main/gatk_base_recalibrator_4_1_8_1/output_file_name",
                            "source": "#main/base_recalibrator_output_file_name"
                        },
                        {
                            "id": "#main/gatk_base_recalibrator_4_1_8_1/add_output_sam_program_record",
                            "source": "#main/add_output_sam_program_record"
                        },
                        {
                            "id": "#main/gatk_base_recalibrator_4_1_8_1/disable_read_filter",
                            "source": [
                                "#main/disable_read_filter"
                            ]
                        },
                        {
                            "id": "#main/gatk_base_recalibrator_4_1_8_1/lenient",
                            "source": "#main/lenient"
                        },
                        {
                            "id": "#main/gatk_base_recalibrator_4_1_8_1/read_filter",
                            "source": [
                                "#main/read_filter"
                            ]
                        },
                        {
                            "id": "#main/gatk_base_recalibrator_4_1_8_1/temporary_directory",
                            "source": "#main/temporary_directory"
                        }
                    ],
                    "out": [
                        {
                            "id": "#main/gatk_base_recalibrator_4_1_8_1/gatk_base_recalibrator_output"
                        }
                    ],
                    "run": "#gatk_base_recalibrator_4.1.8.1.cwl",
                    "label": "gatk_base_recalibrator_4.1.8.1",
                    "https://www.sevenbridges.com/x": 337.34375,
                    "https://www.sevenbridges.com/y": 263.8515625
                },
                {
                    "id": "#main/gatk_apply_bqsr_4_1_8_1",
                    "in": [
                        {
                            "id": "#main/gatk_apply_bqsr_4_1_8_1/reference",
                            "source": "#main/reference"
                        },
                        {
                            "id": "#main/gatk_apply_bqsr_4_1_8_1/create_output_bam_index",
                            "source": "#main/apply_bqsr_create_output_bam_index"
                        },
                        {
                            "id": "#main/gatk_apply_bqsr_4_1_8_1/bqsr_recal_file",
                            "source": "#main/gatk_base_recalibrator_4_1_8_1/gatk_base_recalibrator_output"
                        },
                        {
                            "id": "#main/gatk_apply_bqsr_4_1_8_1/input",
                            "source": "#main/input"
                        },
                        {
                            "id": "#main/gatk_apply_bqsr_4_1_8_1/output_file_name",
                            "source": "#main/apply_bqsr_output_file_name"
                        },
                        {
                            "id": "#main/gatk_apply_bqsr_4_1_8_1/disable_read_filter",
                            "source": [
                                "#main/disable_read_filter"
                            ]
                        },
                        {
                            "id": "#main/gatk_apply_bqsr_4_1_8_1/lenient",
                            "source": "#main/lenient"
                        },
                        {
                            "id": "#main/gatk_apply_bqsr_4_1_8_1/read_filter",
                            "source": [
                                "#main/read_filter"
                            ]
                        },
                        {
                            "id": "#main/gatk_apply_bqsr_4_1_8_1/temporary_directory",
                            "source": "#main/temporary_directory"
                        }
                    ],
                    "out": [
                        {
                            "id": "#main/gatk_apply_bqsr_4_1_8_1/gatk_apply_bqsr_bam"
                        }
                    ],
                    "run": "#gatk_apply_bqsr_4.1.8.1.cwl",
                    "label": "gatk_apply_bqsr_4.1.8.1",
                    "https://www.sevenbridges.com/x": 837.3018188476562,
                    "https://www.sevenbridges.com/y": 370.5859375
                }
            ],
            "requirements": [],
            "https://schema.org/author": [
                {
                    "class": "https://schema.org/Person",
                    "https://schema.org/email": "mailto:shahr2@mskcc.org",
                    "https://schema.org/identifier": "https://orcid.org/0000-0001-9042-6213",
                    "https://schema.org/name": "Ronak Shah"
                }
            ],
            "https://schema.org/citation": "",
            "https://schema.org/codeRepository": "https://github.com/msk-access/cwl_subworkflows/base_quality_recalibration",
            "https://schema.org/contributor": [
                {
                    "class": "https://schema.org/Person",
                    "https://schema.org/email": "mailto:shahr2@mskcc.org",
                    "https://schema.org/identifier": "https://orcid.org/0000-0001-9042-6213",
                    "https://schema.org/name": "Ronak Shah"
                }
            ],
            "https://schema.org/dateCreated": "2020-06-09",
            "https://schema.org/license": "https://spdx.org/licenses/Apache-2.0",
            "outputs": [
                {
                    "id": "#main/gatk_apply_bqsr_bam",
                    "outputSource": [
                        "#main/gatk_apply_bqsr_4_1_8_1/gatk_apply_bqsr_bam"
                    ],
                    "type": "File",
                    "secondaryFiles": [
                        "^.bai"
                    ],
                    "https://www.sevenbridges.com/x": 1269.836181640625,
                    "https://www.sevenbridges.com/y": 426.71875
                }
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#gatk_apply_bqsr_4.1.8.1.cwl",
            "baseCommand": [
                "gatk",
                "ApplyBQSR"
            ],
            "inputs": [
                {
                    "id": "#gatk_apply_bqsr_4.1.8.1.cwl/gatk_apply_bqsr_4_1_8_1/reference",
                    "type": "File",
                    "inputBinding": {
                        "position": 4,
                        "prefix": "--reference"
                    },
                    "doc": "Reference sequence",
                    "secondaryFiles": [
                        ".fai",
                        "^.dict"
                    ]
                },
                {
                    "id": "#gatk_apply_bqsr_4.1.8.1.cwl/gatk_apply_bqsr_4_1_8_1/create_output_bam_index",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 6,
                        "prefix": "--create-output-bam-index"
                    }
                },
                {
                    "id": "#gatk_apply_bqsr_4.1.8.1.cwl/gatk_apply_bqsr_4_1_8_1/bqsr_recal_file",
                    "type": "File",
                    "inputBinding": {
                        "position": 4,
                        "prefix": "--bqsr-recal-file"
                    },
                    "doc": "Input recalibration table for BQSR. Only run ApplyBQSR with the covariates table created from the input BAM"
                },
                {
                    "id": "#gatk_apply_bqsr_4.1.8.1.cwl/gatk_apply_bqsr_4_1_8_1/input",
                    "type": "File",
                    "inputBinding": {
                        "position": 4,
                        "prefix": "--input"
                    },
                    "doc": "A BAM file containing input read data",
                    "secondaryFiles": [
                        "^.bai"
                    ]
                },
                {
                    "id": "#gatk_apply_bqsr_4.1.8.1.cwl/gatk_apply_bqsr_4_1_8_1/output_file_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "doc": "Output file name. Not Required"
                },
                {
                    "id": "#gatk_apply_bqsr_4.1.8.1.cwl/gatk_apply_bqsr_4_1_8_1/add_output_sam_program_record",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 6,
                        "prefix": "--add-output-sam-program-record"
                    }
                },
                {
                    "id": "#gatk_apply_bqsr_4.1.8.1.cwl/gatk_apply_bqsr_4_1_8_1/add_output_vcf_command_line",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 6,
                        "prefix": "--add-output-vcf-command-line"
                    }
                },
                {
                    "id": "#gatk_apply_bqsr_4.1.8.1.cwl/gatk_apply_bqsr_4_1_8_1/arguments_file",
                    "type": [
                        "null",
                        "File"
                    ],
                    "inputBinding": {
                        "position": 6,
                        "prefix": "--arguments_file"
                    }
                },
                {
                    "id": "#gatk_apply_bqsr_4.1.8.1.cwl/gatk_apply_bqsr_4_1_8_1/cloud_index_prefetch_buffer",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 6,
                        "prefix": "--cloud-index-prefetch-buffer"
                    }
                },
                {
                    "id": "#gatk_apply_bqsr_4.1.8.1.cwl/gatk_apply_bqsr_4_1_8_1/cloud_prefetch_buffer",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 6,
                        "prefix": "--cloud-prefetch-buffer"
                    }
                },
                {
                    "id": "#gatk_apply_bqsr_4.1.8.1.cwl/gatk_apply_bqsr_4_1_8_1/create_output_bam_md5",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 6,
                        "prefix": "--create-output-bam-md5"
                    }
                },
                {
                    "id": "#gatk_apply_bqsr_4.1.8.1.cwl/gatk_apply_bqsr_4_1_8_1/create_output_variant_index",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 6,
                        "prefix": "--create-output-variant-index"
                    }
                },
                {
                    "id": "#gatk_apply_bqsr_4.1.8.1.cwl/gatk_apply_bqsr_4_1_8_1/create_output_variant_md5",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 6,
                        "prefix": "--create-output-variant-md5"
                    }
                },
                {
                    "id": "#gatk_apply_bqsr_4.1.8.1.cwl/gatk_apply_bqsr_4_1_8_1/disable_bam_index_caching",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 6,
                        "prefix": "--disable-bam-index-caching"
                    }
                },
                {
                    "id": "#gatk_apply_bqsr_4.1.8.1.cwl/gatk_apply_bqsr_4_1_8_1/disable_read_filter",
                    "type": [
                        "null",
                        {
                            "type": "array",
                            "items": "string",
                            "inputBinding": {
                                "prefix": "--disable-read-filter"
                            }
                        }
                    ],
                    "inputBinding": {
                        "position": 6
                    },
                    "doc": "Read filters to be disabled before analysis"
                },
                {
                    "id": "#gatk_apply_bqsr_4.1.8.1.cwl/gatk_apply_bqsr_4_1_8_1/disable_sequence_dictionary_validation",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 6,
                        "prefix": "--disable-sequence-dictionary-validation"
                    }
                },
                {
                    "default": true,
                    "id": "#gatk_apply_bqsr_4.1.8.1.cwl/gatk_apply_bqsr_4_1_8_1/emit_original_quals",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 6,
                        "prefix": "--emit-original-quals"
                    }
                },
                {
                    "id": "#gatk_apply_bqsr_4.1.8.1.cwl/gatk_apply_bqsr_4_1_8_1/exclude_intervals",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 6,
                        "prefix": "--exclude-intervals"
                    }
                },
                {
                    "id": "#gatk_apply_bqsr_4.1.8.1.cwl/gatk_apply_bqsr_4_1_8_1/gatk_config_file",
                    "type": [
                        "null",
                        "File"
                    ],
                    "inputBinding": {
                        "position": 6,
                        "prefix": "--gatk-config-file"
                    }
                },
                {
                    "id": "#gatk_apply_bqsr_4.1.8.1.cwl/gatk_apply_bqsr_4_1_8_1/gcs_max_retries",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 6,
                        "prefix": "--gcs-max-retries"
                    }
                },
                {
                    "id": "#gatk_apply_bqsr_4.1.8.1.cwl/gatk_apply_bqsr_4_1_8_1/gcs_project_for_requester_pays",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 6,
                        "prefix": "--gcs-project-for-requester-pays"
                    }
                },
                {
                    "id": "#gatk_apply_bqsr_4.1.8.1.cwl/gatk_apply_bqsr_4_1_8_1/global_qscore_prior",
                    "type": [
                        "null",
                        "float"
                    ],
                    "inputBinding": {
                        "position": 6,
                        "prefix": "--global-qscore-prior"
                    }
                },
                {
                    "id": "#gatk_apply_bqsr_4.1.8.1.cwl/gatk_apply_bqsr_4_1_8_1/interval_exclusion_padding",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 6,
                        "prefix": "--interval-exclusion-padding"
                    }
                },
                {
                    "id": "#gatk_apply_bqsr_4.1.8.1.cwl/gatk_apply_bqsr_4_1_8_1/interval_merging_rule",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 6,
                        "prefix": "--interval-merging-rule"
                    }
                },
                {
                    "id": "#gatk_apply_bqsr_4.1.8.1.cwl/gatk_apply_bqsr_4_1_8_1/interval_padding",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 6,
                        "prefix": "--interval-padding"
                    }
                },
                {
                    "id": "#gatk_apply_bqsr_4.1.8.1.cwl/gatk_apply_bqsr_4_1_8_1/interval_set_rule",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 6,
                        "prefix": "--interval-set-rule"
                    }
                },
                {
                    "id": "#gatk_apply_bqsr_4.1.8.1.cwl/gatk_apply_bqsr_4_1_8_1/intervals",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 6,
                        "prefix": "--intervals"
                    }
                },
                {
                    "id": "#gatk_apply_bqsr_4.1.8.1.cwl/gatk_apply_bqsr_4_1_8_1/lenient",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 6,
                        "prefix": "--lenient"
                    }
                },
                {
                    "id": "#gatk_apply_bqsr_4.1.8.1.cwl/gatk_apply_bqsr_4_1_8_1/preserve_qscores_less_than",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 6,
                        "prefix": "--preserve-qscores-less-than"
                    }
                },
                {
                    "id": "#gatk_apply_bqsr_4.1.8.1.cwl/gatk_apply_bqsr_4_1_8_1/quantize_quals",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 6,
                        "prefix": "--quantize-quals"
                    }
                },
                {
                    "id": "#gatk_apply_bqsr_4.1.8.1.cwl/gatk_apply_bqsr_4_1_8_1/quiet",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 6,
                        "prefix": "--QUIET"
                    }
                },
                {
                    "id": "#gatk_apply_bqsr_4.1.8.1.cwl/gatk_apply_bqsr_4_1_8_1/read_filter",
                    "type": [
                        "null",
                        {
                            "type": "array",
                            "items": "string",
                            "inputBinding": {
                                "prefix": "--read-filter"
                            }
                        }
                    ],
                    "inputBinding": {
                        "position": 6
                    }
                },
                {
                    "id": "#gatk_apply_bqsr_4.1.8.1.cwl/gatk_apply_bqsr_4_1_8_1/read_index",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 6,
                        "prefix": "--read-index"
                    }
                },
                {
                    "id": "#gatk_apply_bqsr_4.1.8.1.cwl/gatk_apply_bqsr_4_1_8_1/read_validation_stringency",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 6,
                        "prefix": "--read-validation-stringency"
                    }
                },
                {
                    "id": "#gatk_apply_bqsr_4.1.8.1.cwl/gatk_apply_bqsr_4_1_8_1/seconds_between_progress_updates",
                    "type": [
                        "null",
                        "float"
                    ],
                    "inputBinding": {
                        "position": 6,
                        "prefix": "--seconds-between-progress-updates"
                    }
                },
                {
                    "id": "#gatk_apply_bqsr_4.1.8.1.cwl/gatk_apply_bqsr_4_1_8_1/sequence_dictionary",
                    "type": [
                        "null",
                        "File"
                    ],
                    "inputBinding": {
                        "position": 6,
                        "prefix": "--sequence-dictionary"
                    }
                },
                {
                    "id": "#gatk_apply_bqsr_4.1.8.1.cwl/gatk_apply_bqsr_4_1_8_1/sites_only_vcf_output",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 6,
                        "prefix": "--sites-only-vcf-output"
                    }
                },
                {
                    "id": "#gatk_apply_bqsr_4.1.8.1.cwl/gatk_apply_bqsr_4_1_8_1/use_jdk_deflater",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 6,
                        "prefix": "--use-jdk-deflater"
                    }
                },
                {
                    "id": "#gatk_apply_bqsr_4.1.8.1.cwl/gatk_apply_bqsr_4_1_8_1/use_jdk_inflater",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 6,
                        "prefix": "--use-jdk-inflater"
                    }
                },
                {
                    "id": "#gatk_apply_bqsr_4.1.8.1.cwl/gatk_apply_bqsr_4_1_8_1/use_original_qualities",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 6,
                        "prefix": "--use-original-qualities"
                    }
                },
                {
                    "id": "#gatk_apply_bqsr_4.1.8.1.cwl/gatk_apply_bqsr_4_1_8_1/memory_overhead",
                    "type": [
                        "null",
                        "int"
                    ]
                },
                {
                    "id": "#gatk_apply_bqsr_4.1.8.1.cwl/gatk_apply_bqsr_4_1_8_1/memory_per_job",
                    "type": [
                        "null",
                        "int"
                    ]
                },
                {
                    "id": "#gatk_apply_bqsr_4.1.8.1.cwl/gatk_apply_bqsr_4_1_8_1/number_of_threads",
                    "type": [
                        "null",
                        "int"
                    ]
                },
                {
                    "id": "#gatk_apply_bqsr_4.1.8.1.cwl/gatk_apply_bqsr_4_1_8_1/temporary_directory",
                    "type": [
                        "null",
                        "string"
                    ],
                    "doc": "Default value: null. This option may be specified 0 or more times."
                }
            ],
            "outputs": [
                {
                    "id": "#gatk_apply_bqsr_4.1.8.1.cwl/gatk_apply_bqsr_4_1_8_1/gatk_apply_bqsr_bam",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    if(inputs.output_file_name){\n        return inputs.output_file_name\n    } else {\n        return inputs.input.basename.replace(/.bam/, '_bqsr.bam')\n    }\n}"
                    },
                    "secondaryFiles": [
                        "^.bai"
                    ]
                }
            ],
            "label": "gatk_apply_bqsr_4.1.8.1",
            "arguments": [
                {
                    "position": 0,
                    "prefix": "--java-options",
                    "valueFrom": "${\n     if(inputs.memory_per_job && inputs.memory_overhead){\n        if(inputs.memory_per_job % 1000 == 0){\n            return \"-Xmx\" + (inputs.memory_per_job/1000).toString() + \"G\"\n        } else {\n            return \"-Xmx\" + Math.floor((inputs.memory_per_job/1000)).toString() + \"G\"\n        }\n     } else if (inputs.memory_per_job && !inputs.memory_overhead){\n        if(inputs.memory_per_job % 1000 == 0) {\n            return \"-Xmx\" + (inputs.memory_per_job/1000).toString() + \"G\"\n        } else {\n            return \"-Xmx\" + Math.floor((inputs.memory_per_job/1000)).toString() + \"G\"\n        }\n     } else if(!inputs.memory_per_job && inputs.memory_overhead){\n        return \"-Xmx12G\"\n     } else {\n        return \"-Xmx12G\"\n     }\n}"
                },
                {
                    "position": 2,
                    "prefix": "--tmp-dir",
                    "valueFrom": "${\n    if(inputs.temporary_directory)\n        return inputs.temporary_directory;\n      return runtime.tmpdir\n}"
                },
                {
                    "position": 2,
                    "prefix": "--output",
                    "valueFrom": "${\n    if(inputs.output_file_name){\n        return inputs.output_file_name\n    } else {\n        return inputs.input.basename.replace(/.bam/, '_bqsr.bam')\n    }\n}"
                }
            ],
            "requirements": [
                {
                    "class": "ResourceRequirement",
                    "ramMin": 16000,
                    "coresMin": 4
                },
                {
                    "class": "DockerRequirement",
                    "dockerPull": "ghcr.io/msk-access/gatk:4.1.8.1"
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
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:shahr2@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Ronak Shah"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                },
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:sumans@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Shalabh Suman"
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
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:shahr2@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Ronak Shah"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "class": "http://usefulinc.com/ns/doap#Version",
                    "http://usefulinc.com/ns/doap#name": "gatk4",
                    "http://usefulinc.com/ns/doap#revision": "4.1.8.1"
                }
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#gatk_base_recalibrator_4.1.8.1.cwl",
            "baseCommand": [
                "gatk",
                "BaseRecalibrator"
            ],
            "inputs": [
                {
                    "id": "#gatk_base_recalibrator_4.1.8.1.cwl/gatk_base_recalibrator_4_1_8_1/input",
                    "type": "File",
                    "inputBinding": {
                        "position": 3,
                        "prefix": "--input"
                    },
                    "doc": "BAM/SAM file containing reads",
                    "secondaryFiles": [
                        "^.bai"
                    ]
                },
                {
                    "id": "#gatk_base_recalibrator_4.1.8.1.cwl/gatk_base_recalibrator_4_1_8_1/known_sites",
                    "type": {
                        "type": "array",
                        "items": "File",
                        "inputBinding": {
                            "prefix": "--known-sites"
                        }
                    },
                    "inputBinding": {
                        "position": 3
                    },
                    "doc": "One or more databases of known polymorphic sites used to exclude regions around known polymorphisms from analysis",
                    "secondaryFiles": [
                        ".idx"
                    ]
                },
                {
                    "id": "#gatk_base_recalibrator_4.1.8.1.cwl/gatk_base_recalibrator_4_1_8_1/reference",
                    "type": "File",
                    "inputBinding": {
                        "position": 3,
                        "prefix": "--reference"
                    },
                    "doc": "Reference sequence file",
                    "secondaryFiles": [
                        ".fai",
                        "^.dict"
                    ]
                },
                {
                    "id": "#gatk_base_recalibrator_4.1.8.1.cwl/gatk_base_recalibrator_4_1_8_1/output_file_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "doc": "Output file name. Not Required"
                },
                {
                    "id": "#gatk_base_recalibrator_4.1.8.1.cwl/gatk_base_recalibrator_4_1_8_1/add_output_sam_program_record",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--add-output-sam-program-record"
                    }
                },
                {
                    "id": "#gatk_base_recalibrator_4.1.8.1.cwl/gatk_base_recalibrator_4_1_8_1/add_output_vcf_command_line",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--add-output-vcf-command-line"
                    }
                },
                {
                    "id": "#gatk_base_recalibrator_4.1.8.1.cwl/gatk_base_recalibrator_4_1_8_1/arguments_file",
                    "type": [
                        "null",
                        {
                            "type": "array",
                            "items": "File",
                            "inputBinding": {
                                "position": 0,
                                "prefix": "--arguments_file"
                            }
                        }
                    ]
                },
                {
                    "id": "#gatk_base_recalibrator_4.1.8.1.cwl/gatk_base_recalibrator_4_1_8_1/binary_tag_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--binary-tag-name"
                    }
                },
                {
                    "id": "#gatk_base_recalibrator_4.1.8.1.cwl/gatk_base_recalibrator_4_1_8_1/bqsr_baq_gap_open_penalty",
                    "type": [
                        "null",
                        "float"
                    ],
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--bqsr-baq-gap-open-penalty"
                    }
                },
                {
                    "id": "#gatk_base_recalibrator_4.1.8.1.cwl/gatk_base_recalibrator_4_1_8_1/cloud-index-prefetch-buffer",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--cloud-index-prefetch-buffer"
                    }
                },
                {
                    "id": "#gatk_base_recalibrator_4.1.8.1.cwl/gatk_base_recalibrator_4_1_8_1/cloud_prefetch_buffer",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--cloud-prefetch-buffer"
                    }
                },
                {
                    "id": "#gatk_base_recalibrator_4.1.8.1.cwl/gatk_base_recalibrator_4_1_8_1/create_output_bam_index",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--create-output-bam-index"
                    }
                },
                {
                    "id": "#gatk_base_recalibrator_4.1.8.1.cwl/gatk_base_recalibrator_4_1_8_1/create_output_bam_md5",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--create-output-bam-md5"
                    }
                },
                {
                    "id": "#gatk_base_recalibrator_4.1.8.1.cwl/gatk_base_recalibrator_4_1_8_1/create_output_variant_index",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--create-output-variant-index"
                    }
                },
                {
                    "id": "#gatk_base_recalibrator_4.1.8.1.cwl/gatk_base_recalibrator_4_1_8_1/create_output_variant_md5",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--create-output-variant-md5"
                    }
                },
                {
                    "id": "#gatk_base_recalibrator_4.1.8.1.cwl/gatk_base_recalibrator_4_1_8_1/default_base_qualities",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--default-base-qualities"
                    }
                },
                {
                    "id": "#gatk_base_recalibrator_4.1.8.1.cwl/gatk_base_recalibrator_4_1_8_1/deletions_default_quality",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--deletions-default-quality"
                    }
                },
                {
                    "id": "#gatk_base_recalibrator_4.1.8.1.cwl/gatk_base_recalibrator_4_1_8_1/disable_bam_index_caching",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--disable-bam-index-caching"
                    }
                },
                {
                    "id": "#gatk_base_recalibrator_4.1.8.1.cwl/gatk_base_recalibrator_4_1_8_1/disable_read_filter",
                    "type": [
                        "null",
                        {
                            "type": "array",
                            "items": "string",
                            "inputBinding": {
                                "prefix": "--disable-read-filter"
                            }
                        }
                    ],
                    "inputBinding": {
                        "position": 10
                    },
                    "doc": "Read filters to be disabled before analysis"
                },
                {
                    "id": "#gatk_base_recalibrator_4.1.8.1.cwl/gatk_base_recalibrator_4_1_8_1/disable_sequence_dictionary_validation",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--disable-sequence-dictionary-validation"
                    }
                },
                {
                    "id": "#gatk_base_recalibrator_4.1.8.1.cwl/gatk_base_recalibrator_4_1_8_1/exclude_intervals",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--exclude-intervals"
                    }
                },
                {
                    "id": "#gatk_base_recalibrator_4.1.8.1.cwl/gatk_base_recalibrator_4_1_8_1/gatk_config_file",
                    "type": [
                        "null",
                        "File"
                    ],
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--gatk-config-file"
                    }
                },
                {
                    "id": "#gatk_base_recalibrator_4.1.8.1.cwl/gatk_base_recalibrator_4_1_8_1/gcs_max_retries",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--gcs-max-retries"
                    }
                },
                {
                    "id": "#gatk_base_recalibrator_4.1.8.1.cwl/gatk_base_recalibrator_4_1_8_1/gcs_project_for_requester_pays",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--gcs-project-for-requester-pays"
                    }
                },
                {
                    "id": "#gatk_base_recalibrator_4.1.8.1.cwl/gatk_base_recalibrator_4_1_8_1/indels_context_size",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--indels-context-size"
                    }
                },
                {
                    "id": "#gatk_base_recalibrator_4.1.8.1.cwl/gatk_base_recalibrator_4_1_8_1/insertions_default_quality",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--insertions-default-quality"
                    }
                },
                {
                    "id": "#gatk_base_recalibrator_4.1.8.1.cwl/gatk_base_recalibrator_4_1_8_1/interval_exclusion_padding",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--interval-exclusion-padding"
                    }
                },
                {
                    "id": "#gatk_base_recalibrator_4.1.8.1.cwl/gatk_base_recalibrator_4_1_8_1/interval_merging_rule",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--interval-merging-rule"
                    }
                },
                {
                    "id": "#gatk_base_recalibrator_4.1.8.1.cwl/gatk_base_recalibrator_4_1_8_1/interval_padding",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--interval-padding"
                    }
                },
                {
                    "id": "#gatk_base_recalibrator_4.1.8.1.cwl/gatk_base_recalibrator_4_1_8_1/interval_set_rule",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--interval-set-rule"
                    }
                },
                {
                    "id": "#gatk_base_recalibrator_4.1.8.1.cwl/gatk_base_recalibrator_4_1_8_1/intervals",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--intervals"
                    }
                },
                {
                    "id": "#gatk_base_recalibrator_4.1.8.1.cwl/gatk_base_recalibrator_4_1_8_1/lenient",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--lenient"
                    }
                },
                {
                    "id": "#gatk_base_recalibrator_4.1.8.1.cwl/gatk_base_recalibrator_4_1_8_1/low_quality_tail",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--low-quality-tail"
                    }
                },
                {
                    "id": "#gatk_base_recalibrator_4.1.8.1.cwl/gatk_base_recalibrator_4_1_8_1/maximum_cycle_value",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--maximum-cycle-value"
                    }
                },
                {
                    "id": "#gatk_base_recalibrator_4.1.8.1.cwl/gatk_base_recalibrator_4_1_8_1/mismatches_context_size",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--mismatches-context-size"
                    }
                },
                {
                    "id": "#gatk_base_recalibrator_4.1.8.1.cwl/gatk_base_recalibrator_4_1_8_1/mismatches_default_quality",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--mismatches-default-quality"
                    }
                },
                {
                    "id": "#gatk_base_recalibrator_4.1.8.1.cwl/gatk_base_recalibrator_4_1_8_1/preserve_qscores_less_than",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--preserve-qscores-less-than"
                    }
                },
                {
                    "id": "#gatk_base_recalibrator_4.1.8.1.cwl/gatk_base_recalibrator_4_1_8_1/quantizing_levels",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--quantizing-levels"
                    }
                },
                {
                    "id": "#gatk_base_recalibrator_4.1.8.1.cwl/gatk_base_recalibrator_4_1_8_1/QUIET",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--QUIET"
                    }
                },
                {
                    "id": "#gatk_base_recalibrator_4.1.8.1.cwl/gatk_base_recalibrator_4_1_8_1/read_filter",
                    "type": [
                        "null",
                        {
                            "type": "array",
                            "items": "string",
                            "inputBinding": {
                                "prefix": "--read-filter"
                            }
                        }
                    ],
                    "inputBinding": {
                        "position": 10
                    }
                },
                {
                    "id": "#gatk_base_recalibrator_4.1.8.1.cwl/gatk_base_recalibrator_4_1_8_1/read_index",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--read-index"
                    }
                },
                {
                    "id": "#gatk_base_recalibrator_4.1.8.1.cwl/gatk_base_recalibrator_4_1_8_1/seconds_between_progress_updates",
                    "type": [
                        "null",
                        "float"
                    ],
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--seconds-between-progress-updates"
                    }
                },
                {
                    "id": "#gatk_base_recalibrator_4.1.8.1.cwl/gatk_base_recalibrator_4_1_8_1/sequence_dictionary",
                    "type": [
                        "null",
                        "File"
                    ],
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--sequence-dictionary"
                    }
                },
                {
                    "id": "#gatk_base_recalibrator_4.1.8.1.cwl/gatk_base_recalibrator_4_1_8_1/sites_only_vcf_output",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--sites-only-vcf-output"
                    }
                },
                {
                    "id": "#gatk_base_recalibrator_4.1.8.1.cwl/gatk_base_recalibrator_4_1_8_1/use_original_qualities",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--use-original-qualities"
                    }
                },
                {
                    "id": "#gatk_base_recalibrator_4.1.8.1.cwl/gatk_base_recalibrator_4_1_8_1/number_of_threads",
                    "type": [
                        "null",
                        "int"
                    ]
                },
                {
                    "id": "#gatk_base_recalibrator_4.1.8.1.cwl/gatk_base_recalibrator_4_1_8_1/memory_per_job",
                    "type": [
                        "null",
                        "int"
                    ]
                },
                {
                    "id": "#gatk_base_recalibrator_4.1.8.1.cwl/gatk_base_recalibrator_4_1_8_1/memory_overhead",
                    "type": [
                        "null",
                        "int"
                    ]
                },
                {
                    "id": "#gatk_base_recalibrator_4.1.8.1.cwl/gatk_base_recalibrator_4_1_8_1/temporary_directory",
                    "type": [
                        "null",
                        "string"
                    ],
                    "doc": "Default value: null. This option may be specified 0 or more times."
                }
            ],
            "outputs": [
                {
                    "id": "#gatk_base_recalibrator_4.1.8.1.cwl/gatk_base_recalibrator_4_1_8_1/gatk_base_recalibrator_output",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    if(inputs.output_file_name){\n        return inputs.output_file_name\n    } else {\n        return inputs.input.basename.replace(/.bam/, '_bqsr.table')\n    }\n}"
                    }
                }
            ],
            "label": "gatk_base_recalibrator_4.1.8.1",
            "arguments": [
                {
                    "position": 0,
                    "prefix": "--java-options",
                    "valueFrom": "${\n     if(inputs.memory_per_job && inputs.memory_overhead){\n        if(inputs.memory_per_job % 1000 == 0){\n            return \"-Xmx\" + (inputs.memory_per_job/1000).toString() + \"G\"\n        } else {\n            return \"-Xmx\" + Math.floor((inputs.memory_per_job/1000)).toString() + \"G\"\n        }\n     } else if (inputs.memory_per_job && !inputs.memory_overhead){\n        if(inputs.memory_per_job % 1000 == 0) {\n            return \"-Xmx\" + (inputs.memory_per_job/1000).toString() + \"G\"\n        } else {\n            return \"-Xmx\" + Math.floor((inputs.memory_per_job/1000)).toString() + \"G\"\n        }\n     } else if(!inputs.memory_per_job && inputs.memory_overhead){\n        return \"-Xmx12G\"\n     } else {\n        return \"-Xmx12G\"\n     }\n}"
                },
                {
                    "position": 2,
                    "prefix": "--tmp-dir",
                    "valueFrom": "${\n    if(inputs.temporary_directory)\n        return inputs.temporary_directory;\n      return runtime.tmpdir\n}"
                },
                {
                    "position": 2,
                    "prefix": "--output",
                    "valueFrom": "${\n    if(inputs.output_file_name){\n        return inputs.output_file_name\n    } else {\n        return inputs.input.basename.replace(/.bam/, '_bqsr.table')\n    }\n}"
                }
            ],
            "requirements": [
                {
                    "class": "ResourceRequirement",
                    "ramMin": 32000,
                    "coresMin": 8
                },
                {
                    "class": "DockerRequirement",
                    "dockerPull": "ghcr.io/msk-access/gatk:4.1.8.1"
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
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:shahr2@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Ronak Shah"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                },
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:sumans@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Shalabh Suman"
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
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:shahr2@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Ronak Shah"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ]
        }
    ],
    "cwlVersion": "v1.0",
    "$schemas": [
        "http://schema.org/version/latest/schemaorg-current-http.rdf"
    ],
    "$namespaces": {
        "s": "https://schema.org/",
        "sbg": "https://www.sevenbridges.com/"
    }
}