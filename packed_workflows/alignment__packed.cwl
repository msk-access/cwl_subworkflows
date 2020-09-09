{
    "cwlVersion": "v1.0",
    "$schemas": [
        "http://xmlns.com/foaf/spec/20140114.rdf",
        "http://dublincore.org/2012/06/14/dcterms.rdf",
        "http://usefulinc.com/ns/doap#"
    ],
    "$graph": [
        {
            "steps": [
                {
                    "id": "#main/bwa_mem_0_7_5a",
                    "in": [
                        {
                            "id": "#main/bwa_mem_0_7_5a/M",
                            "source": "#main/M"
                        },
                        {
                            "id": "#main/bwa_mem_0_7_5a/P",
                            "source": "#main/P"
                        },
                        {
                            "id": "#main/bwa_mem_0_7_5a/output",
                            "source": "#main/output"
                        },
                        {
                            "id": "#main/bwa_mem_0_7_5a/reads",
                            "source": [
                                "#main/reads"
                            ]
                        },
                        {
                            "id": "#main/bwa_mem_0_7_5a/reference",
                            "source": "#main/reference"
                        }
                    ],
                    "https://www.sevenbridges.com/y": 695.5,
                    "https://www.sevenbridges.com/x": 319.171875,
                    "label": "bwa-mem",
                    "run": "#bwa_mem_0.7.5a.cwl",
                    "out": [
                        {
                            "id": "#main/bwa_mem_0_7_5a/sam"
                        }
                    ]
                },
                {
                    "id": "#main/picard_add_or_replace_read_groups_1_96",
                    "in": [
                        {
                            "id": "#main/picard_add_or_replace_read_groups_1_96/input",
                            "source": "#main/bwa_mem_0_7_5a/sam"
                        },
                        {
                            "id": "#main/picard_add_or_replace_read_groups_1_96/output_file_name",
                            "source": "#main/output_file_name"
                        },
                        {
                            "id": "#main/picard_add_or_replace_read_groups_1_96/sort_order",
                            "source": "#main/sort_order"
                        },
                        {
                            "id": "#main/picard_add_or_replace_read_groups_1_96/read_group_identifier",
                            "source": "#main/read_group_identifier"
                        },
                        {
                            "id": "#main/picard_add_or_replace_read_groups_1_96/read_group_sequencing_center",
                            "source": "#main/read_group_sequencing_center"
                        },
                        {
                            "id": "#main/picard_add_or_replace_read_groups_1_96/read_group_library",
                            "source": "#main/read_group_library"
                        },
                        {
                            "id": "#main/picard_add_or_replace_read_groups_1_96/read_group_platform_unit",
                            "source": "#main/read_group_platform_unit"
                        },
                        {
                            "id": "#main/picard_add_or_replace_read_groups_1_96/read_group_sample_name",
                            "source": "#main/read_group_sample_name"
                        },
                        {
                            "id": "#main/picard_add_or_replace_read_groups_1_96/read_group_sequencing_platform",
                            "source": "#main/read_group_sequencing_platform"
                        },
                        {
                            "id": "#main/picard_add_or_replace_read_groups_1_96/create_bam_index",
                            "source": "#main/create_bam_index"
                        },
                        {
                            "id": "#main/picard_add_or_replace_read_groups_1_96/temporary_directory",
                            "source": "#main/temporary_directory"
                        }
                    ],
                    "https://www.sevenbridges.com/y": 525.5,
                    "https://www.sevenbridges.com/x": 520.293212890625,
                    "label": "picard_add_or_replace_read_groups_1.96",
                    "run": "#picard_add_or_replace_read_groups_1.96.cwl",
                    "out": [
                        {
                            "id": "#main/picard_add_or_replace_read_groups_1_96/bam"
                        }
                    ]
                }
            ],
            "id": "#main",
            "outputs": [
                {
                    "id": "#main/bam",
                    "type": "File",
                    "https://www.sevenbridges.com/x": 922.9844970703125,
                    "https://www.sevenbridges.com/y": 588.5,
                    "secondaryFiles": [
                        "^.bai"
                    ],
                    "outputSource": [
                        "#main/picard_add_or_replace_read_groups_1_96/bam"
                    ]
                }
            ],
            "$namespaces": {
                "sbg": "https://www.sevenbridges.com/"
            },
            "requirements": [],
            "label": "alignment",
            "inputs": [
                {
                    "id": "#main/reference",
                    "type": "File",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 107,
                    "secondaryFiles": [
                        ".fai",
                        "^.dict",
                        ".amb",
                        ".ann",
                        ".bwt",
                        ".pac",
                        ".sa"
                    ]
                },
                {
                    "id": "#main/reads",
                    "type": {
                        "type": "array",
                        "items": "File"
                    },
                    "https://www.sevenbridges.com/y": 214,
                    "https://www.sevenbridges.com/x": 0
                },
                {
                    "id": "#main/P",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "https://www.sevenbridges.com/y": 963,
                    "https://www.sevenbridges.com/x": 0
                },
                {
                    "id": "#main/M",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "https://www.sevenbridges.com/y": 1177,
                    "https://www.sevenbridges.com/x": 0
                },
                {
                    "id": "#main/read_group_identifier",
                    "type": "string",
                    "https://www.sevenbridges.com/y": 856,
                    "https://www.sevenbridges.com/x": 0
                },
                {
                    "id": "#main/sort_order",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/y": 0,
                    "https://www.sevenbridges.com/x": 0
                },
                {
                    "id": "#main/create_bam_index",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "https://www.sevenbridges.com/y": 560.5,
                    "https://www.sevenbridges.com/x": 319.171875
                },
                {
                    "id": "#main/read_group_sequencing_platform",
                    "type": "string",
                    "https://www.sevenbridges.com/y": 428,
                    "https://www.sevenbridges.com/x": 0
                },
                {
                    "id": "#main/read_group_sample_name",
                    "type": "string",
                    "https://www.sevenbridges.com/y": 535,
                    "https://www.sevenbridges.com/x": 0
                },
                {
                    "id": "#main/read_group_platform_unit",
                    "type": "string",
                    "https://www.sevenbridges.com/y": 642,
                    "https://www.sevenbridges.com/x": 0
                },
                {
                    "id": "#main/read_group_library",
                    "type": "string",
                    "https://www.sevenbridges.com/y": 749,
                    "https://www.sevenbridges.com/x": 0
                },
                {
                    "id": "#main/output_file_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/y": 453.5,
                    "https://www.sevenbridges.com/x": 319.171875
                },
                {
                    "id": "#main/output",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/y": 1070,
                    "https://www.sevenbridges.com/x": 0
                },
                {
                    "id": "#main/read_group_sequencing_center",
                    "type": "string",
                    "https://www.sevenbridges.com/y": 326.5912170410156,
                    "https://www.sevenbridges.com/x": 5.036951541900635
                },
                {
                    "id": "#main/temporary_directory",
                    "type": [
                        "null",
                        "string"
                    ],
                    "label": "picard_add_or_replace_read_group_1.96_tmpdir",
                    "https://www.sevenbridges.com/y": -127.21382141113281,
                    "https://www.sevenbridges.com/x": 3.3808727264404297
                }
            ],
            "class": "Workflow"
        },
        {
            "id": "#bwa_mem_0.7.5a.cwl",
            "outputs": [
                {
                    "id": "#bwa_mem_0.7.5a.cwl/sam",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n  if (inputs.output)\n    return inputs.output;\n  return inputs.reads[0].basename.replace(/(fastq.gz)|(fq.gz)/, 'sam');\n}"
                    }
                }
            ],
            "http://purl.org/dc/terms/contributor": [
                {
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:chunj@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Jaeyoung Chun",
                            "class": "foaf:Person"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center",
                    "class": "foaf:Organization"
                }
            ],
            "label": "bwa-mem",
            "http://usefulinc.com/ns/doap#release": [
                {
                    "http://usefulinc.com/ns/doap#name": "bwa-mem",
                    "class": "doap:Version",
                    "http://usefulinc.com/ns/doap#revision": "0.7.5a"
                },
                {
                    "http://usefulinc.com/ns/doap#name": "bwa-mem-cwl",
                    "class": "doap:Version",
                    "http://usefulinc.com/ns/doap#revision": "1.0.0"
                }
            ],
            "inputs": [
                {
                    "id": "#bwa_mem_0.7.5a.cwl/A",
                    "type": "int?",
                    "inputBinding": {
                        "prefix": "-A",
                        "position": 0
                    },
                    "doc": "INT score for a sequence match [1]"
                },
                {
                    "id": "#bwa_mem_0.7.5a.cwl/B",
                    "type": "int?",
                    "inputBinding": {
                        "prefix": "-B",
                        "position": 0
                    },
                    "doc": "INT penalty for a mismatch [4]"
                },
                {
                    "id": "#bwa_mem_0.7.5a.cwl/C",
                    "default": false,
                    "inputBinding": {
                        "prefix": "-C",
                        "position": 0
                    },
                    "type": "boolean?",
                    "doc": "append FASTA/FASTQ comment to SAM output"
                },
                {
                    "id": "#bwa_mem_0.7.5a.cwl/E",
                    "type": "int?",
                    "inputBinding": {
                        "prefix": "-E",
                        "position": 0
                    },
                    "doc": "INT gap extension penalty; a gap of size k cost {-O} + {-E}*k [1]"
                },
                {
                    "id": "#bwa_mem_0.7.5a.cwl/L",
                    "type": "int?",
                    "inputBinding": {
                        "prefix": "-L",
                        "position": 0
                    },
                    "doc": "INT penalty for clipping [5]"
                },
                {
                    "id": "#bwa_mem_0.7.5a.cwl/M",
                    "default": true,
                    "inputBinding": {
                        "prefix": "-M",
                        "position": 0
                    },
                    "type": "boolean?",
                    "doc": "mark shorter split hits as secondary (for Picard/GATK compatibility)"
                },
                {
                    "id": "#bwa_mem_0.7.5a.cwl/O",
                    "type": "int?",
                    "inputBinding": {
                        "prefix": "-O",
                        "position": 0
                    },
                    "doc": "INT gap open penalty [6]"
                },
                {
                    "id": "#bwa_mem_0.7.5a.cwl/P",
                    "default": false,
                    "inputBinding": {
                        "prefix": "-P",
                        "position": 0
                    },
                    "type": "boolean?",
                    "doc": "skip pairing; mate rescue performed unless -S also in use"
                },
                {
                    "id": "#bwa_mem_0.7.5a.cwl/R",
                    "type": "string?",
                    "inputBinding": {
                        "prefix": "-R",
                        "position": 0
                    },
                    "doc": "STR read group header line such as '@RG\\tID -foo\\tSM -bar' [null]"
                },
                {
                    "id": "#bwa_mem_0.7.5a.cwl/S",
                    "default": false,
                    "inputBinding": {
                        "prefix": "-S",
                        "position": 0
                    },
                    "type": "boolean?",
                    "doc": "skip mate rescue"
                },
                {
                    "id": "#bwa_mem_0.7.5a.cwl/T",
                    "type": "int?",
                    "inputBinding": {
                        "prefix": "-T",
                        "position": 0
                    },
                    "doc": "INT minimum score to output [30]"
                },
                {
                    "id": "#bwa_mem_0.7.5a.cwl/U",
                    "type": "int?",
                    "inputBinding": {
                        "prefix": "-U",
                        "position": 0
                    },
                    "doc": "INT penalty for an unpaired read pair [17]"
                },
                {
                    "id": "#bwa_mem_0.7.5a.cwl/a",
                    "default": false,
                    "inputBinding": {
                        "prefix": "-a",
                        "position": 0
                    },
                    "type": "boolean?",
                    "doc": "output all alignments for SE or unpaired PE"
                },
                {
                    "id": "#bwa_mem_0.7.5a.cwl/c",
                    "type": "int?",
                    "inputBinding": {
                        "prefix": "-c",
                        "position": 0
                    },
                    "doc": "INT skip seeds with more than INT occurrences [10000]"
                },
                {
                    "id": "#bwa_mem_0.7.5a.cwl/d",
                    "type": "int?",
                    "inputBinding": {
                        "prefix": "-d",
                        "position": 0
                    },
                    "doc": "INT off-diagonal X-dropoff [100]"
                },
                {
                    "id": "#bwa_mem_0.7.5a.cwl/k",
                    "type": "int?",
                    "inputBinding": {
                        "prefix": "-k",
                        "position": 0
                    },
                    "doc": "INT minimum seed length [19]"
                },
                {
                    "id": "#bwa_mem_0.7.5a.cwl/output",
                    "type": "string?"
                },
                {
                    "id": "#bwa_mem_0.7.5a.cwl/p",
                    "type": "boolean?",
                    "inputBinding": {
                        "prefix": "-p",
                        "position": 0
                    },
                    "doc": "first query file consists of interleaved paired-end sequences"
                },
                {
                    "id": "#bwa_mem_0.7.5a.cwl/r",
                    "type": "float?",
                    "inputBinding": {
                        "prefix": "-r",
                        "position": 0
                    },
                    "doc": "FLOAT look for internal seeds inside a seed longer than {-k} * FLOAT [1.5]"
                },
                {
                    "id": "#bwa_mem_0.7.5a.cwl/v",
                    "type": "int?",
                    "inputBinding": {
                        "prefix": "-v",
                        "position": 0
                    },
                    "doc": "INT verbose level - 1=error, 2=warning, 3=message, 4+=debugging [3]"
                },
                {
                    "id": "#bwa_mem_0.7.5a.cwl/w",
                    "type": "int?",
                    "inputBinding": {
                        "prefix": "-w",
                        "position": 0
                    },
                    "doc": "INT band width for banded alignment [100]"
                },
                {
                    "id": "#bwa_mem_0.7.5a.cwl/reads",
                    "type": "File[]",
                    "inputBinding": {
                        "position": 3
                    }
                },
                {
                    "id": "#bwa_mem_0.7.5a.cwl/reference",
                    "type": "File",
                    "inputBinding": {
                        "position": 2
                    },
                    "secondaryFiles": [
                        ".amb",
                        ".ann",
                        ".bwt",
                        ".pac",
                        ".sa",
                        ".fai"
                    ]
                }
            ],
            "arguments": [
                {
                    "prefix": "-t",
                    "valueFrom": "$(runtime.cores)",
                    "position": 0
                }
            ],
            "doc": "bwa mem\n",
            "requirements": [
                {
                    "ramMin": 32000,
                    "coresMin": 16,
                    "class": "ResourceRequirement"
                },
                {
                    "dockerPull": "mskcc/bwa_mem:0.7.5a",
                    "class": "DockerRequirement"
                },
                {
                    "class": "InlineJavascriptRequirement"
                }
            ],
            "http://purl.org/dc/terms/creator": [
                {
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:chunj@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Jaeyoung Chun",
                            "class": "foaf:Person"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center",
                    "class": "foaf:Organization"
                }
            ],
            "baseCommand": [
                "bwa",
                "mem"
            ],
            "stdout": "${\n  if (inputs.output)\n    return inputs.output;\n  return inputs.reads[0].basename.replace(/(fastq.gz)|(fq.gz)/, 'sam');\n}",
            "class": "CommandLineTool"
        },
        {
            "id": "#picard_add_or_replace_read_groups_1.96.cwl",
            "outputs": [
                {
                    "id": "#picard_add_or_replace_read_groups_1.96.cwl/picard_add_or_replace_read_groups_1_96/bam",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    if(inputs.output_file_name)\n        return inputs.output_file_name;\n    return inputs.input.basename.replace(/.sam$/, '_srt.bam');\n}"
                    },
                    "secondaryFiles": [
                        "^.bai"
                    ]
                }
            ],
            "http://purl.org/dc/terms/contributor": [
                {
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:shahr2@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Ronak Shah",
                            "class": "foaf:Person"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center",
                    "class": "foaf:Organization"
                }
            ],
            "arguments": [
                {
                    "valueFrom": "${\n  if(inputs.memory_per_job && inputs.memory_overhead) {\n    if(inputs.memory_per_job % 1000 == 0) {\n      return \"-Xmx\" + (inputs.memory_per_job/1000).toString() + \"G\"\n    }\n    else {\n      return \"-Xmx\" + Math.floor((inputs.memory_per_job/1000)).toString() + \"G\"\n    }\n  }\n  else if (inputs.memory_per_job && !inputs.memory_overhead){\n    if(inputs.memory_per_job % 1000 == 0) {\n      return \"-Xmx\" + (inputs.memory_per_job/1000).toString() + \"G\"\n    }\n    else {\n      return \"-Xmx\" + Math.floor((inputs.memory_per_job/1000)).toString() + \"G\"\n    }\n  }\n  else if(!inputs.memory_per_job && inputs.memory_overhead){\n    return \"-Xmx15G\"\n  }\n  else {\n      return \"-Xmx15G\"\n  }\n}",
                    "position": 0
                },
                {
                    "shellQuote": false,
                    "valueFrom": "-XX:-UseGCOverheadLimit",
                    "position": 0
                },
                {
                    "separate": false,
                    "prefix": "-Djava.io.tmpdir=",
                    "valueFrom": "${\n    if(inputs.temporary_directory)\n        return inputs.temporary_directory;\n      return runtime.tmpdir\n}",
                    "position": 0
                },
                {
                    "prefix": "-jar",
                    "valueFrom": "/usr/local/bin/AddOrReplaceReadGroups.jar",
                    "position": 0
                },
                {
                    "separate": false,
                    "prefix": "TMP_DIR=",
                    "valueFrom": "${\n    if(inputs.temporary_directory)\n        return inputs.temporary_directory;\n      return runtime.tmpdir\n}",
                    "position": 0
                },
                {
                    "separate": false,
                    "prefix": "O=",
                    "valueFrom": "${\n    if(inputs.output_file_name)\n        return inputs.output_file_name;\n      return inputs.input.basename.replace(/.sam$/, '_srt.bam');\n}",
                    "position": 0
                }
            ],
            "baseCommand": [
                "java"
            ],
            "requirements": [
                {
                    "class": "ShellCommandRequirement"
                },
                {
                    "ramMin": 25000,
                    "coresMin": 2,
                    "class": "ResourceRequirement"
                },
                {
                    "dockerPull": "mskaccess/picard_1.96:0.6.3",
                    "class": "DockerRequirement"
                },
                {
                    "class": "InlineJavascriptRequirement"
                }
            ],
            "label": "picard_add_or_replace_read_groups_1.96",
            "http://purl.org/dc/terms/creator": [
                {
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:shahr2@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Ronak Shah",
                            "class": "foaf:Person"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center",
                    "class": "foaf:Organization"
                }
            ],
            "inputs": [
                {
                    "id": "#picard_add_or_replace_read_groups_1.96.cwl/picard_add_or_replace_read_groups_1_96/memory_per_job",
                    "type": "int?",
                    "doc": "Memory per job in megabytes"
                },
                {
                    "id": "#picard_add_or_replace_read_groups_1.96.cwl/picard_add_or_replace_read_groups_1_96/memory_overhead",
                    "type": "int?",
                    "doc": "Memory overhead per job in megabytes"
                },
                {
                    "id": "#picard_add_or_replace_read_groups_1.96.cwl/picard_add_or_replace_read_groups_1_96/number_of_threads",
                    "type": "int?"
                },
                {
                    "id": "#picard_add_or_replace_read_groups_1.96.cwl/picard_add_or_replace_read_groups_1_96/input",
                    "type": "File",
                    "inputBinding": {
                        "separate": false,
                        "prefix": "I=",
                        "position": 0
                    },
                    "doc": "Input file ( sam).  Required."
                },
                {
                    "id": "#picard_add_or_replace_read_groups_1.96.cwl/picard_add_or_replace_read_groups_1_96/output_file_name",
                    "type": "string?",
                    "doc": "Output file name (bam or sam). Not Required"
                },
                {
                    "id": "#picard_add_or_replace_read_groups_1.96.cwl/picard_add_or_replace_read_groups_1_96/sort_order",
                    "type": "string?",
                    "inputBinding": {
                        "separate": false,
                        "prefix": "SO=",
                        "position": 0
                    },
                    "doc": "Optional sort order to output in. If not supplied OUTPUT is in the same order as INPUT.Default value: null. Possible values: {unsorted, queryname, coordinate}"
                },
                {
                    "id": "#picard_add_or_replace_read_groups_1.96.cwl/picard_add_or_replace_read_groups_1_96/read_group_identifier",
                    "type": "string",
                    "inputBinding": {
                        "separate": false,
                        "prefix": "RGID=",
                        "position": 0
                    },
                    "doc": "Read Group ID  Default value: 1. This option can be set to 'null' to clear the default value  Required"
                },
                {
                    "id": "#picard_add_or_replace_read_groups_1.96.cwl/picard_add_or_replace_read_groups_1_96/read_group_sequencing_center",
                    "type": "string",
                    "inputBinding": {
                        "separate": false,
                        "prefix": "RGCN=",
                        "position": 0
                    },
                    "doc": "Read Group sequencing center name  Default value: null. Required"
                },
                {
                    "id": "#picard_add_or_replace_read_groups_1.96.cwl/picard_add_or_replace_read_groups_1_96/read_group_library",
                    "type": "string",
                    "inputBinding": {
                        "separate": false,
                        "prefix": "RGLB=",
                        "position": 0
                    },
                    "doc": "Read Group Library.  Required"
                },
                {
                    "id": "#picard_add_or_replace_read_groups_1.96.cwl/picard_add_or_replace_read_groups_1_96/read_group_platform_unit",
                    "type": "string",
                    "inputBinding": {
                        "separate": false,
                        "prefix": "RGPU=",
                        "position": 0
                    },
                    "doc": "Read Group platform unit (eg. run barcode)  Required."
                },
                {
                    "id": "#picard_add_or_replace_read_groups_1.96.cwl/picard_add_or_replace_read_groups_1_96/read_group_sample_name",
                    "type": "string",
                    "inputBinding": {
                        "separate": false,
                        "prefix": "RGSM=",
                        "position": 0
                    },
                    "doc": "Read Group sample name.  Required"
                },
                {
                    "id": "#picard_add_or_replace_read_groups_1.96.cwl/picard_add_or_replace_read_groups_1_96/read_group_sequencing_platform",
                    "type": "string",
                    "inputBinding": {
                        "separate": false,
                        "prefix": "RGPL=",
                        "position": 0
                    },
                    "doc": "Read Group platform (e.g. illumina, solid)  Required."
                },
                {
                    "id": "#picard_add_or_replace_read_groups_1.96.cwl/picard_add_or_replace_read_groups_1_96/read_group_description",
                    "type": "string?",
                    "inputBinding": {
                        "separate": false,
                        "prefix": "RGDS=",
                        "position": 0
                    },
                    "doc": "Read Group description  Default value: null."
                },
                {
                    "id": "#picard_add_or_replace_read_groups_1.96.cwl/picard_add_or_replace_read_groups_1_96/read_group_run_date",
                    "type": "string?",
                    "inputBinding": {
                        "separate": false,
                        "prefix": "RGDT=",
                        "position": 0
                    },
                    "doc": "Read Group run date  Default value: null."
                },
                {
                    "id": "#picard_add_or_replace_read_groups_1.96.cwl/picard_add_or_replace_read_groups_1_96/validation_stringency",
                    "type": "string?",
                    "inputBinding": {
                        "separate": false,
                        "prefix": "VALIDATION_STRINGENCY=",
                        "position": 0
                    },
                    "doc": "Validation stringency for all SAM files read by this program.  Setting stringency to SILENT can improve performance when processing a BAM file in which variable-length data (read, qualities, tags) do not otherwise need to be decoded.  Default value: STRICT. This option can be set to 'null' to clear the default value. Possible values: {STRICT,LENIENT, SILENT}"
                },
                {
                    "id": "#picard_add_or_replace_read_groups_1.96.cwl/picard_add_or_replace_read_groups_1_96/bam_compression_level",
                    "type": "int?",
                    "inputBinding": {
                        "separate": false,
                        "prefix": "COMPRESSION_LEVEL=",
                        "position": 0
                    },
                    "doc": "Compression level for all compressed files created (e.g. BAM and GELI).  Default value:5. This option can be set to 'null' to clear the default value."
                },
                {
                    "id": "#picard_add_or_replace_read_groups_1.96.cwl/picard_add_or_replace_read_groups_1_96/create_bam_index",
                    "default": true,
                    "inputBinding": {
                        "prefix": "CREATE_INDEX=true",
                        "position": 0
                    },
                    "type": "boolean?",
                    "doc": "Whether to create a BAM index when writing a coordinate-sorted BAM file.  Default value:false. This option can be set to 'null' to clear the default value. Possible values:{true, false}"
                },
                {
                    "id": "#picard_add_or_replace_read_groups_1.96.cwl/picard_add_or_replace_read_groups_1_96/temporary_directory",
                    "type": "string?",
                    "doc": "Default value: null. This option may be specified 0 or more times."
                }
            ],
            "class": "CommandLineTool",
            "http://usefulinc.com/ns/doap#release": [
                {
                    "http://usefulinc.com/ns/doap#name": "picard",
                    "class": "doap:Version",
                    "http://usefulinc.com/ns/doap#revision": 1.96
                }
            ]
        }
    ]
}