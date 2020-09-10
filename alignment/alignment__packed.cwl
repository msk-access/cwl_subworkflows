{
    "$schemas": [
        "http://dublincore.org/2012/06/14/dcterms.rdf",
        "http://usefulinc.com/ns/doap#",
        "http://xmlns.com/foaf/spec/20140114.rdf",
        "https://schema.org/version/latest/schema.rdf"
    ],
    "$graph": [
        {
            "requirements": [],
            "class": "Workflow",
            "outputs": [
                {
                    "outputSource": [
                        "#main/picard_add_or_replace_read_groups_1_96/picard_add_or_replace_read_groups_bam"
                    ],
                    "id": "#main/picard_add_or_replace_read_groups_bam",
                    "https://www.sevenbridges.com/y": 391.4794921875,
                    "https://www.sevenbridges.com/x": 907.4813842773438,
                    "type": "File"
                }
            ],
            "https://schema.org/contributor": [
                {
                    "https://schema.org/email": "mailto:johnsoni@mskcc.org",
                    "https://schema.org/name": "Ian Jonhnson",
                    "https://schema.org/identifier": "",
                    "class": "https://schema.org/Person"
                },
                {
                    "https://schema.org/email": "mailto:shahr2@mskcc.org",
                    "https://schema.org/name": "Ronak Shah",
                    "https://schema.org/identifier": "https://orcid.org/0000-0001-9042-6213",
                    "class": "https://schema.org/Person"
                },
                {
                    "https://schema.org/email": "mailto:sumans@mskcc.org",
                    "https://schema.org/name": "Shalabh Suman",
                    "https://schema.org/identifier": "",
                    "class": "https://schema.org/Person"
                }
            ],
            "https://schema.org/author": [
                {
                    "https://schema.org/email": "mailto:sumans@mskcc.org",
                    "https://schema.org/name": "Shalabh Suman",
                    "https://schema.org/identifier": "",
                    "class": "https://schema.org/Person"
                },
                {
                    "https://schema.org/email": "mailto:johnsoni@mskcc.org",
                    "https://schema.org/name": "Ian Jonhnson",
                    "https://schema.org/identifier": "",
                    "class": "https://schema.org/Person"
                }
            ],
            "https://schema.org/license": "https://spdx.org/licenses/Apache-2.0",
            "https://schema.org/dateCreated": "2019-10-01",
            "$namespaces": {
                "s": "https://schema.org/",
                "sbg": "https://www.sevenbridges.com/"
            },
            "inputs": [
                {
                    "https://www.sevenbridges.com/x": 0,
                    "id": "#main/reference",
                    "https://www.sevenbridges.com/y": 107,
                    "secondaryFiles": [
                        ".fai",
                        "^.dict",
                        ".amb",
                        ".ann",
                        ".bwt",
                        ".pac",
                        ".sa"
                    ],
                    "type": "File"
                },
                {
                    "https://www.sevenbridges.com/x": 0,
                    "id": "#main/reads",
                    "https://www.sevenbridges.com/y": 214,
                    "type": {
                        "type": "array",
                        "items": "File"
                    }
                },
                {
                    "https://www.sevenbridges.com/x": 0,
                    "id": "#main/P",
                    "https://www.sevenbridges.com/y": 963,
                    "type": [
                        "null",
                        "boolean"
                    ]
                },
                {
                    "https://www.sevenbridges.com/x": 0,
                    "id": "#main/M",
                    "https://www.sevenbridges.com/y": 1177,
                    "type": [
                        "null",
                        "boolean"
                    ]
                },
                {
                    "https://www.sevenbridges.com/x": 0,
                    "id": "#main/read_group_identifier",
                    "https://www.sevenbridges.com/y": 856,
                    "type": "string"
                },
                {
                    "https://www.sevenbridges.com/x": 0,
                    "id": "#main/sort_order",
                    "https://www.sevenbridges.com/y": 0,
                    "type": [
                        "null",
                        "string"
                    ]
                },
                {
                    "https://www.sevenbridges.com/x": 319.171875,
                    "id": "#main/create_bam_index",
                    "https://www.sevenbridges.com/y": 560.5,
                    "type": [
                        "null",
                        "boolean"
                    ]
                },
                {
                    "https://www.sevenbridges.com/x": 0,
                    "id": "#main/read_group_sequencing_platform",
                    "https://www.sevenbridges.com/y": 428,
                    "type": "string"
                },
                {
                    "https://www.sevenbridges.com/x": 0,
                    "id": "#main/read_group_sample_name",
                    "https://www.sevenbridges.com/y": 535,
                    "type": "string"
                },
                {
                    "https://www.sevenbridges.com/x": 0,
                    "id": "#main/read_group_platform_unit",
                    "https://www.sevenbridges.com/y": 642,
                    "type": "string"
                },
                {
                    "https://www.sevenbridges.com/x": 0,
                    "id": "#main/read_group_library",
                    "https://www.sevenbridges.com/y": 749,
                    "type": "string"
                },
                {
                    "https://www.sevenbridges.com/x": 319.171875,
                    "id": "#main/output_file_name",
                    "https://www.sevenbridges.com/y": 453.5,
                    "type": [
                        "null",
                        "string"
                    ]
                },
                {
                    "https://www.sevenbridges.com/x": 0,
                    "id": "#main/output",
                    "https://www.sevenbridges.com/y": 1070,
                    "type": [
                        "null",
                        "string"
                    ]
                },
                {
                    "https://www.sevenbridges.com/x": 5.036951541900635,
                    "id": "#main/read_group_sequencing_center",
                    "https://www.sevenbridges.com/y": 326.5912170410156,
                    "type": "string"
                },
                {
                    "https://www.sevenbridges.com/x": 3.3808727264404297,
                    "id": "#main/temporary_directory",
                    "label": "picard_add_or_replace_read_group_1.96_tmpdir",
                    "https://www.sevenbridges.com/y": -127.21382141113281,
                    "type": [
                        "null",
                        "string"
                    ]
                }
            ],
            "label": "alignment",
            "steps": [
                {
                    "https://www.sevenbridges.com/x": 319.171875,
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
                    "out": [
                        {
                            "id": "#main/bwa_mem_0_7_5a/sam"
                        }
                    ],
                    "https://www.sevenbridges.com/y": 695.5,
                    "id": "#main/bwa_mem_0_7_5a",
                    "run": "#bwa_mem_0.7.5a.cwl"
                },
                {
                    "https://www.sevenbridges.com/x": 650.7478637695312,
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
                    "out": [
                        {
                            "id": "#main/picard_add_or_replace_read_groups_1_96/picard_add_or_replace_read_groups_bam"
                        }
                    ],
                    "https://www.sevenbridges.com/y": 501.9268493652344,
                    "id": "#main/picard_add_or_replace_read_groups_1_96",
                    "run": "#picard_add_or_replace_read_groups_1.96.cwl"
                }
            ],
            "https://schema.org/codeRepository": "https://github.com/msk-access/cwl_subworkflows/alignment",
            "id": "#main",
            "https://schema.org/citation": ""
        },
        {
            "requirements": [
                {
                    "coresMin": 16,
                    "ramMin": 32000,
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
            "class": "CommandLineTool",
            "outputs": [
                {
                    "id": "#bwa_mem_0.7.5a.cwl/sam",
                    "outputBinding": {
                        "glob": "${\n  if (inputs.output)\n    return inputs.output;\n  return inputs.reads[0].basename.replace(/(fastq.gz)|(fq.gz)/, 'sam');\n}"
                    },
                    "type": "File"
                }
            ],
            "http://purl.org/dc/terms/creator": [
                {
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center",
                    "class": "foaf:Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:chunj@mskcc.org",
                            "class": "foaf:Person",
                            "http://xmlns.com/foaf/0.1/name": "Jaeyoung Chun"
                        }
                    ]
                }
            ],
            "baseCommand": [
                "bwa",
                "mem"
            ],
            "stdout": "${\n  if (inputs.output)\n    return inputs.output;\n  return inputs.reads[0].basename.replace(/(fastq.gz)|(fq.gz)/, 'sam');\n}",
            "doc": "bwa mem\n",
            "inputs": [
                {
                    "id": "#bwa_mem_0.7.5a.cwl/A",
                    "doc": "INT score for a sequence match [1]",
                    "inputBinding": {
                        "prefix": "-A",
                        "position": 0
                    },
                    "type": "int?"
                },
                {
                    "id": "#bwa_mem_0.7.5a.cwl/B",
                    "doc": "INT penalty for a mismatch [4]",
                    "inputBinding": {
                        "prefix": "-B",
                        "position": 0
                    },
                    "type": "int?"
                },
                {
                    "id": "#bwa_mem_0.7.5a.cwl/C",
                    "doc": "append FASTA/FASTQ comment to SAM output",
                    "inputBinding": {
                        "prefix": "-C",
                        "position": 0
                    },
                    "default": false,
                    "type": "boolean?"
                },
                {
                    "id": "#bwa_mem_0.7.5a.cwl/E",
                    "doc": "INT gap extension penalty; a gap of size k cost {-O} + {-E}*k [1]",
                    "inputBinding": {
                        "prefix": "-E",
                        "position": 0
                    },
                    "type": "int?"
                },
                {
                    "id": "#bwa_mem_0.7.5a.cwl/L",
                    "doc": "INT penalty for clipping [5]",
                    "inputBinding": {
                        "prefix": "-L",
                        "position": 0
                    },
                    "type": "int?"
                },
                {
                    "id": "#bwa_mem_0.7.5a.cwl/M",
                    "doc": "mark shorter split hits as secondary (for Picard/GATK compatibility)",
                    "inputBinding": {
                        "prefix": "-M",
                        "position": 0
                    },
                    "default": true,
                    "type": "boolean?"
                },
                {
                    "id": "#bwa_mem_0.7.5a.cwl/O",
                    "doc": "INT gap open penalty [6]",
                    "inputBinding": {
                        "prefix": "-O",
                        "position": 0
                    },
                    "type": "int?"
                },
                {
                    "id": "#bwa_mem_0.7.5a.cwl/P",
                    "doc": "skip pairing; mate rescue performed unless -S also in use",
                    "inputBinding": {
                        "prefix": "-P",
                        "position": 0
                    },
                    "default": false,
                    "type": "boolean?"
                },
                {
                    "id": "#bwa_mem_0.7.5a.cwl/R",
                    "doc": "STR read group header line such as '@RG\\tID -foo\\tSM -bar' [null]",
                    "inputBinding": {
                        "prefix": "-R",
                        "position": 0
                    },
                    "type": "string?"
                },
                {
                    "id": "#bwa_mem_0.7.5a.cwl/S",
                    "doc": "skip mate rescue",
                    "inputBinding": {
                        "prefix": "-S",
                        "position": 0
                    },
                    "default": false,
                    "type": "boolean?"
                },
                {
                    "id": "#bwa_mem_0.7.5a.cwl/T",
                    "doc": "INT minimum score to output [30]",
                    "inputBinding": {
                        "prefix": "-T",
                        "position": 0
                    },
                    "type": "int?"
                },
                {
                    "id": "#bwa_mem_0.7.5a.cwl/U",
                    "doc": "INT penalty for an unpaired read pair [17]",
                    "inputBinding": {
                        "prefix": "-U",
                        "position": 0
                    },
                    "type": "int?"
                },
                {
                    "id": "#bwa_mem_0.7.5a.cwl/a",
                    "doc": "output all alignments for SE or unpaired PE",
                    "inputBinding": {
                        "prefix": "-a",
                        "position": 0
                    },
                    "default": false,
                    "type": "boolean?"
                },
                {
                    "id": "#bwa_mem_0.7.5a.cwl/c",
                    "doc": "INT skip seeds with more than INT occurrences [10000]",
                    "inputBinding": {
                        "prefix": "-c",
                        "position": 0
                    },
                    "type": "int?"
                },
                {
                    "id": "#bwa_mem_0.7.5a.cwl/d",
                    "doc": "INT off-diagonal X-dropoff [100]",
                    "inputBinding": {
                        "prefix": "-d",
                        "position": 0
                    },
                    "type": "int?"
                },
                {
                    "id": "#bwa_mem_0.7.5a.cwl/k",
                    "doc": "INT minimum seed length [19]",
                    "inputBinding": {
                        "prefix": "-k",
                        "position": 0
                    },
                    "type": "int?"
                },
                {
                    "id": "#bwa_mem_0.7.5a.cwl/output",
                    "type": "string?"
                },
                {
                    "id": "#bwa_mem_0.7.5a.cwl/p",
                    "doc": "first query file consists of interleaved paired-end sequences",
                    "inputBinding": {
                        "prefix": "-p",
                        "position": 0
                    },
                    "type": "boolean?"
                },
                {
                    "id": "#bwa_mem_0.7.5a.cwl/r",
                    "doc": "FLOAT look for internal seeds inside a seed longer than {-k} * FLOAT [1.5]",
                    "inputBinding": {
                        "prefix": "-r",
                        "position": 0
                    },
                    "type": "float?"
                },
                {
                    "id": "#bwa_mem_0.7.5a.cwl/v",
                    "doc": "INT verbose level - 1=error, 2=warning, 3=message, 4+=debugging [3]",
                    "inputBinding": {
                        "prefix": "-v",
                        "position": 0
                    },
                    "type": "int?"
                },
                {
                    "id": "#bwa_mem_0.7.5a.cwl/w",
                    "doc": "INT band width for banded alignment [100]",
                    "inputBinding": {
                        "prefix": "-w",
                        "position": 0
                    },
                    "type": "int?"
                },
                {
                    "id": "#bwa_mem_0.7.5a.cwl/reads",
                    "inputBinding": {
                        "position": 3
                    },
                    "type": "File[]"
                },
                {
                    "id": "#bwa_mem_0.7.5a.cwl/reference",
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
                    ],
                    "type": "File"
                }
            ],
            "label": "bwa-mem",
            "http://usefulinc.com/ns/doap#release": [
                {
                    "http://usefulinc.com/ns/doap#revision": "0.7.5a",
                    "class": "doap:Version",
                    "http://usefulinc.com/ns/doap#name": "bwa-mem"
                },
                {
                    "http://usefulinc.com/ns/doap#revision": "1.0.0",
                    "class": "doap:Version",
                    "http://usefulinc.com/ns/doap#name": "bwa-mem-cwl"
                }
            ],
            "arguments": [
                {
                    "prefix": "-t",
                    "position": 0,
                    "valueFrom": "$(runtime.cores)"
                }
            ],
            "id": "#bwa_mem_0.7.5a.cwl",
            "http://purl.org/dc/terms/contributor": [
                {
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center",
                    "class": "foaf:Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:chunj@mskcc.org",
                            "class": "foaf:Person",
                            "http://xmlns.com/foaf/0.1/name": "Jaeyoung Chun"
                        }
                    ]
                }
            ]
        },
        {
            "inputs": [
                {
                    "id": "#picard_add_or_replace_read_groups_1.96.cwl/picard_add_or_replace_read_groups_1_96/memory_per_job",
                    "doc": "Memory per job in megabytes",
                    "type": "int?"
                },
                {
                    "id": "#picard_add_or_replace_read_groups_1.96.cwl/picard_add_or_replace_read_groups_1_96/memory_overhead",
                    "doc": "Memory overhead per job in megabytes",
                    "type": "int?"
                },
                {
                    "id": "#picard_add_or_replace_read_groups_1.96.cwl/picard_add_or_replace_read_groups_1_96/number_of_threads",
                    "type": "int?"
                },
                {
                    "id": "#picard_add_or_replace_read_groups_1.96.cwl/picard_add_or_replace_read_groups_1_96/input",
                    "doc": "Input file ( sam).  Required.",
                    "inputBinding": {
                        "prefix": "I=",
                        "separate": false,
                        "position": 0
                    },
                    "type": "File"
                },
                {
                    "id": "#picard_add_or_replace_read_groups_1.96.cwl/picard_add_or_replace_read_groups_1_96/output_file_name",
                    "doc": "Output file name (bam or sam). Not Required",
                    "type": "string?"
                },
                {
                    "id": "#picard_add_or_replace_read_groups_1.96.cwl/picard_add_or_replace_read_groups_1_96/sort_order",
                    "doc": "Optional sort order to output in. If not supplied OUTPUT is in the same order as INPUT.Default value: null. Possible values: {unsorted, queryname, coordinate}",
                    "inputBinding": {
                        "prefix": "SO=",
                        "separate": false,
                        "position": 0
                    },
                    "type": "string?"
                },
                {
                    "id": "#picard_add_or_replace_read_groups_1.96.cwl/picard_add_or_replace_read_groups_1_96/read_group_identifier",
                    "doc": "Read Group ID  Default value: 1. This option can be set to 'null' to clear the default value  Required",
                    "inputBinding": {
                        "prefix": "RGID=",
                        "separate": false,
                        "position": 0
                    },
                    "type": "string"
                },
                {
                    "id": "#picard_add_or_replace_read_groups_1.96.cwl/picard_add_or_replace_read_groups_1_96/read_group_sequencing_center",
                    "doc": "Read Group sequencing center name  Default value: null. Required",
                    "inputBinding": {
                        "prefix": "RGCN=",
                        "separate": false,
                        "position": 0
                    },
                    "type": "string"
                },
                {
                    "id": "#picard_add_or_replace_read_groups_1.96.cwl/picard_add_or_replace_read_groups_1_96/read_group_library",
                    "doc": "Read Group Library.  Required",
                    "inputBinding": {
                        "prefix": "RGLB=",
                        "separate": false,
                        "position": 0
                    },
                    "type": "string"
                },
                {
                    "id": "#picard_add_or_replace_read_groups_1.96.cwl/picard_add_or_replace_read_groups_1_96/read_group_platform_unit",
                    "doc": "Read Group platform unit (eg. run barcode)  Required.",
                    "inputBinding": {
                        "prefix": "RGPU=",
                        "separate": false,
                        "position": 0
                    },
                    "type": "string"
                },
                {
                    "id": "#picard_add_or_replace_read_groups_1.96.cwl/picard_add_or_replace_read_groups_1_96/read_group_sample_name",
                    "doc": "Read Group sample name.  Required",
                    "inputBinding": {
                        "prefix": "RGSM=",
                        "separate": false,
                        "position": 0
                    },
                    "type": "string"
                },
                {
                    "id": "#picard_add_or_replace_read_groups_1.96.cwl/picard_add_or_replace_read_groups_1_96/read_group_sequencing_platform",
                    "doc": "Read Group platform (e.g. illumina, solid)  Required.",
                    "inputBinding": {
                        "prefix": "RGPL=",
                        "separate": false,
                        "position": 0
                    },
                    "type": "string"
                },
                {
                    "id": "#picard_add_or_replace_read_groups_1.96.cwl/picard_add_or_replace_read_groups_1_96/read_group_description",
                    "doc": "Read Group description  Default value: null.",
                    "inputBinding": {
                        "prefix": "RGDS=",
                        "separate": false,
                        "position": 0
                    },
                    "type": "string?"
                },
                {
                    "id": "#picard_add_or_replace_read_groups_1.96.cwl/picard_add_or_replace_read_groups_1_96/read_group_run_date",
                    "doc": "Read Group run date  Default value: null.",
                    "inputBinding": {
                        "prefix": "RGDT=",
                        "separate": false,
                        "position": 0
                    },
                    "type": "string?"
                },
                {
                    "id": "#picard_add_or_replace_read_groups_1.96.cwl/picard_add_or_replace_read_groups_1_96/validation_stringency",
                    "doc": "Validation stringency for all SAM files read by this program.  Setting stringency to SILENT can improve performance when processing a BAM file in which variable-length data (read, qualities, tags) do not otherwise need to be decoded.  Default value: STRICT. This option can be set to 'null' to clear the default value. Possible values: {STRICT,LENIENT, SILENT}",
                    "inputBinding": {
                        "prefix": "VALIDATION_STRINGENCY=",
                        "separate": false,
                        "position": 0
                    },
                    "type": "string?"
                },
                {
                    "id": "#picard_add_or_replace_read_groups_1.96.cwl/picard_add_or_replace_read_groups_1_96/bam_compression_level",
                    "doc": "Compression level for all compressed files created (e.g. BAM and GELI).  Default value:5. This option can be set to 'null' to clear the default value.",
                    "inputBinding": {
                        "prefix": "COMPRESSION_LEVEL=",
                        "separate": false,
                        "position": 0
                    },
                    "type": "int?"
                },
                {
                    "id": "#picard_add_or_replace_read_groups_1.96.cwl/picard_add_or_replace_read_groups_1_96/create_bam_index",
                    "doc": "Whether to create a BAM index when writing a coordinate-sorted BAM file.  Default value:false. This option can be set to 'null' to clear the default value. Possible values:{true, false}",
                    "inputBinding": {
                        "prefix": "CREATE_INDEX=true",
                        "position": 0
                    },
                    "default": true,
                    "type": "boolean?"
                },
                {
                    "id": "#picard_add_or_replace_read_groups_1.96.cwl/picard_add_or_replace_read_groups_1_96/temporary_directory",
                    "doc": "Default value: null. This option may be specified 0 or more times.",
                    "type": "string?"
                }
            ],
            "requirements": [
                {
                    "class": "ShellCommandRequirement"
                },
                {
                    "coresMin": 2,
                    "ramMin": 25000,
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
            "class": "CommandLineTool",
            "outputs": [
                {
                    "id": "#picard_add_or_replace_read_groups_1.96.cwl/picard_add_or_replace_read_groups_1_96/picard_add_or_replace_read_groups_bam",
                    "outputBinding": {
                        "glob": "${\n    if(inputs.output_file_name)\n        return inputs.output_file_name;\n    return inputs.input.basename.replace(/.sam$/, '_srt.bam');\n}"
                    },
                    "secondaryFiles": [
                        "^.bai"
                    ],
                    "type": "File"
                }
            ],
            "arguments": [
                {
                    "position": 0,
                    "valueFrom": "${\n  if(inputs.memory_per_job && inputs.memory_overhead) {\n    if(inputs.memory_per_job % 1000 == 0) {\n      return \"-Xmx\" + (inputs.memory_per_job/1000).toString() + \"G\"\n    }\n    else {\n      return \"-Xmx\" + Math.floor((inputs.memory_per_job/1000)).toString() + \"G\"\n    }\n  }\n  else if (inputs.memory_per_job && !inputs.memory_overhead){\n    if(inputs.memory_per_job % 1000 == 0) {\n      return \"-Xmx\" + (inputs.memory_per_job/1000).toString() + \"G\"\n    }\n    else {\n      return \"-Xmx\" + Math.floor((inputs.memory_per_job/1000)).toString() + \"G\"\n    }\n  }\n  else if(!inputs.memory_per_job && inputs.memory_overhead){\n    return \"-Xmx15G\"\n  }\n  else {\n      return \"-Xmx15G\"\n  }\n}"
                },
                {
                    "shellQuote": false,
                    "position": 0,
                    "valueFrom": "-XX:-UseGCOverheadLimit"
                },
                {
                    "prefix": "-Djava.io.tmpdir=",
                    "separate": false,
                    "position": 0,
                    "valueFrom": "${\n    if(inputs.temporary_directory)\n        return inputs.temporary_directory;\n      return runtime.tmpdir\n}"
                },
                {
                    "prefix": "-jar",
                    "position": 0,
                    "valueFrom": "/usr/local/bin/AddOrReplaceReadGroups.jar"
                },
                {
                    "prefix": "TMP_DIR=",
                    "separate": false,
                    "position": 0,
                    "valueFrom": "${\n    if(inputs.temporary_directory)\n        return inputs.temporary_directory;\n      return runtime.tmpdir\n}"
                },
                {
                    "prefix": "O=",
                    "separate": false,
                    "position": 0,
                    "valueFrom": "${\n    if(inputs.output_file_name)\n        return inputs.output_file_name;\n      return inputs.input.basename.replace(/.sam$/, '_srt.bam');\n}"
                }
            ],
            "id": "#picard_add_or_replace_read_groups_1.96.cwl",
            "baseCommand": [
                "java"
            ],
            "http://purl.org/dc/terms/creator": [
                {
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center",
                    "class": "foaf:Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:shahr2@mskcc.org",
                            "class": "foaf:Person",
                            "http://xmlns.com/foaf/0.1/name": "Ronak Shah"
                        }
                    ]
                }
            ],
            "http://purl.org/dc/terms/contributor": [
                {
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center",
                    "class": "foaf:Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:shahr2@mskcc.org",
                            "class": "foaf:Person",
                            "http://xmlns.com/foaf/0.1/name": "Ronak Shah"
                        }
                    ]
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "http://usefulinc.com/ns/doap#revision": 1.96,
                    "class": "doap:Version",
                    "http://usefulinc.com/ns/doap#name": "picard"
                }
            ]
        }
    ],
    "cwlVersion": "v1.0"
}