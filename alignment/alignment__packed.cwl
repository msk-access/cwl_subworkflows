{
    "$graph": [
        {
            "class": "Workflow",
            "label": "alignment",
            "requirements": [],
            "inputs": [
                {
                    "id": "#main/reference",
                    "type": "File",
                    "secondaryFiles": [
                        ".fai",
                        "^.dict",
                        ".amb",
                        ".ann",
                        ".bwt",
                        ".pac",
                        ".sa"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 107
                },
                {
                    "id": "#main/reads",
                    "type": {
                        "type": "array",
                        "items": "File"
                    },
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 214
                },
                {
                    "id": "#main/P",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 963
                },
                {
                    "id": "#main/M",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1177
                },
                {
                    "id": "#main/read_group_identifier",
                    "type": "string",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 856
                },
                {
                    "id": "#main/sort_order",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 0
                },
                {
                    "id": "#main/create_bam_index",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "https://www.sevenbridges.com/x": 319.171875,
                    "https://www.sevenbridges.com/y": 560.5
                },
                {
                    "id": "#main/read_group_sequencing_platform",
                    "type": "string",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 428
                },
                {
                    "id": "#main/read_group_sample_name",
                    "type": "string",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 535
                },
                {
                    "id": "#main/read_group_platform_unit",
                    "type": "string",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 642
                },
                {
                    "id": "#main/read_group_library",
                    "type": "string",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 749
                },
                {
                    "id": "#main/output_file_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 319.171875,
                    "https://www.sevenbridges.com/y": 453.5
                },
                {
                    "id": "#main/output",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1070
                },
                {
                    "id": "#main/read_group_sequencing_center",
                    "type": "string",
                    "https://www.sevenbridges.com/x": 5.036951541900635,
                    "https://www.sevenbridges.com/y": 326.5912170410156
                },
                {
                    "id": "#main/temporary_directory",
                    "label": "picard_add_or_replace_read_group_1.96_tmpdir",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 3.3808727264404297,
                    "https://www.sevenbridges.com/y": -127.21382141113281
                }
            ],
            "outputs": [
                {
                    "id": "#main/picard_add_or_replace_read_groups_bam",
                    "type": "File",
                    "outputSource": [
                        "#main/picard_add_or_replace_read_groups_1_96/picard_add_or_replace_read_groups_bam"
                    ],
                    "https://www.sevenbridges.com/x": 907.4813842773438,
                    "https://www.sevenbridges.com/y": 391.4794921875
                }
            ],
            "steps": [
                {
                    "id": "#main/bwa_mem_0_7_5a",
                    "label": "bwa-mem",
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
                    "run": "#bwa_mem_0.7.5a.cwl",
                    "out": [
                        {
                            "id": "#main/bwa_mem_0_7_5a/sam"
                        }
                    ],
                    "https://www.sevenbridges.com/x": 319.171875,
                    "https://www.sevenbridges.com/y": 695.5
                },
                {
                    "id": "#main/picard_add_or_replace_read_groups_1_96",
                    "label": "picard_add_or_replace_read_groups_1.96",
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
                    "run": "#picard_add_or_replace_read_groups_1.96.cwl",
                    "out": [
                        {
                            "id": "#main/picard_add_or_replace_read_groups_1_96/picard_add_or_replace_read_groups_bam"
                        }
                    ],
                    "https://www.sevenbridges.com/x": 650.7478637695312,
                    "https://www.sevenbridges.com/y": 501.9268493652344
                }
            ],
            "id": "#main",
            "https://schema.org/author": [
                {
                    "class": "https://schema.org/Person",
                    "https://schema.org/email": "mailto:sumans@mskcc.org",
                    "https://schema.org/identifier": "",
                    "https://schema.org/name": "Shalabh Suman"
                },
                {
                    "class": "https://schema.org/Person",
                    "https://schema.org/email": "mailto:johnsoni@mskcc.org",
                    "https://schema.org/identifier": "",
                    "https://schema.org/name": "Ian Jonhnson"
                }
            ],
            "https://schema.org/citation": "",
            "https://schema.org/codeRepository": "https://github.com/msk-access/cwl_subworkflows/alignment",
            "https://schema.org/contributor": [
                {
                    "class": "https://schema.org/Person",
                    "https://schema.org/email": "mailto:johnsoni@mskcc.org",
                    "https://schema.org/identifier": "",
                    "https://schema.org/name": "Ian Jonhnson"
                },
                {
                    "class": "https://schema.org/Person",
                    "https://schema.org/email": "mailto:shahr2@mskcc.org",
                    "https://schema.org/identifier": "https://orcid.org/0000-0001-9042-6213",
                    "https://schema.org/name": "Ronak Shah"
                },
                {
                    "class": "https://schema.org/Person",
                    "https://schema.org/email": "mailto:sumans@mskcc.org",
                    "https://schema.org/identifier": "",
                    "https://schema.org/name": "Shalabh Suman"
                }
            ],
            "https://schema.org/dateCreated": "2019-10-01",
            "https://schema.org/license": "https://spdx.org/licenses/Apache-2.0",
            "$namespaces": {
                "s": "https://schema.org/",
                "sbg": "https://www.sevenbridges.com/"
            }
        },
        {
            "class": "CommandLineTool",
            "baseCommand": [
                "bwa",
                "mem"
            ],
            "inputs": [
                {
                    "id": "#bwa_mem_0.7.5a.cwl/A",
                    "type": "int?",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-A"
                    },
                    "doc": "INT score for a sequence match [1]"
                },
                {
                    "id": "#bwa_mem_0.7.5a.cwl/B",
                    "type": "int?",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-B"
                    },
                    "doc": "INT penalty for a mismatch [4]"
                },
                {
                    "default": false,
                    "id": "#bwa_mem_0.7.5a.cwl/C",
                    "type": "boolean?",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-C"
                    },
                    "doc": "append FASTA/FASTQ comment to SAM output"
                },
                {
                    "id": "#bwa_mem_0.7.5a.cwl/E",
                    "type": "int?",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-E"
                    },
                    "doc": "INT gap extension penalty; a gap of size k cost {-O} + {-E}*k [1]"
                },
                {
                    "id": "#bwa_mem_0.7.5a.cwl/L",
                    "type": "int?",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-L"
                    },
                    "doc": "INT penalty for clipping [5]"
                },
                {
                    "default": true,
                    "id": "#bwa_mem_0.7.5a.cwl/M",
                    "type": "boolean?",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-M"
                    },
                    "doc": "mark shorter split hits as secondary (for Picard/GATK compatibility)"
                },
                {
                    "id": "#bwa_mem_0.7.5a.cwl/O",
                    "type": "int?",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-O"
                    },
                    "doc": "INT gap open penalty [6]"
                },
                {
                    "default": false,
                    "id": "#bwa_mem_0.7.5a.cwl/P",
                    "type": "boolean?",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-P"
                    },
                    "doc": "skip pairing; mate rescue performed unless -S also in use"
                },
                {
                    "id": "#bwa_mem_0.7.5a.cwl/R",
                    "type": "string?",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-R"
                    },
                    "doc": "STR read group header line such as '@RG\\tID -foo\\tSM -bar' [null]"
                },
                {
                    "default": false,
                    "id": "#bwa_mem_0.7.5a.cwl/S",
                    "type": "boolean?",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-S"
                    },
                    "doc": "skip mate rescue"
                },
                {
                    "id": "#bwa_mem_0.7.5a.cwl/T",
                    "type": "int?",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-T"
                    },
                    "doc": "INT minimum score to output [30]"
                },
                {
                    "id": "#bwa_mem_0.7.5a.cwl/U",
                    "type": "int?",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-U"
                    },
                    "doc": "INT penalty for an unpaired read pair [17]"
                },
                {
                    "default": false,
                    "id": "#bwa_mem_0.7.5a.cwl/a",
                    "type": "boolean?",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-a"
                    },
                    "doc": "output all alignments for SE or unpaired PE"
                },
                {
                    "id": "#bwa_mem_0.7.5a.cwl/c",
                    "type": "int?",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-c"
                    },
                    "doc": "INT skip seeds with more than INT occurrences [10000]"
                },
                {
                    "id": "#bwa_mem_0.7.5a.cwl/d",
                    "type": "int?",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-d"
                    },
                    "doc": "INT off-diagonal X-dropoff [100]"
                },
                {
                    "id": "#bwa_mem_0.7.5a.cwl/k",
                    "type": "int?",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-k"
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
                        "position": 0,
                        "prefix": "-p"
                    },
                    "doc": "first query file consists of interleaved paired-end sequences"
                },
                {
                    "id": "#bwa_mem_0.7.5a.cwl/r",
                    "type": "float?",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-r"
                    },
                    "doc": "FLOAT look for internal seeds inside a seed longer than {-k} * FLOAT [1.5]"
                },
                {
                    "id": "#bwa_mem_0.7.5a.cwl/v",
                    "type": "int?",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-v"
                    },
                    "doc": "INT verbose level - 1=error, 2=warning, 3=message, 4+=debugging [3]"
                },
                {
                    "id": "#bwa_mem_0.7.5a.cwl/w",
                    "type": "int?",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-w"
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
            "outputs": [
                {
                    "id": "#bwa_mem_0.7.5a.cwl/sam",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n  if (inputs.output)\n    return inputs.output;\n  return inputs.reads[0].basename.replace(/(fastq.gz)|(fq.gz)/, 'sam');\n}"
                    }
                }
            ],
            "doc": "bwa mem\n",
            "label": "bwa-mem",
            "arguments": [
                {
                    "position": 0,
                    "prefix": "-t",
                    "valueFrom": "$(runtime.cores)"
                }
            ],
            "requirements": [
                {
                    "class": "ResourceRequirement",
                    "ramMin": 32000,
                    "coresMin": 16
                },
                {
                    "class": "DockerRequirement",
                    "dockerPull": "mskcc/bwa_mem:0.7.5a"
                },
                {
                    "class": "InlineJavascriptRequirement"
                }
            ],
            "stdout": "${\n  if (inputs.output)\n    return inputs.output;\n  return inputs.reads[0].basename.replace(/(fastq.gz)|(fq.gz)/, 'sam');\n}",
            "id": "#bwa_mem_0.7.5a.cwl",
            "http://purl.org/dc/terms/contributor": [
                {
                    "class": "foaf:Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "foaf:Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:chunj@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Jaeyoung Chun"
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
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:chunj@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Jaeyoung Chun"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "class": "doap:Version",
                    "http://usefulinc.com/ns/doap#name": "bwa-mem",
                    "http://usefulinc.com/ns/doap#revision": "0.7.5a"
                },
                {
                    "class": "doap:Version",
                    "http://usefulinc.com/ns/doap#name": "bwa-mem-cwl",
                    "http://usefulinc.com/ns/doap#revision": "1.0.0"
                }
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#picard_add_or_replace_read_groups_1.96.cwl",
            "baseCommand": [
                "java"
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
                        "position": 0,
                        "prefix": "I=",
                        "separate": false
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
                        "position": 0,
                        "prefix": "SO=",
                        "separate": false
                    },
                    "doc": "Optional sort order to output in. If not supplied OUTPUT is in the same order as INPUT.Default value: null. Possible values: {unsorted, queryname, coordinate}"
                },
                {
                    "id": "#picard_add_or_replace_read_groups_1.96.cwl/picard_add_or_replace_read_groups_1_96/read_group_identifier",
                    "type": "string",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "RGID=",
                        "separate": false
                    },
                    "doc": "Read Group ID  Default value: 1. This option can be set to 'null' to clear the default value  Required"
                },
                {
                    "id": "#picard_add_or_replace_read_groups_1.96.cwl/picard_add_or_replace_read_groups_1_96/read_group_sequencing_center",
                    "type": "string",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "RGCN=",
                        "separate": false
                    },
                    "doc": "Read Group sequencing center name  Default value: null. Required"
                },
                {
                    "id": "#picard_add_or_replace_read_groups_1.96.cwl/picard_add_or_replace_read_groups_1_96/read_group_library",
                    "type": "string",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "RGLB=",
                        "separate": false
                    },
                    "doc": "Read Group Library.  Required"
                },
                {
                    "id": "#picard_add_or_replace_read_groups_1.96.cwl/picard_add_or_replace_read_groups_1_96/read_group_platform_unit",
                    "type": "string",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "RGPU=",
                        "separate": false
                    },
                    "doc": "Read Group platform unit (eg. run barcode)  Required."
                },
                {
                    "id": "#picard_add_or_replace_read_groups_1.96.cwl/picard_add_or_replace_read_groups_1_96/read_group_sample_name",
                    "type": "string",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "RGSM=",
                        "separate": false
                    },
                    "doc": "Read Group sample name.  Required"
                },
                {
                    "id": "#picard_add_or_replace_read_groups_1.96.cwl/picard_add_or_replace_read_groups_1_96/read_group_sequencing_platform",
                    "type": "string",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "RGPL=",
                        "separate": false
                    },
                    "doc": "Read Group platform (e.g. illumina, solid)  Required."
                },
                {
                    "id": "#picard_add_or_replace_read_groups_1.96.cwl/picard_add_or_replace_read_groups_1_96/read_group_description",
                    "type": "string?",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "RGDS=",
                        "separate": false
                    },
                    "doc": "Read Group description  Default value: null."
                },
                {
                    "id": "#picard_add_or_replace_read_groups_1.96.cwl/picard_add_or_replace_read_groups_1_96/read_group_run_date",
                    "type": "string?",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "RGDT=",
                        "separate": false
                    },
                    "doc": "Read Group run date  Default value: null."
                },
                {
                    "id": "#picard_add_or_replace_read_groups_1.96.cwl/picard_add_or_replace_read_groups_1_96/validation_stringency",
                    "type": "string?",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "VALIDATION_STRINGENCY=",
                        "separate": false
                    },
                    "doc": "Validation stringency for all SAM files read by this program.  Setting stringency to SILENT can improve performance when processing a BAM file in which variable-length data (read, qualities, tags) do not otherwise need to be decoded.  Default value: STRICT. This option can be set to 'null' to clear the default value. Possible values: {STRICT,LENIENT, SILENT}"
                },
                {
                    "id": "#picard_add_or_replace_read_groups_1.96.cwl/picard_add_or_replace_read_groups_1_96/bam_compression_level",
                    "type": "int?",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "COMPRESSION_LEVEL=",
                        "separate": false
                    },
                    "doc": "Compression level for all compressed files created (e.g. BAM and GELI).  Default value:5. This option can be set to 'null' to clear the default value."
                },
                {
                    "default": true,
                    "id": "#picard_add_or_replace_read_groups_1.96.cwl/picard_add_or_replace_read_groups_1_96/create_bam_index",
                    "type": "boolean?",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "CREATE_INDEX=true"
                    },
                    "doc": "Whether to create a BAM index when writing a coordinate-sorted BAM file.  Default value:false. This option can be set to 'null' to clear the default value. Possible values:{true, false}"
                },
                {
                    "id": "#picard_add_or_replace_read_groups_1.96.cwl/picard_add_or_replace_read_groups_1_96/temporary_directory",
                    "type": "string?",
                    "doc": "Default value: null. This option may be specified 0 or more times."
                }
            ],
            "outputs": [
                {
                    "id": "#picard_add_or_replace_read_groups_1.96.cwl/picard_add_or_replace_read_groups_1_96/picard_add_or_replace_read_groups_bam",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    if(inputs.output_file_name)\n        return inputs.output_file_name;\n    return inputs.input.basename.replace(/.sam$/, '_srt.bam');\n}"
                    },
                    "secondaryFiles": [
                        "^.bai"
                    ]
                }
            ],
            "label": "picard_add_or_replace_read_groups_1.96",
            "arguments": [
                {
                    "position": 0,
                    "valueFrom": "${\n  if(inputs.memory_per_job && inputs.memory_overhead) {\n    if(inputs.memory_per_job % 1000 == 0) {\n      return \"-Xmx\" + (inputs.memory_per_job/1000).toString() + \"G\"\n    }\n    else {\n      return \"-Xmx\" + Math.floor((inputs.memory_per_job/1000)).toString() + \"G\"\n    }\n  }\n  else if (inputs.memory_per_job && !inputs.memory_overhead){\n    if(inputs.memory_per_job % 1000 == 0) {\n      return \"-Xmx\" + (inputs.memory_per_job/1000).toString() + \"G\"\n    }\n    else {\n      return \"-Xmx\" + Math.floor((inputs.memory_per_job/1000)).toString() + \"G\"\n    }\n  }\n  else if(!inputs.memory_per_job && inputs.memory_overhead){\n    return \"-Xmx15G\"\n  }\n  else {\n      return \"-Xmx15G\"\n  }\n}"
                },
                {
                    "position": 0,
                    "shellQuote": false,
                    "valueFrom": "-XX:-UseGCOverheadLimit"
                },
                {
                    "position": 0,
                    "prefix": "-Djava.io.tmpdir=",
                    "separate": false,
                    "valueFrom": "${\n    if(inputs.temporary_directory)\n        return inputs.temporary_directory;\n      return runtime.tmpdir\n}"
                },
                {
                    "position": 0,
                    "prefix": "-jar",
                    "valueFrom": "/usr/local/bin/AddOrReplaceReadGroups.jar"
                },
                {
                    "position": 0,
                    "prefix": "TMP_DIR=",
                    "separate": false,
                    "valueFrom": "${\n    if(inputs.temporary_directory)\n        return inputs.temporary_directory;\n      return runtime.tmpdir\n}"
                },
                {
                    "position": 0,
                    "prefix": "O=",
                    "separate": false,
                    "valueFrom": "${\n    if(inputs.output_file_name)\n        return inputs.output_file_name;\n      return inputs.input.basename.replace(/.sam$/, '_srt.bam');\n}"
                }
            ],
            "requirements": [
                {
                    "class": "ShellCommandRequirement"
                },
                {
                    "class": "ResourceRequirement",
                    "ramMin": 25000,
                    "coresMin": 2
                },
                {
                    "class": "DockerRequirement",
                    "dockerPull": "mskaccess/picard_1.96:0.6.3"
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
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:shahr2@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Ronak Shah"
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
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:shahr2@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Ronak Shah"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "class": "doap:Version",
                    "http://usefulinc.com/ns/doap#name": "picard",
                    "http://usefulinc.com/ns/doap#revision": 1.96
                }
            ]
        }
    ],
    "cwlVersion": "v1.0",
    "$schemas": [
        "http://xmlns.com/foaf/spec/20140114.rdf",
        "http://usefulinc.com/ns/doap#",
        "http://dublincore.org/2012/06/14/dcterms.rdf",
        "https://schema.org/version/latest/schema.rdf"
    ]
}