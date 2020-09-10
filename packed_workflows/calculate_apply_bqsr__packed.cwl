{
    "$graph": [
        {
            "$namespaces": {
                "sbg": "https://www.sevenbridges.com/"
            },
            "steps": [
                {
                    "https://www.sevenbridges.com/y": 139.5,
                    "label": "gatk_base_recalibrator_4.1.2.0",
                    "in": [
                        {
                            "source": "#main/input",
                            "id": "#main/gatk_base_recalibrator_4_1_2_1/input"
                        },
                        {
                            "source": "#main/known_sites_1",
                            "id": "#main/gatk_base_recalibrator_4_1_2_1/known_sites_1"
                        },
                        {
                            "source": "#main/reference",
                            "id": "#main/gatk_base_recalibrator_4_1_2_1/reference"
                        },
                        {
                            "source": [
                                "#main/read_filter"
                            ],
                            "id": "#main/gatk_base_recalibrator_4_1_2_1/read_filter"
                        },
                        {
                            "source": "#main/known_sites_2",
                            "id": "#main/gatk_base_recalibrator_4_1_2_1/known_sites_2"
                        }
                    ],
                    "run": "#gatk_baserecalibrator_4.1.2.0.cwl",
                    "id": "#main/gatk_base_recalibrator_4_1_2_1",
                    "https://www.sevenbridges.com/x": 167.375,
                    "out": [
                        {
                            "id": "#main/gatk_base_recalibrator_4_1_2_1/output"
                        }
                    ]
                },
                {
                    "https://www.sevenbridges.com/y": 146.5,
                    "label": "gatk_apply_bqsr_4.1.2.0",
                    "in": [
                        {
                            "source": "#main/reference",
                            "id": "#main/gatk_apply_bqsr_4_1_2_1/reference"
                        },
                        {
                            "source": "#main/gatk_base_recalibrator_4_1_2_1/output",
                            "id": "#main/gatk_apply_bqsr_4_1_2_1/bqsr_recal_file"
                        },
                        {
                            "source": "#main/input",
                            "id": "#main/gatk_apply_bqsr_4_1_2_1/input"
                        }
                    ],
                    "run": "#gatk_ApplyBQSR_4.1.2.0.cwl",
                    "id": "#main/gatk_apply_bqsr_4_1_2_1",
                    "https://www.sevenbridges.com/x": 411.55841064453125,
                    "out": [
                        {
                            "id": "#main/gatk_apply_bqsr_4_1_2_1/output"
                        }
                    ]
                }
            ],
            "class": "Workflow",
            "requirements": [],
            "inputs": [
                {
                    "type": "File",
                    "secondaryFiles": [
                        ".idx"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 214,
                    "id": "#main/known_sites_1"
                },
                {
                    "type": "File",
                    "secondaryFiles": [
                        "^.bai"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 321,
                    "id": "#main/input"
                },
                {
                    "type": [
                        "null",
                        "File"
                    ],
                    "secondaryFiles": [
                        ".idx"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 107,
                    "id": "#main/known_sites_2"
                },
                {
                    "type": "File",
                    "secondaryFiles": [
                        ".fai",
                        "^.dict"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 0,
                    "id": "#main/reference"
                },
                {
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
                    "https://www.sevenbridges.com/y": 74,
                    "id": "#main/read_filter"
                }
            ],
            "label": "calculate_apply_bqsr.cwl",
            "outputs": [
                {
                    "type": [
                        "null",
                        "File"
                    ],
                    "secondaryFiles": [
                        "^.bai"
                    ],
                    "https://www.sevenbridges.com/y": 106.5,
                    "id": "#main/bqsr_bam",
                    "outputSource": [
                        "#main/gatk_apply_bqsr_4_1_2_1/output"
                    ],
                    "https://www.sevenbridges.com/x": 616.9488525390625
                }
            ],
            "id": "#main"
        },
        {
            "label": "gatk_apply_bqsr_4.1.2.0",
            "http://purl.org/dc/terms/creator": [
                {
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:sumans@mskcc.org",
                            "class": "foaf:Person",
                            "http://xmlns.com/foaf/0.1/name": "Shalabh Suman"
                        }
                    ],
                    "class": "foaf:Organization",
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "class": "CommandLineTool",
            "requirements": [
                {
                    "coresMin": 8,
                    "ramMin": 10000,
                    "class": "ResourceRequirement"
                },
                {
                    "dockerPull": "broadinstitute/gatk:4.1.2.0",
                    "class": "DockerRequirement"
                },
                {
                    "class": "InlineJavascriptRequirement"
                }
            ],
            "id": "#gatk_ApplyBQSR_4.1.2.0.cwl",
            "arguments": [
                {
                    "valueFrom": "${\n  if(inputs.memory_per_job && inputs.memory_overhead) {\n   \n    if(inputs.memory_per_job % 1000 == 0) {\n    \t\n      return \"-Xmx\" + (inputs.memory_per_job/1000).toString() + \"G\"\n    }\n    else {\n      \n      return \"-Xmx\" + Math.floor((inputs.memory_per_job/1000)).toString() + \"G\" \n    }\n  }\n  else if (inputs.memory_per_job && !inputs.memory_overhead){\n    \n    if(inputs.memory_per_job % 1000 == 0) {\n    \t\n      return \"-Xmx\" + (inputs.memory_per_job/1000).toString() + \"G\"\n    }\n    else {\n      \n      return \"-Xmx\" + Math.floor((inputs.memory_per_job/1000)).toString() + \"G\" \n    }\n  }\n  else if(!inputs.memory_per_job && inputs.memory_overhead){\n    \n    return \"-Xmx4G\"\n  }\n  else {\n    \n  \treturn \"-Xmx4G\"\n  }\n}",
                    "prefix": "--java-options",
                    "position": 0
                },
                {
                    "valueFrom": "${\n    if(inputs.output_file_name){\n        return inputs.output_file_name\n    } else {\n        return inputs.input.basename.replace(/.bam/, '_bqsr.bam')\n    }\n}",
                    "prefix": "--output",
                    "position": 2
                },
                {
                    "valueFrom": ".",
                    "prefix": "--tmp-dir",
                    "position": 2
                },
                {
                    "valueFrom": "ApplyBQSR",
                    "prefix": "",
                    "position": 1,
                    "separate": false
                }
            ],
            "inputs": [
                {
                    "type": "File",
                    "secondaryFiles": [
                        ".fai",
                        "^.dict"
                    ],
                    "inputBinding": {
                        "prefix": "--reference",
                        "position": 4
                    },
                    "doc": "Reference sequence",
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/reference"
                },
                {
                    "type": "boolean?",
                    "inputBinding": {
                        "prefix": "--create-output-bam-index",
                        "position": 6
                    },
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/create_output_bam_index"
                },
                {
                    "type": "File",
                    "inputBinding": {
                        "prefix": "--bqsr-recal-file",
                        "position": 4
                    },
                    "doc": "Input recalibration table for BQSR. Only run ApplyBQSR with the covariates table created from the input BAM",
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/bqsr_recal_file"
                },
                {
                    "type": "File",
                    "secondaryFiles": [
                        "^.bai"
                    ],
                    "inputBinding": {
                        "prefix": "--input",
                        "position": 4
                    },
                    "doc": "A BAM file containing input read data",
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/input"
                },
                {
                    "type": "string?",
                    "doc": "Output file name. Not Required",
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/output_file_name"
                },
                {
                    "type": "boolean?",
                    "inputBinding": {
                        "prefix": "--add-output-sam-program-record",
                        "position": 6
                    },
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/add_output_sam_program_record"
                },
                {
                    "type": "boolean?",
                    "inputBinding": {
                        "prefix": "--add-output-vcf-command-line",
                        "position": 6
                    },
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/add_output_vcf_command_line"
                },
                {
                    "type": "File?",
                    "inputBinding": {
                        "prefix": "--arguments_file",
                        "position": 6
                    },
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/arguments_file"
                },
                {
                    "type": "int?",
                    "inputBinding": {
                        "prefix": "--cloud-index-prefetch-buffer",
                        "position": 6
                    },
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/cloud_index_prefetch_buffer"
                },
                {
                    "type": "int?",
                    "inputBinding": {
                        "prefix": "--cloud-prefetch-buffer",
                        "position": 6
                    },
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/cloud_prefetch_buffer"
                },
                {
                    "type": "boolean?",
                    "inputBinding": {
                        "prefix": "--create-output-bam-md5",
                        "position": 6
                    },
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/create_output_bam_md5"
                },
                {
                    "type": "boolean?",
                    "inputBinding": {
                        "prefix": "--create-output-variant-index",
                        "position": 6
                    },
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/create_output_variant_index"
                },
                {
                    "type": "boolean?",
                    "inputBinding": {
                        "prefix": "--create-output-variant-md5",
                        "position": 6
                    },
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/create_output_variant_md5"
                },
                {
                    "type": "boolean?",
                    "inputBinding": {
                        "prefix": "--disable-bam-index-caching",
                        "position": 6
                    },
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/disable_bam_index_caching"
                },
                {
                    "type": "string?",
                    "inputBinding": {
                        "prefix": "--disable-read-filter",
                        "position": 6
                    },
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/disable_read_filter"
                },
                {
                    "type": "boolean?",
                    "inputBinding": {
                        "prefix": "--disable-sequence-dictionary-validation",
                        "position": 6
                    },
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/disable_sequence_dictionary_validation"
                },
                {
                    "type": "boolean?",
                    "inputBinding": {
                        "prefix": "--emit-original-quals",
                        "position": 6
                    },
                    "default": true,
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/emit_original_quals"
                },
                {
                    "type": "string?",
                    "inputBinding": {
                        "prefix": "--exclude-intervals",
                        "position": 6
                    },
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/exclude_intervals"
                },
                {
                    "type": "File?",
                    "inputBinding": {
                        "prefix": "--gatk-config-file",
                        "position": 6
                    },
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/gatk_config_file"
                },
                {
                    "type": "int?",
                    "inputBinding": {
                        "prefix": "--gcs-max-retries",
                        "position": 6
                    },
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/gcs_max_retries"
                },
                {
                    "type": "string?",
                    "inputBinding": {
                        "prefix": "--gcs-project-for-requester-pays",
                        "position": 6
                    },
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/gcs_project_for_requester_pays"
                },
                {
                    "type": "float?",
                    "inputBinding": {
                        "prefix": "--global-qscore-prior",
                        "position": 6
                    },
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/global_qscore_prior"
                },
                {
                    "type": "int?",
                    "inputBinding": {
                        "prefix": "--interval-exclusion-padding",
                        "position": 6
                    },
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/interval_exclusion_padding"
                },
                {
                    "type": "string?",
                    "inputBinding": {
                        "prefix": "--interval-merging-rule",
                        "position": 6
                    },
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/interval_merging_rule"
                },
                {
                    "type": "int?",
                    "inputBinding": {
                        "prefix": "--interval-padding",
                        "position": 6
                    },
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/interval_padding"
                },
                {
                    "type": "string?",
                    "inputBinding": {
                        "prefix": "--interval-set-rule",
                        "position": 6
                    },
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/interval_set_rule"
                },
                {
                    "type": "string?",
                    "inputBinding": {
                        "prefix": "--intervals",
                        "position": 6
                    },
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/intervals"
                },
                {
                    "type": "boolean?",
                    "inputBinding": {
                        "prefix": "--lenient",
                        "position": 6
                    },
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/lenient"
                },
                {
                    "type": "int?",
                    "inputBinding": {
                        "prefix": "--preserve-qscores-less-than",
                        "position": 6
                    },
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/preserve_qscores_less_than"
                },
                {
                    "type": "int?",
                    "inputBinding": {
                        "prefix": "--quantize-quals",
                        "position": 6
                    },
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/quantize_quals"
                },
                {
                    "type": "boolean?",
                    "inputBinding": {
                        "prefix": "--QUIET",
                        "position": 6
                    },
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/quiet"
                },
                {
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
                    },
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/read_filter"
                },
                {
                    "type": "string?",
                    "inputBinding": {
                        "prefix": "--read-index",
                        "position": 6
                    },
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/read_index"
                },
                {
                    "type": "string?",
                    "inputBinding": {
                        "prefix": "--read-validation-stringency",
                        "position": 6
                    },
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/read_validation_stringency"
                },
                {
                    "type": "float?",
                    "inputBinding": {
                        "prefix": "--seconds-between-progress-updates",
                        "position": 6
                    },
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/seconds_between_progress_updates"
                },
                {
                    "type": "File?",
                    "inputBinding": {
                        "prefix": "--sequence-dictionary",
                        "position": 6
                    },
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/sequence_dictionary"
                },
                {
                    "type": "boolean?",
                    "inputBinding": {
                        "prefix": "--sites-only-vcf-output",
                        "position": 6
                    },
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/sites_only_vcf_output"
                },
                {
                    "type": "boolean?",
                    "inputBinding": {
                        "prefix": "--use-jdk-deflater",
                        "position": 6
                    },
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/use_jdk_deflater"
                },
                {
                    "type": "boolean?",
                    "inputBinding": {
                        "prefix": "--use-jdk-inflater",
                        "position": 6
                    },
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/use_jdk_inflater"
                },
                {
                    "type": "boolean?",
                    "inputBinding": {
                        "prefix": "--use-original-qualities",
                        "position": 6
                    },
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/use_original_qualities"
                },
                {
                    "type": "int?",
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/memory_overhead"
                },
                {
                    "type": "int?",
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/memory_per_job"
                },
                {
                    "type": "int?",
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/number_of_threads"
                }
            ],
            "outputs": [
                {
                    "type": "File?",
                    "secondaryFiles": [
                        "^.bai"
                    ],
                    "outputBinding": {
                        "glob": "${\n    if(inputs.output_file_name){\n        return inputs.output_file_name\n    } else {\n        return inputs.input.basename.replace(/.bam/, '_bqsr.bam')\n    }\n}"
                    },
                    "id": "#gatk_ApplyBQSR_4.1.2.0.cwl/gatk_apply_bqsr_4_1_2_0/output"
                }
            ],
            "http://purl.org/dc/terms/contributor": [
                {
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:sumans@mskcc.org",
                            "class": "foaf:Person",
                            "http://xmlns.com/foaf/0.1/name": "Shalabh Suman"
                        }
                    ],
                    "class": "foaf:Organization",
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "http://usefulinc.com/ns/doap#revision": "4.1.2.0",
                    "http://usefulinc.com/ns/doap#name": "gatk4",
                    "class": "doap:Version"
                }
            ],
            "baseCommand": [
                "gatk"
            ]
        },
        {
            "label": "gatk_base_recalibrator_4.1.2.0",
            "http://purl.org/dc/terms/creator": [
                {
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:sumans@mskcc.org",
                            "class": "foaf:Person",
                            "http://xmlns.com/foaf/0.1/name": "Shalabh Suman"
                        }
                    ],
                    "class": "foaf:Organization",
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "class": "CommandLineTool",
            "requirements": [
                {
                    "coresMin": 8,
                    "ramMin": 32000,
                    "class": "ResourceRequirement"
                },
                {
                    "dockerPull": "broadinstitute/gatk:4.1.2.0",
                    "class": "DockerRequirement"
                },
                {
                    "class": "InlineJavascriptRequirement"
                }
            ],
            "id": "#gatk_baserecalibrator_4.1.2.0.cwl",
            "arguments": [
                {
                    "valueFrom": "${\n  if(inputs.memory_per_job && inputs.memory_overhead) {\n   \n    if(inputs.memory_per_job % 1000 == 0) {\n    \t\n      return \"-Xmx\" + (inputs.memory_per_job/1000).toString() + \"G\"\n    }\n    else {\n      \n      return \"-Xmx\" + Math.floor((inputs.memory_per_job/1000)).toString() + \"G\" \n    }\n  }\n  else if (inputs.memory_per_job && !inputs.memory_overhead){\n    \n    if(inputs.memory_per_job % 1000 == 0) {\n    \t\n      return \"-Xmx\" + (inputs.memory_per_job/1000).toString() + \"G\"\n    }\n    else {\n      \n      return \"-Xmx\" + Math.floor((inputs.memory_per_job/1000)).toString() + \"G\" \n    }\n  }\n  else if(!inputs.memory_per_job && inputs.memory_overhead){\n    \n    return \"-Xmx4G\"\n  }\n  else {\n    \n  \treturn \"-Xmx4G\"\n  }\n}",
                    "prefix": "--java-options",
                    "position": 0
                },
                {
                    "valueFrom": "BaseRecalibrator",
                    "prefix": "",
                    "position": 1,
                    "separate": false
                },
                {
                    "valueFrom": ".",
                    "prefix": "--tmp-dir",
                    "position": 2
                },
                {
                    "valueFrom": "${\n    if(inputs.output_file_name){\n        return inputs.output_file_name\n    } else {\n        return inputs.input.basename.replace(/.bam/, '_bqsr.table')\n    }\n}",
                    "prefix": "--output",
                    "position": 2
                },
                {
                    "valueFrom": "INFO",
                    "prefix": "--verbosity",
                    "position": 2
                }
            ],
            "inputs": [
                {
                    "type": "File",
                    "secondaryFiles": [
                        "^.bai"
                    ],
                    "inputBinding": {
                        "prefix": "--input",
                        "position": 3
                    },
                    "doc": "BAM/SAM file containing reads",
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/input"
                },
                {
                    "type": "File",
                    "secondaryFiles": [
                        ".idx"
                    ],
                    "inputBinding": {
                        "prefix": "--known-sites",
                        "position": 3
                    },
                    "doc": "One or more databases of known polymorphic sites used to exclude regions around known polymorphisms from analysis",
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/known_sites_1"
                },
                {
                    "type": "File",
                    "secondaryFiles": [
                        ".fai",
                        "^.dict"
                    ],
                    "inputBinding": {
                        "prefix": "--reference",
                        "position": 3
                    },
                    "doc": "Reference sequence file",
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/reference"
                },
                {
                    "type": "string?",
                    "doc": "Output file name. Not Required",
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/output_file_name"
                },
                {
                    "type": "boolean?",
                    "inputBinding": {
                        "prefix": "--add-output-sam-program-record",
                        "position": 10
                    },
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/add_output_sam_program_record"
                },
                {
                    "type": "boolean?",
                    "inputBinding": {
                        "prefix": "--add-output-vcf-command-line",
                        "position": 10
                    },
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/add_output_vcf_command_line"
                },
                {
                    "type": [
                        "null",
                        {
                            "type": "array",
                            "items": "File",
                            "inputBinding": {
                                "prefix": "--arguments_file",
                                "position": 0
                            }
                        }
                    ],
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/arguments_file"
                },
                {
                    "type": "string?",
                    "inputBinding": {
                        "prefix": "--binary-tag-name",
                        "position": 10
                    },
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/binary_tag_name"
                },
                {
                    "type": "float?",
                    "inputBinding": {
                        "prefix": "--bqsr-baq-gap-open-penalty",
                        "position": 10
                    },
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/bqsr_baq_gap_open_penalty"
                },
                {
                    "type": "int?",
                    "inputBinding": {
                        "prefix": "--cloud-index-prefetch-buffer",
                        "position": 10
                    },
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/cloud-index-prefetch-buffer"
                },
                {
                    "type": "int?",
                    "inputBinding": {
                        "prefix": "--cloud-prefetch-buffer",
                        "position": 10
                    },
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/cloud_prefetch_buffer"
                },
                {
                    "type": "boolean?",
                    "inputBinding": {
                        "prefix": "--create-output-bam-index",
                        "position": 10
                    },
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/create_output_bam_index"
                },
                {
                    "type": "boolean?",
                    "inputBinding": {
                        "prefix": "--create-output-bam-md5",
                        "position": 10
                    },
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/create_output_bam_md5"
                },
                {
                    "type": "boolean?",
                    "inputBinding": {
                        "prefix": "--create-output-variant-index",
                        "position": 10
                    },
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/create_output_variant_index"
                },
                {
                    "type": "boolean?",
                    "inputBinding": {
                        "prefix": "--create-output-variant-md5",
                        "position": 10
                    },
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/create_output_variant_md5"
                },
                {
                    "type": "int?",
                    "inputBinding": {
                        "prefix": "--default-base-qualities",
                        "position": 10
                    },
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/default_base_qualities"
                },
                {
                    "type": "int?",
                    "inputBinding": {
                        "prefix": "--deletions-default-quality",
                        "position": 10
                    },
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/deletions_default_quality"
                },
                {
                    "type": "boolean?",
                    "inputBinding": {
                        "prefix": "--disable-bam-index-caching",
                        "position": 10
                    },
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/disable_bam_index_caching"
                },
                {
                    "type": "string?",
                    "inputBinding": {
                        "prefix": "--disable-read-filter",
                        "position": 10
                    },
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/disable_read_filter"
                },
                {
                    "type": "boolean?",
                    "inputBinding": {
                        "prefix": "--disable-sequence-dictionary-validation",
                        "position": 10
                    },
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/disable_sequence_dictionary_validation"
                },
                {
                    "type": "string?",
                    "inputBinding": {
                        "prefix": "--exclude-intervals",
                        "position": 10
                    },
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/exclude_intervals"
                },
                {
                    "type": "File?",
                    "inputBinding": {
                        "prefix": "--gatk-config-file",
                        "position": 10
                    },
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/gatk_config_file"
                },
                {
                    "type": "int?",
                    "inputBinding": {
                        "prefix": "--gcs-max-retries",
                        "position": 10
                    },
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/gcs_max_retries"
                },
                {
                    "type": "string?",
                    "inputBinding": {
                        "prefix": "--gcs-project-for-requester-pays",
                        "position": 10
                    },
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/gcs_project_for_requester_pays"
                },
                {
                    "type": "int?",
                    "inputBinding": {
                        "prefix": "--indels-context-size",
                        "position": 10
                    },
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/indels_context_size"
                },
                {
                    "type": "int?",
                    "inputBinding": {
                        "prefix": "--insertions-default-quality",
                        "position": 10
                    },
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/insertions_default_quality"
                },
                {
                    "type": "int?",
                    "inputBinding": {
                        "prefix": "--interval-exclusion-padding",
                        "position": 10
                    },
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/interval_exclusion_padding"
                },
                {
                    "type": "string?",
                    "inputBinding": {
                        "prefix": "--interval-merging-rule",
                        "position": 10
                    },
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/interval_merging_rule"
                },
                {
                    "type": "string?",
                    "inputBinding": {
                        "prefix": "--interval-padding",
                        "position": 10
                    },
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/interval_padding"
                },
                {
                    "type": "string?",
                    "inputBinding": {
                        "prefix": "--interval-set-rule",
                        "position": 10
                    },
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/interval_set_rule"
                },
                {
                    "type": "string?",
                    "inputBinding": {
                        "prefix": "--intervals",
                        "position": 10
                    },
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/intervals"
                },
                {
                    "type": "boolean?",
                    "inputBinding": {
                        "prefix": "--lenient",
                        "position": 10
                    },
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/lenient"
                },
                {
                    "type": "int?",
                    "inputBinding": {
                        "prefix": "--low-quality-tail",
                        "position": 10
                    },
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/low_quality_tail"
                },
                {
                    "type": "int?",
                    "inputBinding": {
                        "prefix": "--maximum-cycle-value",
                        "position": 10
                    },
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/maximum_cycle_value"
                },
                {
                    "type": "int?",
                    "inputBinding": {
                        "prefix": "--mismatches-context-size",
                        "position": 10
                    },
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/mismatches_context_size"
                },
                {
                    "type": "int?",
                    "inputBinding": {
                        "prefix": "--mismatches-default-quality",
                        "position": 10
                    },
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/mismatches_default_quality"
                },
                {
                    "type": "int?",
                    "inputBinding": {
                        "prefix": "--preserve-qscores-less-than",
                        "position": 10
                    },
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/preserve_qscores_less_than"
                },
                {
                    "type": "int?",
                    "inputBinding": {
                        "prefix": "--quantizing-levels",
                        "position": 10
                    },
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/quantizing_levels"
                },
                {
                    "type": "boolean?",
                    "inputBinding": {
                        "prefix": "--QUIET",
                        "position": 10
                    },
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/QUIET"
                },
                {
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
                    },
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/read_filter"
                },
                {
                    "type": "string?",
                    "inputBinding": {
                        "prefix": "--read-index",
                        "position": 10
                    },
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/read_index"
                },
                {
                    "type": "float?",
                    "inputBinding": {
                        "prefix": "--seconds-between-progress-updates",
                        "position": 10
                    },
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/seconds_between_progress_updates"
                },
                {
                    "type": "File?",
                    "inputBinding": {
                        "prefix": "--sequence-dictionary",
                        "position": 10
                    },
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/sequence_dictionary"
                },
                {
                    "type": "boolean?",
                    "inputBinding": {
                        "prefix": "--sites-only-vcf-output",
                        "position": 10
                    },
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/sites_only_vcf_output"
                },
                {
                    "type": "boolean?",
                    "inputBinding": {
                        "prefix": "--use-original-qualities",
                        "position": 10
                    },
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/use_original_qualities"
                },
                {
                    "type": "int?",
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/number_of_threads"
                },
                {
                    "type": "int?",
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/memory_per_job"
                },
                {
                    "type": "int?",
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/memory_overhead"
                },
                {
                    "type": "File?",
                    "secondaryFiles": [
                        ".idx"
                    ],
                    "inputBinding": {
                        "prefix": "--known-sites",
                        "position": 3
                    },
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/known_sites_2"
                }
            ],
            "outputs": [
                {
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    if(inputs.output_file_name){\n        return inputs.output_file_name\n    } else {\n        return inputs.input.basename.replace(/.bam/, '_bqsr.table')\n    }\n}"
                    },
                    "id": "#gatk_baserecalibrator_4.1.2.0.cwl/gatk_base_recalibrator_4_1_2_0/output"
                }
            ],
            "http://purl.org/dc/terms/contributor": [
                {
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:sumans@mskcc.org",
                            "class": "foaf:Person",
                            "http://xmlns.com/foaf/0.1/name": "Shalabh Suman"
                        }
                    ],
                    "class": "foaf:Organization",
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "baseCommand": [
                "gatk"
            ]
        }
    ],
    "cwlVersion": "v1.0"
}