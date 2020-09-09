{
    "$graph": [
        {
            "class": "Workflow",
            "id": "#main",
            "label": "calculate_apply_bqsr.cwl",
            "inputs": [
                {
                    "id": "#known_sites_1",
                    "type": "File",
                    "secondaryFiles": [
                        ".idx"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 214
                },
                {
                    "id": "#input",
                    "type": "File",
                    "secondaryFiles": [
                        "^.bai"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 321
                },
                {
                    "id": "#known_sites_2",
                    "type": [
                        "null",
                        "File"
                    ],
                    "secondaryFiles": [
                        ".idx"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 107
                },
                {
                    "id": "#reference",
                    "type": "File",
                    "secondaryFiles": [
                        ".fai",
                        "^.dict"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 0
                },
                {
                    "id": "#read_filter",
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
                    "https://www.sevenbridges.com/x": -324.8984375,
                    "https://www.sevenbridges.com/y": 74
                }
            ],
            "outputs": [
                {
                    "id": "#bqsr_bam",
                    "outputSource": [
                        "#gatk_apply_bqsr_4_1_2_1/output"
                    ],
                    "type": [
                        "null",
                        "File"
                    ],
                    "secondaryFiles": [
                        "^.bai"
                    ],
                    "https://www.sevenbridges.com/x": 616.9488525390625,
                    "https://www.sevenbridges.com/y": 106.5
                }
            ],
            "steps": [
                {
                    "id": "#gatk_base_recalibrator_4_1_2_1",
                    "in": [
                        {
                            "id": "#gatk_base_recalibrator_4_1_2_1/input",
                            "source": "#input"
                        },
                        {
                            "id": "#gatk_base_recalibrator_4_1_2_1/known_sites_1",
                            "source": "#known_sites_1"
                        },
                        {
                            "id": "#gatk_base_recalibrator_4_1_2_1/reference",
                            "source": "#reference"
                        },
                        {
                            "id": "#gatk_base_recalibrator_4_1_2_1/read_filter",
                            "source": [
                                "#read_filter"
                            ]
                        },
                        {
                            "id": "#gatk_base_recalibrator_4_1_2_1/known_sites_2",
                            "source": "#known_sites_2"
                        }
                    ],
                    "out": [
                        {
                            "id": "#gatk_base_recalibrator_4_1_2_1/output"
                        }
                    ],
                    "run": "#gatk_baserecalibrator_4.1.2.0.cwl",
                    "label": "gatk_base_recalibrator_4.1.2.0",
                    "https://www.sevenbridges.com/x": 167.375,
                    "https://www.sevenbridges.com/y": 139.5
                },
                {
                    "id": "#gatk_apply_bqsr_4_1_2_1",
                    "in": [
                        {
                            "id": "#gatk_apply_bqsr_4_1_2_1/reference",
                            "source": "#reference"
                        },
                        {
                            "id": "#gatk_apply_bqsr_4_1_2_1/bqsr_recal_file",
                            "source": "#gatk_base_recalibrator_4_1_2_1/output"
                        },
                        {
                            "id": "#gatk_apply_bqsr_4_1_2_1/input",
                            "source": "#input"
                        }
                    ],
                    "out": [
                        {
                            "id": "#gatk_apply_bqsr_4_1_2_1/output"
                        }
                    ],
                    "run": "#gatk_ApplyBQSR_4.1.2.0.cwl",
                    "label": "gatk_apply_bqsr_4.1.2.0",
                    "https://www.sevenbridges.com/x": 411.55841064453125,
                    "https://www.sevenbridges.com/y": 146.5
                }
            ],
            "requirements": [],
            "$namespaces": {
                "sbg": "https://www.sevenbridges.com/"
            }
        },
        {
            "class": "CommandLineTool",
            "id": "#gatk_ApplyBQSR_4.1.2.0.cwl",
            "baseCommand": [
                "gatk"
            ],
            "inputs": [
                {
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/reference",
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
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/create_output_bam_index",
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
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/bqsr_recal_file",
                    "type": "File",
                    "inputBinding": {
                        "position": 4,
                        "prefix": "--bqsr-recal-file"
                    },
                    "doc": "Input recalibration table for BQSR. Only run ApplyBQSR with the covariates table created from the input BAM"
                },
                {
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/input",
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
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/output_file_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "doc": "Output file name. Not Required"
                },
                {
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/add_output_sam_program_record",
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
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/add_output_vcf_command_line",
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
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/arguments_file",
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
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/cloud_index_prefetch_buffer",
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
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/cloud_prefetch_buffer",
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
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/create_output_bam_md5",
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
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/create_output_variant_index",
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
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/create_output_variant_md5",
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
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/disable_bam_index_caching",
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
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/disable_read_filter",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 6,
                        "prefix": "--disable-read-filter"
                    }
                },
                {
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/disable_sequence_dictionary_validation",
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
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/emit_original_quals",
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
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/exclude_intervals",
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
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_config_file",
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
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gcs_max_retries",
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
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gcs_project_for_requester_pays",
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
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/global_qscore_prior",
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
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/interval_exclusion_padding",
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
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/interval_merging_rule",
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
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/interval_padding",
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
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/interval_set_rule",
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
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/intervals",
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
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/lenient",
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
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/preserve_qscores_less_than",
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
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/quantize_quals",
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
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/quiet",
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
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/read_filter",
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
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/read_index",
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
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/read_validation_stringency",
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
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/seconds_between_progress_updates",
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
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/sequence_dictionary",
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
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/sites_only_vcf_output",
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
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/use_jdk_deflater",
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
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/use_jdk_inflater",
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
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/use_original_qualities",
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
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/memory_overhead",
                    "type": [
                        "null",
                        "int"
                    ]
                },
                {
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/memory_per_job",
                    "type": [
                        "null",
                        "int"
                    ]
                },
                {
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/number_of_threads",
                    "type": [
                        "null",
                        "int"
                    ]
                }
            ],
            "outputs": [
                {
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_bam",
                    "type": [
                        "null",
                        "File"
                    ],
                    "outputBinding": {
                        "glob": "${\n    if(inputs.output_file_name){\n        return inputs.output_file_name\n    } else {\n        return inputs.input.basename.replace(/.bam/, '_bqsr.bam')\n    }\n}"
                    },
                    "secondaryFiles": [
                        "^.bai"
                    ]
                }
            ],
            "label": "gatk_apply_bqsr_4.1.2.0",
            "arguments": [
                {
                    "position": 0,
                    "prefix": "--java-options",
                    "valueFrom": "${\n  if(inputs.memory_per_job && inputs.memory_overhead) {\n   \n    if(inputs.memory_per_job % 1000 == 0) {\n    \t\n      return \"-Xmx\" + (inputs.memory_per_job/1000).toString() + \"G\"\n    }\n    else {\n      \n      return \"-Xmx\" + Math.floor((inputs.memory_per_job/1000)).toString() + \"G\" \n    }\n  }\n  else if (inputs.memory_per_job && !inputs.memory_overhead){\n    \n    if(inputs.memory_per_job % 1000 == 0) {\n    \t\n      return \"-Xmx\" + (inputs.memory_per_job/1000).toString() + \"G\"\n    }\n    else {\n      \n      return \"-Xmx\" + Math.floor((inputs.memory_per_job/1000)).toString() + \"G\" \n    }\n  }\n  else if(!inputs.memory_per_job && inputs.memory_overhead){\n    \n    return \"-Xmx4G\"\n  }\n  else {\n    \n  \treturn \"-Xmx4G\"\n  }\n}"
                },
                {
                    "position": 2,
                    "prefix": "--output",
                    "valueFrom": "${\n    if(inputs.output_file_name){\n        return inputs.output_file_name\n    } else {\n        return inputs.input.basename.replace(/.bam/, '_bqsr.bam')\n    }\n}"
                },
                {
                    "position": 2,
                    "prefix": "--tmp-dir",
                    "valueFrom": "."
                },
                {
                    "position": 1,
                    "prefix": "",
                    "separate": false,
                    "valueFrom": "ApplyBQSR"
                }
            ],
            "requirements": [
                {
                    "class": "ResourceRequirement",
                    "ramMin": 10000,
                    "coresMin": 8
                },
                {
                    "class": "DockerRequirement",
                    "dockerPull": "broadinstitute/gatk:4.1.2.0"
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
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:sumans@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Shalabh Suman"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "class": "http://usefulinc.com/ns/doap#Version",
                    "http://usefulinc.com/ns/doap#name": "gatk4",
                    "http://usefulinc.com/ns/doap#revision": "4.1.2.0"
                }
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#gatk_baserecalibrator_4.1.2.0.cwl",
            "baseCommand": [
                "gatk"
            ],
            "inputs": [
                {
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/input",
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
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/known_sites_1",
                    "type": "File",
                    "inputBinding": {
                        "position": 3,
                        "prefix": "--known-sites"
                    },
                    "doc": "One or more databases of known polymorphic sites used to exclude regions around known polymorphisms from analysis",
                    "secondaryFiles": [
                        ".idx"
                    ]
                },
                {
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/reference",
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
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/output_file_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "doc": "Output file name. Not Required"
                },
                {
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/add_output_sam_program_record",
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
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/add_output_vcf_command_line",
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
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/arguments_file",
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
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/binary_tag_name",
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
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/bqsr_baq_gap_open_penalty",
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
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/cloud-index-prefetch-buffer",
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
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/cloud_prefetch_buffer",
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
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/create_output_bam_index",
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
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/create_output_bam_md5",
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
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/create_output_variant_index",
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
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/create_output_variant_md5",
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
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/default_base_qualities",
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
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/deletions_default_quality",
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
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/disable_bam_index_caching",
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
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/disable_read_filter",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--disable-read-filter"
                    }
                },
                {
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/disable_sequence_dictionary_validation",
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
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/exclude_intervals",
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
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_config_file",
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
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gcs_max_retries",
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
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gcs_project_for_requester_pays",
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
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/indels_context_size",
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
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/insertions_default_quality",
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
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/interval_exclusion_padding",
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
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/interval_merging_rule",
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
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/interval_padding",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--interval-padding"
                    }
                },
                {
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/interval_set_rule",
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
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/intervals",
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
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/lenient",
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
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/low_quality_tail",
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
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/maximum_cycle_value",
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
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/mismatches_context_size",
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
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/mismatches_default_quality",
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
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/preserve_qscores_less_than",
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
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/quantizing_levels",
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
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/QUIET",
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
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/read_filter",
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
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/read_index",
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
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/seconds_between_progress_updates",
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
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/sequence_dictionary",
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
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/sites_only_vcf_output",
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
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/use_original_qualities",
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
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/number_of_threads",
                    "type": [
                        "null",
                        "int"
                    ]
                },
                {
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/memory_per_job",
                    "type": [
                        "null",
                        "int"
                    ]
                },
                {
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/memory_overhead",
                    "type": [
                        "null",
                        "int"
                    ]
                },
                {
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/known_sites_2",
                    "type": [
                        "null",
                        "File"
                    ],
                    "inputBinding": {
                        "position": 3,
                        "prefix": "--known-sites"
                    },
                    "secondaryFiles": [
                        ".idx"
                    ]
                }
            ],
            "outputs": [
                {
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_output",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    if(inputs.output_file_name){\n        return inputs.output_file_name\n    } else {\n        return inputs.input.basename.replace(/.bam/, '_bqsr.table')\n    }\n}"
                    }
                }
            ],
            "label": "gatk_base_recalibrator_4.1.2.0",
            "arguments": [
                {
                    "position": 0,
                    "prefix": "--java-options",
                    "valueFrom": "${\n  if(inputs.memory_per_job && inputs.memory_overhead) {\n   \n    if(inputs.memory_per_job % 1000 == 0) {\n    \t\n      return \"-Xmx\" + (inputs.memory_per_job/1000).toString() + \"G\"\n    }\n    else {\n      \n      return \"-Xmx\" + Math.floor((inputs.memory_per_job/1000)).toString() + \"G\" \n    }\n  }\n  else if (inputs.memory_per_job && !inputs.memory_overhead){\n    \n    if(inputs.memory_per_job % 1000 == 0) {\n    \t\n      return \"-Xmx\" + (inputs.memory_per_job/1000).toString() + \"G\"\n    }\n    else {\n      \n      return \"-Xmx\" + Math.floor((inputs.memory_per_job/1000)).toString() + \"G\" \n    }\n  }\n  else if(!inputs.memory_per_job && inputs.memory_overhead){\n    \n    return \"-Xmx4G\"\n  }\n  else {\n    \n  \treturn \"-Xmx4G\"\n  }\n}"
                },
                {
                    "position": 1,
                    "prefix": "",
                    "separate": false,
                    "valueFrom": "BaseRecalibrator"
                },
                {
                    "position": 2,
                    "prefix": "--tmp-dir",
                    "valueFrom": "."
                },
                {
                    "position": 2,
                    "prefix": "--output",
                    "valueFrom": "${\n    if(inputs.output_file_name){\n        return inputs.output_file_name\n    } else {\n        return inputs.input.basename.replace(/.bam/, '_bqsr.table')\n    }\n}"
                },
                {
                    "position": 2,
                    "prefix": "--verbosity",
                    "valueFrom": "INFO"
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
                    "dockerPull": "broadinstitute/gatk:4.1.2.0"
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
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:sumans@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Shalabh Suman"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ]
        }
    ],
    "cwlVersion": "v1.0"
}