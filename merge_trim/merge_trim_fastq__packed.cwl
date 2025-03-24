{
    "$graph": [
        {
            "class": "CommandLineTool",
            "id": "#fastp_0.24.0.cwl",
            "baseCommand": [
                "fastp"
            ],
            "inputs": [
                {
                    "id": "#fastp_0.24.0.cwl/fastp_0_24_0/memory_per_job",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory per job in megabytes"
                },
                {
                    "id": "#fastp_0.24.0.cwl/fastp_0_24_0/memory_overhead",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory overhead per job in megabytes"
                },
                {
                    "id": "#fastp_0.24.0.cwl/fastp_0_24_0/number_of_threads",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "worker thread number, default is 2 (int [=2])"
                },
                {
                    "id": "#fastp_0.24.0.cwl/fastp_0_24_0/read1_input",
                    "type": "File",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--in1"
                    },
                    "doc": "read1 input file name\n"
                },
                {
                    "id": "#fastp_0.24.0.cwl/fastp_0_24_0/read1_output_path",
                    "type": "string",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--out1"
                    },
                    "doc": "read1 output file name\n"
                },
                {
                    "id": "#fastp_0.24.0.cwl/fastp_0_24_0/read2_input",
                    "type": [
                        "null",
                        "File"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--in2"
                    },
                    "doc": "read2 input file name, for PE data\n"
                },
                {
                    "id": "#fastp_0.24.0.cwl/fastp_0_24_0/read2_output_path",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--out2"
                    },
                    "doc": "read2 output file name\n"
                },
                {
                    "id": "#fastp_0.24.0.cwl/fastp_0_24_0/unpaired1_path",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--unpaired1"
                    },
                    "doc": "for PE input, if read1 passed QC but read2 not, it will be written to unpaired1.\n"
                },
                {
                    "id": "#fastp_0.24.0.cwl/fastp_0_24_0/unpaired2_path",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--unpaired2"
                    },
                    "doc": "for PE input, if read2 passed QC but read1 not, it will be written to unpaired2.\n"
                },
                {
                    "id": "#fastp_0.24.0.cwl/fastp_0_24_0/failed_reads_path",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--failed_out"
                    },
                    "doc": "specify the file to store reads that cannot pass the filters.\n"
                },
                {
                    "id": "#fastp_0.24.0.cwl/fastp_0_24_0/read1_adapter_sequence",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--adapter_sequence"
                    },
                    "doc": "the adapter for read1. For SE data, if not specified, the adapter will be auto-detected. For PE data, this is used if R1/R2 are found not overlapped.\n"
                },
                {
                    "id": "#fastp_0.24.0.cwl/fastp_0_24_0/read2_adapter_sequence",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--adapter_sequence_r2"
                    },
                    "doc": "the adapter for read2. For PE data, this is used if R1/R2 are found not overlapped.\n"
                },
                {
                    "id": "#fastp_0.24.0.cwl/fastp_0_24_0/minimum_read_length",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--length_required"
                    },
                    "doc": "reads shorter than length_required will be discarded, default is 15.\n"
                },
                {
                    "id": "#fastp_0.24.0.cwl/fastp_0_24_0/maximum_read_length",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--length_limit"
                    },
                    "doc": "reads longer than length_limit will be discarded, default 0 means no limitation.\n"
                },
                {
                    "id": "#fastp_0.24.0.cwl/fastp_0_24_0/trim_tail1",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--trim_tail1"
                    },
                    "doc": "trimming how many bases in tail for read1, default is 0 (int [=0])"
                },
                {
                    "id": "#fastp_0.24.0.cwl/fastp_0_24_0/trim_tail2",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--trim_tail2"
                    },
                    "doc": "trimming how many bases in tail for read2. If it's not specified, it will follow read1's settings (int [=0])"
                },
                {
                    "id": "#fastp_0.24.0.cwl/fastp_0_24_0/max_len_read1",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--max_len1"
                    },
                    "doc": "if read1 is longer than max_len1, then trim read1 at its tail to make it as long as max_len1. Default 0 means no limitation"
                },
                {
                    "id": "#fastp_0.24.0.cwl/fastp_0_24_0/max_len_read2",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--max_len2"
                    },
                    "doc": "if read2 is longer than max_len2, then trim read2 at its tail to make it as long as max_len2. Default 0 means no limitation. If it's not specified, it will follow read1's settings"
                },
                {
                    "default": "fastp.json",
                    "id": "#fastp_0.24.0.cwl/fastp_0_24_0/json_output_path",
                    "type": "string",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--json"
                    },
                    "doc": "the json format report file name\n"
                },
                {
                    "default": "fastp.html",
                    "id": "#fastp_0.24.0.cwl/fastp_0_24_0/html_output_path",
                    "type": "string",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--html"
                    },
                    "doc": "the html format report file name\n"
                },
                {
                    "id": "#fastp_0.24.0.cwl/fastp_0_24_0/disable_quality_filtering",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--disable_quality_filtering"
                    },
                    "doc": "quality filtering is enabled by default. If this option is specified, quality filtering is disabled"
                },
                {
                    "id": "#fastp_0.24.0.cwl/fastp_0_24_0/disable_trim_poly_g",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--disable_trim_poly_g"
                    },
                    "doc": "disable polyG tail trimming, by default trimming is automatically enabled for Illumina NextSeq/NovaSeq data"
                },
                {
                    "id": "#fastp_0.24.0.cwl/fastp_0_24_0/disable_adapter_trimming",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--disable_adapter_trimming"
                    },
                    "doc": "adapter trimming is enabled by default. If this option is specified, adapter trimming is disabled"
                },
                {
                    "id": "#fastp_0.24.0.cwl/fastp_0_24_0/dont_eval_duplication",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--dont_eval_duplication"
                    },
                    "doc": "don't evaluate duplication rate to save time and use less memory."
                },
                {
                    "id": "#fastp_0.24.0.cwl/fastp_0_24_0/disable_length_filtering",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--disable_length_filtering"
                    },
                    "doc": "length filtering is enabled by default. If this option is specified, length filtering is disabled"
                },
                {
                    "id": "#fastp_0.24.0.cwl/fastp_0_24_0/verbose",
                    "type": [
                        "null",
                        "File"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--verbose"
                    },
                    "doc": "output verbose log information (i.e. when every 1M reads are processed)"
                }
            ],
            "doc": "Setup and execute Fastp",
            "label": "fastp_0.24.0",
            "arguments": [
                {
                    "position": 0,
                    "prefix": "--thread",
                    "valueFrom": "${\n    if(inputs.number_of_threads)\n        return inputs.number_of_threads\n    return (runtime.cores - 4)\n}"
                }
            ],
            "requirements": [
                {
                    "class": "ResourceRequirement",
                    "ramMin": 24000,
                    "coresMin": 8
                },
                {
                    "class": "DockerRequirement",
                    "dockerPull": "ghcr.io/msk-access/fastp:0.24.0--heae3180_1"
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
                        },
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:fraihaa@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Adrian Fraiha"
                        },
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
                    "http://usefulinc.com/ns/doap#name": "fastp",
                    "http://usefulinc.com/ns/doap#revision": "0.24.0"
                }
            ],
            "outputs": [
                {
                    "id": "#fastp_0.24.0.cwl/fastp_0_24_0/fastp_json_output",
                    "type": "File",
                    "outputBinding": {
                        "glob": "$(inputs.json_output_path)"
                    }
                },
                {
                    "id": "#fastp_0.24.0.cwl/fastp_0_24_0/fastp_html_output",
                    "type": "File",
                    "outputBinding": {
                        "glob": "$(inputs.html_output_path)"
                    }
                },
                {
                    "id": "#fastp_0.24.0.cwl/fastp_0_24_0/fastp_read1_output",
                    "type": "File",
                    "outputBinding": {
                        "glob": "$(inputs.read1_output_path)"
                    }
                },
                {
                    "id": "#fastp_0.24.0.cwl/fastp_0_24_0/fastp_read2_output",
                    "type": [
                        "null",
                        "File"
                    ],
                    "outputBinding": {
                        "glob": "$(inputs.read2_output_path)"
                    }
                },
                {
                    "id": "#fastp_0.24.0.cwl/fastp_0_24_0/fastp_unpaired1_output",
                    "type": [
                        "null",
                        "File"
                    ],
                    "outputBinding": {
                        "glob": "$(inputs.unpaired1_path)"
                    }
                },
                {
                    "id": "#fastp_0.24.0.cwl/fastp_0_24_0/fastp_unpaired2_output",
                    "type": [
                        "null",
                        "File"
                    ],
                    "outputBinding": {
                        "glob": "$(inputs.unpaired2_path)"
                    }
                }
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#merge_fastq_0.1.7.cwl",
            "baseCommand": [
                "merge_fastq"
            ],
            "inputs": [
                {
                    "id": "#merge_fastq_0.1.7.cwl/merge_fastq_0_1_7/memory_per_job",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory per job in megabytes"
                },
                {
                    "id": "#merge_fastq_0.1.7.cwl/merge_fastq_0_1_7/memory_overhead",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory overhead per job in megabytes"
                },
                {
                    "id": "#merge_fastq_0.1.7.cwl/merge_fastq_0_1_7/number_of_threads",
                    "type": [
                        "null",
                        "int"
                    ]
                },
                {
                    "id": "#merge_fastq_0.1.7.cwl/merge_fastq_0_1_7/fastq1",
                    "type": {
                        "type": "array",
                        "items": "File",
                        "inputBinding": {
                            "prefix": "--fastq1"
                        }
                    },
                    "inputBinding": {
                        "position": 0
                    },
                    "doc": "Full path to gziped READ1 fastq files, can be specified multiple times for example: --fastq1 test_part1_R1.fastq.gz --fastq1 test_part2_R1.fastq.gz [required]"
                },
                {
                    "id": "#merge_fastq_0.1.7.cwl/merge_fastq_0_1_7/fastq2",
                    "type": {
                        "type": "array",
                        "items": "File",
                        "inputBinding": {
                            "prefix": "--fastq2"
                        }
                    },
                    "inputBinding": {
                        "position": 1
                    },
                    "doc": "Full path to gziped READ2 fastq files, can be specified multiple times for example: --fastq1 test_part1_R2.fastq.gz --fastq1 test_part2_R2.fastq.gz [required]"
                },
                {
                    "id": "#merge_fastq_0.1.7.cwl/merge_fastq_0_1_7/output_path",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 2,
                        "prefix": "--output-path"
                    },
                    "doc": "Full path to write the output files (default: Current working directory)"
                },
                {
                    "id": "#merge_fastq_0.1.7.cwl/merge_fastq_0_1_7/out_fastq1_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 2,
                        "prefix": "--out-fastq1"
                    },
                    "doc": "Name of the merged output READ1 fastq file(default: merged_fastq_R1.fastq.gz)"
                },
                {
                    "id": "#merge_fastq_0.1.7.cwl/merge_fastq_0_1_7/out_fastq2_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 2,
                        "prefix": "--out-fastq2"
                    },
                    "doc": "Name of the merged output READ2 fastq file(default: merged_fastq_R2.fastq.gz)"
                }
            ],
            "outputs": [
                {
                    "id": "#merge_fastq_0.1.7.cwl/merge_fastq_0_1_7/merge_fastq_1",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    if(inputs.out_fastq1_name){\n        return inputs.out_fastq1_name\n    } else {\n        return 'merged_fastq_R1.fastq.gz'\n    }\n}"
                    }
                },
                {
                    "id": "#merge_fastq_0.1.7.cwl/merge_fastq_0_1_7/merge_fastq_2",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    if(inputs.out_fastq2_name){\n        return inputs.out_fastq2_name\n    } else {\n        return 'merged_fastq_R2.fastq.gz'\n    }\n}"
                    }
                }
            ],
            "requirements": [
                {
                    "class": "ResourceRequirement",
                    "ramMin": 48000,
                    "coresMin": 4
                },
                {
                    "class": "DockerRequirement",
                    "dockerPull": "ghcr.io/msk-access/merge_fastq:0.1.7"
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
                    "http://usefulinc.com/ns/doap#name": "merge_fastq",
                    "http://usefulinc.com/ns/doap#revision": "0.1.7"
                }
            ]
        },
        {
            "class": "Workflow",
            "id": "#main",
            "label": "merge_trim_fastq",
            "inputs": [
                {
                    "id": "#main/merge_fastq_fastq1",
                    "type": {
                        "type": "array",
                        "items": "File",
                        "inputBinding": {
                            "prefix": "--fastq1"
                        }
                    },
                    "doc": "Read 1 FASTQ Files that needs to merged, make sure to maintain the array order with Read 2 FASTQ files",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 321
                },
                {
                    "id": "#main/merge_fastq_fastq2",
                    "type": {
                        "type": "array",
                        "items": "File",
                        "inputBinding": {
                            "prefix": "--fastq2"
                        }
                    },
                    "doc": "Read 2 FASTQ Files that needs to merged, make sure to maintain the array order with Read 1 FASTQ files",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 214
                },
                {
                    "id": "#main/fastp_dont_eval_duplication",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "doc": "Disable Evaluation of Duplication (default:True)",
                    "https://www.sevenbridges.com/x": 327.28125,
                    "https://www.sevenbridges.com/y": 214
                },
                {
                    "id": "#main/fastp_disable_trim_poly_g",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "doc": "Disable Trim PolyG (default:True)",
                    "https://www.sevenbridges.com/x": 327.28125,
                    "https://www.sevenbridges.com/y": 321
                },
                {
                    "id": "#main/fastp_disable_quality_filtering",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "doc": "Disable Quality Filtering (default:True)",
                    "https://www.sevenbridges.com/x": 327.28125,
                    "https://www.sevenbridges.com/y": 428
                },
                {
                    "id": "#main/fastp_disable_length_filtering",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "doc": "Disable Length Trimming (default:True)",
                    "https://www.sevenbridges.com/x": 327.28125,
                    "https://www.sevenbridges.com/y": 535
                },
                {
                    "id": "#main/fastp_disable_adapter_trimming",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "doc": "Disable Adapter Trimming (default:True)",
                    "https://www.sevenbridges.com/x": 327.28125,
                    "https://www.sevenbridges.com/y": 642
                },
                {
                    "id": "#main/fastp_unpaired2_output_file_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 428
                },
                {
                    "id": "#main/fastp_unpaired1_output_file_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 535
                },
                {
                    "id": "#main/fastp_read2_output_file_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 642
                },
                {
                    "id": "#main/fastp_read1_output_file_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 749
                },
                {
                    "id": "#main/fastp_max_len_read2",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Max Lenght for Read 2 (default:95)",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 0
                },
                {
                    "id": "#main/fastp_max_len_read1",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Max Legth for READ 1 (default:95)",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 107
                }
            ],
            "outputs": [
                {
                    "id": "#main/fastp_unpaired2_output",
                    "outputSource": [
                        "#main/fastp_0_24_0/fastp_unpaired2_output"
                    ],
                    "type": [
                        "null",
                        "File"
                    ],
                    "https://www.sevenbridges.com/x": 1058.288818359375,
                    "https://www.sevenbridges.com/y": 107
                },
                {
                    "id": "#main/fastp_unpaired1_output",
                    "outputSource": [
                        "#main/fastp_0_24_0/fastp_unpaired1_output"
                    ],
                    "type": [
                        "null",
                        "File"
                    ],
                    "https://www.sevenbridges.com/x": 1058.288818359375,
                    "https://www.sevenbridges.com/y": 214
                },
                {
                    "id": "#main/fastp_read2_output",
                    "outputSource": [
                        "#main/fastp_0_24_0/fastp_read2_output"
                    ],
                    "type": [
                        "null",
                        "File"
                    ],
                    "https://www.sevenbridges.com/x": 1058.288818359375,
                    "https://www.sevenbridges.com/y": 321
                },
                {
                    "id": "#main/fastp_read1_output",
                    "outputSource": [
                        "#main/fastp_0_24_0/fastp_read1_output"
                    ],
                    "type": "File",
                    "https://www.sevenbridges.com/x": 1058.288818359375,
                    "https://www.sevenbridges.com/y": 428
                },
                {
                    "id": "#main/fastp_json_output",
                    "outputSource": [
                        "#main/fastp_0_24_0/fastp_json_output"
                    ],
                    "type": "File",
                    "https://www.sevenbridges.com/x": 1058.288818359375,
                    "https://www.sevenbridges.com/y": 535
                },
                {
                    "id": "#main/fastp_html_output",
                    "outputSource": [
                        "#main/fastp_0_24_0/fastp_html_output"
                    ],
                    "type": "File",
                    "https://www.sevenbridges.com/x": 1058.288818359375,
                    "https://www.sevenbridges.com/y": 642
                }
            ],
            "steps": [
                {
                    "id": "#main/merge_fastq_0_1_7",
                    "in": [
                        {
                            "id": "#main/merge_fastq_0_1_7/fastq1",
                            "source": [
                                "#main/merge_fastq_fastq1"
                            ]
                        },
                        {
                            "id": "#main/merge_fastq_0_1_7/fastq2",
                            "source": [
                                "#main/merge_fastq_fastq2"
                            ]
                        }
                    ],
                    "out": [
                        {
                            "id": "#main/merge_fastq_0_1_7/merge_fastq_1"
                        },
                        {
                            "id": "#main/merge_fastq_0_1_7/merge_fastq_2"
                        }
                    ],
                    "run": "#merge_fastq_0.1.7.cwl",
                    "https://www.sevenbridges.com/x": 327.28125,
                    "https://www.sevenbridges.com/y": 100
                },
                {
                    "id": "#main/fastp_0_24_0",
                    "in": [
                        {
                            "id": "#main/fastp_0_24_0/read1_input",
                            "source": "#main/merge_fastq_0_1_7/merge_fastq_1"
                        },
                        {
                            "id": "#main/fastp_0_24_0/read1_output_path",
                            "default": "trimmed_R1.fastq.gz",
                            "source": "#main/fastp_read1_output_file_name"
                        },
                        {
                            "id": "#main/fastp_0_24_0/read2_input",
                            "source": "#main/merge_fastq_0_1_7/merge_fastq_2"
                        },
                        {
                            "id": "#main/fastp_0_24_0/read2_output_path",
                            "default": "trimmed_R2.fastq.gz",
                            "source": "#main/fastp_read2_output_file_name"
                        },
                        {
                            "id": "#main/fastp_0_24_0/unpaired1_path",
                            "default": "unpaired_R1.fastq.gz",
                            "source": "#main/fastp_unpaired1_output_file_name"
                        },
                        {
                            "id": "#main/fastp_0_24_0/unpaired2_path",
                            "default": "unpaired_R2.fastq.gz",
                            "source": "#main/fastp_unpaired2_output_file_name"
                        },
                        {
                            "id": "#main/fastp_0_24_0/trim_tail2",
                            "default": -10
                        },
                        {
                            "id": "#main/fastp_0_24_0/max_len_read1",
                            "default": 95,
                            "source": "#main/fastp_max_len_read1"
                        },
                        {
                            "id": "#main/fastp_0_24_0/max_len_read2",
                            "default": 95,
                            "source": "#main/fastp_max_len_read2"
                        },
                        {
                            "id": "#main/fastp_0_24_0/disable_quality_filtering",
                            "default": true,
                            "source": "#main/fastp_disable_quality_filtering"
                        },
                        {
                            "id": "#main/fastp_0_24_0/disable_trim_poly_g",
                            "default": true,
                            "source": "#main/fastp_disable_trim_poly_g"
                        },
                        {
                            "id": "#main/fastp_0_24_0/disable_adapter_trimming",
                            "default": true,
                            "source": "#main/fastp_disable_adapter_trimming"
                        },
                        {
                            "id": "#main/fastp_0_24_0/dont_eval_duplication",
                            "default": true,
                            "source": "#main/fastp_dont_eval_duplication"
                        },
                        {
                            "id": "#main/fastp_0_24_0/disable_length_filtering",
                            "default": true,
                            "source": "#main/fastp_disable_length_filtering"
                        }
                    ],
                    "out": [
                        {
                            "id": "#main/fastp_0_24_0/fastp_json_output"
                        },
                        {
                            "id": "#main/fastp_0_24_0/fastp_html_output"
                        },
                        {
                            "id": "#main/fastp_0_24_0/fastp_read1_output"
                        },
                        {
                            "id": "#main/fastp_0_24_0/fastp_read2_output"
                        },
                        {
                            "id": "#main/fastp_0_24_0/fastp_unpaired1_output"
                        },
                        {
                            "id": "#main/fastp_0_24_0/fastp_unpaired2_output"
                        }
                    ],
                    "run": "#fastp_0.24.0.cwl",
                    "label": "fastp_0.24.0",
                    "https://www.sevenbridges.com/x": 583.671875,
                    "https://www.sevenbridges.com/y": 290.5
                }
            ],
            "requirements": [],
            "https://schema.org/author": [
                {
                    "class": "https://schema.org/Person",
                    "https://schema.org/email": "mailto:shahr2@mskcc.org",
                    "https://schema.org/name": "Ronak Shah"
                }
            ],
            "https://schema.org/citation": "",
            "https://schema.org/codeRepository": "https://github.com/msk-access/cwl_subworkflows/merge_trim",
            "https://schema.org/contributor": [
                {
                    "class": "https://schema.org/Person",
                    "https://schema.org/email": "mailto:shahr2@mskcc.org",
                    "https://schema.org/name": "Ronak Shah"
                }
            ],
            "https://schema.org/dateCreated": "2025-03-24",
            "https://schema.org/license": "https://spdx.org/licenses/Apache-2.0"
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
