{
    "$graph": [
        {
            "class": "Workflow",
            "id": "#main",
            "label": "calculate_apply_bqsr.cwl",
            "inputs": [
                {
                    "id": "#main/known_sites_1",
                    "type": "File",
                    "secondaryFiles": [
                        ".idx"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 214
                },
                {
                    "id": "#main/input",
                    "type": "File",
                    "secondaryFiles": [
                        "^.bai"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 321
                },
                {
                    "id": "#main/known_sites_2",
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
                    "id": "#main/reference",
                    "type": "File",
                    "secondaryFiles": [
                        ".fai",
                        "^.dict"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 0
                },
                {
                    "id": "#main/read_filter",
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
                    "id": "#main/bqsr_bam",
                    "outputSource": [
                        "#main/gatk_apply_bqsr_4_1_2_1/output"
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
                    "id": "#main/gatk_base_recalibrator_4_1_2_1",
                    "in": [
                        {
                            "id": "#main/gatk_base_recalibrator_4_1_2_1/input",
                            "source": "#main/input"
                        },
                        {
                            "id": "#main/gatk_base_recalibrator_4_1_2_1/known_sites_1",
                            "source": "#main/known_sites_1"
                        },
                        {
                            "id": "#main/gatk_base_recalibrator_4_1_2_1/reference",
                            "source": "#main/reference"
                        },
                        {
                            "id": "#main/gatk_base_recalibrator_4_1_2_1/read_filter",
                            "source": [
                                "#main/read_filter"
                            ]
                        },
                        {
                            "id": "#main/gatk_base_recalibrator_4_1_2_1/known_sites_2",
                            "source": "#main/known_sites_2"
                        }
                    ],
                    "out": [
                        {
                            "id": "#main/gatk_base_recalibrator_4_1_2_1/output"
                        }
                    ],
                    "run": "#gatk_baserecalibrator_4.1.2.0.cwl",
                    "label": "gatk_base_recalibrator_4.1.2.0",
                    "https://www.sevenbridges.com/x": 167.375,
                    "https://www.sevenbridges.com/y": 139.5
                },
                {
                    "id": "#main/gatk_apply_bqsr_4_1_2_1",
                    "in": [
                        {
                            "id": "#main/gatk_apply_bqsr_4_1_2_1/reference",
                            "source": "#main/reference"
                        },
                        {
                            "id": "#main/gatk_apply_bqsr_4_1_2_1/bqsr_recal_file",
                            "source": "#main/gatk_base_recalibrator_4_1_2_1/output"
                        },
                        {
                            "id": "#main/gatk_apply_bqsr_4_1_2_1/input",
                            "source": "#main/input"
                        }
                    ],
                    "out": [
                        {
                            "id": "#main/gatk_apply_bqsr_4_1_2_1/output"
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
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/reference",
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
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/create_output_bam_index",
                    "type": "boolean?",
                    "inputBinding": {
                        "position": 6,
                        "prefix": "--create-output-bam-index"
                    }
                },
                {
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/bqsr_recal_file",
                    "type": "File",
                    "inputBinding": {
                        "position": 4,
                        "prefix": "--bqsr-recal-file"
                    },
                    "doc": "Input recalibration table for BQSR. Only run ApplyBQSR with the covariates table created from the input BAM"
                },
                {
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/input",
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
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/output_file_name",
                    "type": "string?",
                    "doc": "Output file name. Not Required"
                },
                {
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/add_output_sam_program_record",
                    "type": "boolean?",
                    "inputBinding": {
                        "position": 6,
                        "prefix": "--add-output-sam-program-record"
                    }
                },
                {
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/add_output_vcf_command_line",
                    "type": "boolean?",
                    "inputBinding": {
                        "position": 6,
                        "prefix": "--add-output-vcf-command-line"
                    }
                },
                {
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/arguments_file",
                    "type": "File?",
                    "inputBinding": {
                        "position": 6,
                        "prefix": "--arguments_file"
                    }
                },
                {
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/cloud_index_prefetch_buffer",
                    "type": "int?",
                    "inputBinding": {
                        "position": 6,
                        "prefix": "--cloud-index-prefetch-buffer"
                    }
                },
                {
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/cloud_prefetch_buffer",
                    "type": "int?",
                    "inputBinding": {
                        "position": 6,
                        "prefix": "--cloud-prefetch-buffer"
                    }
                },
                {
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/create_output_bam_md5",
                    "type": "boolean?",
                    "inputBinding": {
                        "position": 6,
                        "prefix": "--create-output-bam-md5"
                    }
                },
                {
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/create_output_variant_index",
                    "type": "boolean?",
                    "inputBinding": {
                        "position": 6,
                        "prefix": "--create-output-variant-index"
                    }
                },
                {
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/create_output_variant_md5",
                    "type": "boolean?",
                    "inputBinding": {
                        "position": 6,
                        "prefix": "--create-output-variant-md5"
                    }
                },
                {
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/disable_bam_index_caching",
                    "type": "boolean?",
                    "inputBinding": {
                        "position": 6,
                        "prefix": "--disable-bam-index-caching"
                    }
                },
                {
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/disable_read_filter",
                    "type": "string?",
                    "inputBinding": {
                        "position": 6,
                        "prefix": "--disable-read-filter"
                    }
                },
                {
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/disable_sequence_dictionary_validation",
                    "type": "boolean?",
                    "inputBinding": {
                        "position": 6,
                        "prefix": "--disable-sequence-dictionary-validation"
                    }
                },
                {
                    "default": true,
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/emit_original_quals",
                    "type": "boolean?",
                    "inputBinding": {
                        "position": 6,
                        "prefix": "--emit-original-quals"
                    }
                },
                {
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/exclude_intervals",
                    "type": "string?",
                    "inputBinding": {
                        "position": 6,
                        "prefix": "--exclude-intervals"
                    }
                },
                {
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/gatk_config_file",
                    "type": "File?",
                    "inputBinding": {
                        "position": 6,
                        "prefix": "--gatk-config-file"
                    }
                },
                {
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/gcs_max_retries",
                    "type": "int?",
                    "inputBinding": {
                        "position": 6,
                        "prefix": "--gcs-max-retries"
                    }
                },
                {
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/gcs_project_for_requester_pays",
                    "type": "string?",
                    "inputBinding": {
                        "position": 6,
                        "prefix": "--gcs-project-for-requester-pays"
                    }
                },
                {
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/global_qscore_prior",
                    "type": "float?",
                    "inputBinding": {
                        "position": 6,
                        "prefix": "--global-qscore-prior"
                    }
                },
                {
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/interval_exclusion_padding",
                    "type": "int?",
                    "inputBinding": {
                        "position": 6,
                        "prefix": "--interval-exclusion-padding"
                    }
                },
                {
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/interval_merging_rule",
                    "type": "string?",
                    "inputBinding": {
                        "position": 6,
                        "prefix": "--interval-merging-rule"
                    }
                },
                {
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/interval_padding",
                    "type": "int?",
                    "inputBinding": {
                        "position": 6,
                        "prefix": "--interval-padding"
                    }
                },
                {
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/interval_set_rule",
                    "type": "string?",
                    "inputBinding": {
                        "position": 6,
                        "prefix": "--interval-set-rule"
                    }
                },
                {
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/intervals",
                    "type": "string?",
                    "inputBinding": {
                        "position": 6,
                        "prefix": "--intervals"
                    }
                },
                {
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/lenient",
                    "type": "boolean?",
                    "inputBinding": {
                        "position": 6,
                        "prefix": "--lenient"
                    }
                },
                {
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/preserve_qscores_less_than",
                    "type": "int?",
                    "inputBinding": {
                        "position": 6,
                        "prefix": "--preserve-qscores-less-than"
                    }
                },
                {
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/quantize_quals",
                    "type": "int?",
                    "inputBinding": {
                        "position": 6,
                        "prefix": "--quantize-quals"
                    }
                },
                {
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/quiet",
                    "type": "boolean?",
                    "inputBinding": {
                        "position": 6,
                        "prefix": "--QUIET"
                    }
                },
                {
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/read_filter",
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
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/read_index",
                    "type": "string?",
                    "inputBinding": {
                        "position": 6,
                        "prefix": "--read-index"
                    }
                },
                {
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/read_validation_stringency",
                    "type": "string?",
                    "inputBinding": {
                        "position": 6,
                        "prefix": "--read-validation-stringency"
                    }
                },
                {
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/seconds_between_progress_updates",
                    "type": "float?",
                    "inputBinding": {
                        "position": 6,
                        "prefix": "--seconds-between-progress-updates"
                    }
                },
                {
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/sequence_dictionary",
                    "type": "File?",
                    "inputBinding": {
                        "position": 6,
                        "prefix": "--sequence-dictionary"
                    }
                },
                {
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/sites_only_vcf_output",
                    "type": "boolean?",
                    "inputBinding": {
                        "position": 6,
                        "prefix": "--sites-only-vcf-output"
                    }
                },
                {
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/use_jdk_deflater",
                    "type": "boolean?",
                    "inputBinding": {
                        "position": 6,
                        "prefix": "--use-jdk-deflater"
                    }
                },
                {
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/use_jdk_inflater",
                    "type": "boolean?",
                    "inputBinding": {
                        "position": 6,
                        "prefix": "--use-jdk-inflater"
                    }
                },
                {
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/use_original_qualities",
                    "type": "boolean?",
                    "inputBinding": {
                        "position": 6,
                        "prefix": "--use-original-qualities"
                    }
                },
                {
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/memory_overhead",
                    "type": "int?"
                },
                {
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/memory_per_job",
                    "type": "int?"
                },
                {
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/number_of_threads",
                    "type": "int?"
                }
            ],
            "outputs": [
                {
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/gatk_apply_bqsr_bam",
                    "type": "File?",
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
                    "class": "foaf:Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "foaf:Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:sumans@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Shalabh Suman"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://purl.org/dc/terms/creator": [
                {
                    "class": "foaf:Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "foaf:Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:sumans@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Shalabh Suman"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "class": "doap:Version",
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
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/input",
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
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/known_sites_1",
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
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/reference",
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
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/output_file_name",
                    "type": "string?",
                    "doc": "Output file name. Not Required"
                },
                {
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/add_output_sam_program_record",
                    "type": "boolean?",
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--add-output-sam-program-record"
                    }
                },
                {
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/add_output_vcf_command_line",
                    "type": "boolean?",
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--add-output-vcf-command-line"
                    }
                },
                {
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/arguments_file",
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
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/binary_tag_name",
                    "type": "string?",
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--binary-tag-name"
                    }
                },
                {
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/bqsr_baq_gap_open_penalty",
                    "type": "float?",
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--bqsr-baq-gap-open-penalty"
                    }
                },
                {
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/cloud-index-prefetch-buffer",
                    "type": "int?",
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--cloud-index-prefetch-buffer"
                    }
                },
                {
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/cloud_prefetch_buffer",
                    "type": "int?",
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--cloud-prefetch-buffer"
                    }
                },
                {
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/create_output_bam_index",
                    "type": "boolean?",
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--create-output-bam-index"
                    }
                },
                {
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/create_output_bam_md5",
                    "type": "boolean?",
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--create-output-bam-md5"
                    }
                },
                {
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/create_output_variant_index",
                    "type": "boolean?",
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--create-output-variant-index"
                    }
                },
                {
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/create_output_variant_md5",
                    "type": "boolean?",
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--create-output-variant-md5"
                    }
                },
                {
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/default_base_qualities",
                    "type": "int?",
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--default-base-qualities"
                    }
                },
                {
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/deletions_default_quality",
                    "type": "int?",
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--deletions-default-quality"
                    }
                },
                {
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/disable_bam_index_caching",
                    "type": "boolean?",
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--disable-bam-index-caching"
                    }
                },
                {
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/disable_read_filter",
                    "type": "string?",
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--disable-read-filter"
                    }
                },
                {
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/disable_sequence_dictionary_validation",
                    "type": "boolean?",
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--disable-sequence-dictionary-validation"
                    }
                },
                {
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/exclude_intervals",
                    "type": "string?",
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--exclude-intervals"
                    }
                },
                {
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/gatk_config_file",
                    "type": "File?",
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--gatk-config-file"
                    }
                },
                {
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/gcs_max_retries",
                    "type": "int?",
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--gcs-max-retries"
                    }
                },
                {
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/gcs_project_for_requester_pays",
                    "type": "string?",
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--gcs-project-for-requester-pays"
                    }
                },
                {
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/indels_context_size",
                    "type": "int?",
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--indels-context-size"
                    }
                },
                {
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/insertions_default_quality",
                    "type": "int?",
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--insertions-default-quality"
                    }
                },
                {
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/interval_exclusion_padding",
                    "type": "int?",
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--interval-exclusion-padding"
                    }
                },
                {
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/interval_merging_rule",
                    "type": "string?",
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--interval-merging-rule"
                    }
                },
                {
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/interval_padding",
                    "type": "string?",
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--interval-padding"
                    }
                },
                {
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/interval_set_rule",
                    "type": "string?",
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--interval-set-rule"
                    }
                },
                {
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/intervals",
                    "type": "string?",
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--intervals"
                    }
                },
                {
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/lenient",
                    "type": "boolean?",
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--lenient"
                    }
                },
                {
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/low_quality_tail",
                    "type": "int?",
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--low-quality-tail"
                    }
                },
                {
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/maximum_cycle_value",
                    "type": "int?",
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--maximum-cycle-value"
                    }
                },
                {
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/mismatches_context_size",
                    "type": "int?",
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--mismatches-context-size"
                    }
                },
                {
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/mismatches_default_quality",
                    "type": "int?",
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--mismatches-default-quality"
                    }
                },
                {
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/preserve_qscores_less_than",
                    "type": "int?",
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--preserve-qscores-less-than"
                    }
                },
                {
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/quantizing_levels",
                    "type": "int?",
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--quantizing-levels"
                    }
                },
                {
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/QUIET",
                    "type": "boolean?",
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--QUIET"
                    }
                },
                {
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/read_filter",
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
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/read_index",
                    "type": "string?",
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--read-index"
                    }
                },
                {
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/seconds_between_progress_updates",
                    "type": "float?",
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--seconds-between-progress-updates"
                    }
                },
                {
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/sequence_dictionary",
                    "type": "File?",
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--sequence-dictionary"
                    }
                },
                {
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/sites_only_vcf_output",
                    "type": "boolean?",
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--sites-only-vcf-output"
                    }
                },
                {
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/use_original_qualities",
                    "type": "boolean?",
                    "inputBinding": {
                        "position": 10,
                        "prefix": "--use-original-qualities"
                    }
                },
                {
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/number_of_threads",
                    "type": "int?"
                },
                {
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/memory_per_job",
                    "type": "int?"
                },
                {
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/memory_overhead",
                    "type": "int?"
                },
                {
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/known_sites_2",
                    "type": "File?",
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
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/gatk_base_recalibrator_output",
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
                    "class": "foaf:Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "foaf:Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:sumans@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Shalabh Suman"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://purl.org/dc/terms/creator": [
                {
                    "class": "foaf:Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "foaf:Person",
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