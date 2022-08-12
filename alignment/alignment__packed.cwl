{
    "$graph": [
        {
            "class": "Workflow",
            "id": "#main",
            "label": "alignment",
            "inputs": [
                {
                    "id": "#main/create_bam_index",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "https://www.sevenbridges.com/x": 319.15625,
                    "https://www.sevenbridges.com/y": 958.8671875
                },
                {
                    "id": "#main/output_file_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 319.15625,
                    "https://www.sevenbridges.com/y": 852.0390625
                },
                {
                    "id": "#main/read_group_description",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1495.59375
                },
                {
                    "id": "#main/read_group_identifier",
                    "type": "string",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1388.765625
                },
                {
                    "id": "#main/read_group_library",
                    "type": "string",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1281.9375
                },
                {
                    "id": "#main/read_group_platform_unit",
                    "type": "string",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1175.109375
                },
                {
                    "id": "#main/read_group_run_date",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1068.28125
                },
                {
                    "id": "#main/read_group_sample_name",
                    "type": "string",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 961.453125
                },
                {
                    "id": "#main/read_group_sequencing_center",
                    "type": "string",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 854.625
                },
                {
                    "id": "#main/read_group_sequencing_platform",
                    "type": "string",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 747.796875
                },
                {
                    "id": "#main/sort_order",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 427.3125
                },
                {
                    "id": "#main/validation_stringency",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 106.828125
                },
                {
                    "id": "#main/reference",
                    "type": "File",
                    "secondaryFiles": [
                        ".amb",
                        ".fai",
                        ".sa",
                        "^.dict",
                        ".ann",
                        ".bwt",
                        ".pac"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 534.140625
                },
                {
                    "id": "#main/reads",
                    "type": {
                        "type": "array",
                        "items": "File"
                    },
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 640.96875
                },
                {
                    "id": "#main/output",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1709.25
                },
                {
                    "id": "#main/P",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1602.421875
                },
                {
                    "id": "#main/M",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1816.078125
                },
                {
                    "id": "#main/T",
                    "type": [
                        "null",
                        "int"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 320.484375
                },
                {
                    "id": "#main/Y",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 0
                },
                {
                    "id": "#main/K",
                    "type": [
                        "null",
                        "int"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1922.90625
                },
                {
                    "id": "#main/bwa_number_of_threads",
                    "type": [
                        "null",
                        "int"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 2029.734375
                },
                {
                    "id": "#main/temporary_directory",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 213.65625
                }
            ],
            "steps": [
                {
                    "id": "#main/picard_add_or_replace_read_groups_4_1_8_1",
                    "in": [
                        {
                            "id": "#main/picard_add_or_replace_read_groups_4_1_8_1/input",
                            "source": "#main/bwa_mem_0_7_17/bwa_mem_output_sam"
                        },
                        {
                            "id": "#main/picard_add_or_replace_read_groups_4_1_8_1/output_file_name",
                            "source": "#main/output_file_name"
                        },
                        {
                            "id": "#main/picard_add_or_replace_read_groups_4_1_8_1/sort_order",
                            "source": "#main/sort_order"
                        },
                        {
                            "id": "#main/picard_add_or_replace_read_groups_4_1_8_1/read_group_identifier",
                            "source": "#main/read_group_identifier"
                        },
                        {
                            "id": "#main/picard_add_or_replace_read_groups_4_1_8_1/read_group_sequencing_center",
                            "source": "#main/read_group_sequencing_center"
                        },
                        {
                            "id": "#main/picard_add_or_replace_read_groups_4_1_8_1/read_group_library",
                            "source": "#main/read_group_library"
                        },
                        {
                            "id": "#main/picard_add_or_replace_read_groups_4_1_8_1/read_group_platform_unit",
                            "source": "#main/read_group_platform_unit"
                        },
                        {
                            "id": "#main/picard_add_or_replace_read_groups_4_1_8_1/read_group_sample_name",
                            "source": "#main/read_group_sample_name"
                        },
                        {
                            "id": "#main/picard_add_or_replace_read_groups_4_1_8_1/read_group_sequencing_platform",
                            "source": "#main/read_group_sequencing_platform"
                        },
                        {
                            "id": "#main/picard_add_or_replace_read_groups_4_1_8_1/read_group_description",
                            "source": "#main/read_group_description"
                        },
                        {
                            "id": "#main/picard_add_or_replace_read_groups_4_1_8_1/read_group_run_date",
                            "source": "#main/read_group_run_date"
                        },
                        {
                            "id": "#main/picard_add_or_replace_read_groups_4_1_8_1/validation_stringency",
                            "source": "#main/validation_stringency"
                        },
                        {
                            "id": "#main/picard_add_or_replace_read_groups_4_1_8_1/create_bam_index",
                            "source": "#main/create_bam_index"
                        },
                        {
                            "id": "#main/picard_add_or_replace_read_groups_4_1_8_1/temporary_directory",
                            "source": "#main/temporary_directory"
                        }
                    ],
                    "out": [
                        {
                            "id": "#main/picard_add_or_replace_read_groups_4_1_8_1/picard_add_or_replace_read_groups_bam"
                        }
                    ],
                    "run": "#picard_add_or_replace_read_groups_4.1.8.1.cwl",
                    "label": "picard_add_or_replace_read_groups_4.1.8.1",
                    "https://www.sevenbridges.com/x": 737.3328857421875,
                    "https://www.sevenbridges.com/y": 923.8671875
                },
                {
                    "id": "#main/bwa_mem_0_7_17",
                    "in": [
                        {
                            "id": "#main/bwa_mem_0_7_17/number_of_threads",
                            "source": "#main/bwa_number_of_threads"
                        },
                        {
                            "id": "#main/bwa_mem_0_7_17/reads",
                            "source": [
                                "#main/reads"
                            ]
                        },
                        {
                            "id": "#main/bwa_mem_0_7_17/reference",
                            "source": "#main/reference"
                        },
                        {
                            "id": "#main/bwa_mem_0_7_17/M",
                            "source": "#main/M"
                        },
                        {
                            "id": "#main/bwa_mem_0_7_17/P",
                            "source": "#main/P"
                        },
                        {
                            "id": "#main/bwa_mem_0_7_17/T",
                            "source": "#main/T"
                        },
                        {
                            "id": "#main/bwa_mem_0_7_17/K",
                            "source": "#main/K"
                        },
                        {
                            "id": "#main/bwa_mem_0_7_17/output",
                            "source": "#main/output"
                        },
                        {
                            "id": "#main/bwa_mem_0_7_17/Y",
                            "source": "#main/Y"
                        }
                    ],
                    "out": [
                        {
                            "id": "#main/bwa_mem_0_7_17/bwa_mem_output_sam"
                        }
                    ],
                    "run": "#bwa_mem_0.7.17.cwl",
                    "label": "bwa_mem_0.7.17",
                    "https://www.sevenbridges.com/x": 319.15625,
                    "https://www.sevenbridges.com/y": 1121.6953125
                }
            ],
            "requirements": [],
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
                },
                {
                    "class": "https://schema.org/Person",
                    "https://schema.org/email": "mailto:murphyc4@mskcc.org",
                    "https://schema.org/identifier": "",
                    "https://schema.org/name": "Charlie Murphy"
                }
            ],
            "https://schema.org/dateCreated": "2019-10-01",
            "https://schema.org/license": "https://spdx.org/licenses/Apache-2.0",
            "outputs": [
                {
                    "id": "#main/picard_add_or_replace_read_groups_bam",
                    "outputSource": [
                        "#main/picard_add_or_replace_read_groups_4_1_8_1/picard_add_or_replace_read_groups_bam"
                    ],
                    "type": "File",
                    "secondaryFiles": [
                        "^.bai"
                    ],
                    "https://www.sevenbridges.com/x": 1389.239501953125,
                    "https://www.sevenbridges.com/y": 1014.8671875
                }
            ]
        },
        {
            "class": "CommandLineTool",
            "baseCommand": [
                "bwa",
                "mem"
            ],
            "inputs": [
                {
                    "id": "#bwa_mem_0.7.17.cwl/memory_per_job",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory per job in megabytes"
                },
                {
                    "id": "#bwa_mem_0.7.17.cwl/memory_overhead",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory overhead per job in megabytes"
                },
                {
                    "id": "#bwa_mem_0.7.17.cwl/number_of_threads",
                    "type": [
                        "null",
                        "int"
                    ]
                },
                {
                    "id": "#bwa_mem_0.7.17.cwl/reads",
                    "type": {
                        "type": "array",
                        "items": "File"
                    },
                    "inputBinding": {
                        "position": 3
                    }
                },
                {
                    "id": "#bwa_mem_0.7.17.cwl/reference",
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
                },
                {
                    "id": "#bwa_mem_0.7.17.cwl/A",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-A"
                    },
                    "doc": "score for a sequence match, which scales options -TdBOELU unless overridden [1]"
                },
                {
                    "id": "#bwa_mem_0.7.17.cwl/B",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-B"
                    },
                    "doc": "penalty for a mismatch [4]"
                },
                {
                    "id": "#bwa_mem_0.7.17.cwl/C",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-C"
                    },
                    "doc": "append FASTA/FASTQ comment to SAM output"
                },
                {
                    "id": "#bwa_mem_0.7.17.cwl/E",
                    "type": [
                        "null",
                        {
                            "type": "array",
                            "items": "int"
                        }
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-E",
                        "itemSeparator": ","
                    },
                    "doc": "gap extension penalty; a gap of size k cost '{-O} + {-E}*k' [1,1]"
                },
                {
                    "id": "#bwa_mem_0.7.17.cwl/L",
                    "type": [
                        "null",
                        {
                            "type": "array",
                            "items": "int"
                        }
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-L",
                        "itemSeparator": ","
                    },
                    "doc": "penalty for 5'- and 3'-end clipping [5,5]"
                },
                {
                    "id": "#bwa_mem_0.7.17.cwl/M",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-M"
                    }
                },
                {
                    "id": "#bwa_mem_0.7.17.cwl/O",
                    "type": [
                        "null",
                        {
                            "type": "array",
                            "items": "int"
                        }
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-O",
                        "itemSeparator": ","
                    },
                    "doc": "gap open penalties for deletions and insertions [6,6]"
                },
                {
                    "id": "#bwa_mem_0.7.17.cwl/P",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-P"
                    },
                    "doc": "skip pairing; mate rescue performed unless -S also in use"
                },
                {
                    "id": "#bwa_mem_0.7.17.cwl/S",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-S"
                    },
                    "doc": "skip mate rescue"
                },
                {
                    "id": "#bwa_mem_0.7.17.cwl/T",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-T"
                    },
                    "doc": "minimum score to output [30]"
                },
                {
                    "id": "#bwa_mem_0.7.17.cwl/U",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-U"
                    },
                    "doc": "penalty for an unpaired read pair [17]"
                },
                {
                    "id": "#bwa_mem_0.7.17.cwl/a",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-a"
                    },
                    "doc": "output all alignments for SE or unpaired PE"
                },
                {
                    "id": "#bwa_mem_0.7.17.cwl/c",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-c"
                    },
                    "doc": "skip seeds with more than INT occurrences [500]"
                },
                {
                    "id": "#bwa_mem_0.7.17.cwl/d",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-d"
                    },
                    "doc": "off-diagonal X-dropoff [100]"
                },
                {
                    "id": "#bwa_mem_0.7.17.cwl/k",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-k"
                    },
                    "doc": "minimum seed length [19]"
                },
                {
                    "id": "#bwa_mem_0.7.17.cwl/K",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-K"
                    },
                    "doc": "process INT input bases in each batch regardless of nThreads (for reproducibility) []"
                },
                {
                    "id": "#bwa_mem_0.7.17.cwl/output",
                    "type": [
                        "null",
                        "string"
                    ]
                },
                {
                    "id": "#bwa_mem_0.7.17.cwl/p",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-p"
                    },
                    "doc": "smart pairing (ignoring in2.fq)"
                },
                {
                    "id": "#bwa_mem_0.7.17.cwl/r",
                    "type": [
                        "null",
                        "float"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-r"
                    },
                    "doc": "look for internal seeds inside a seed longer than {-k} * FLOAT [1.5]"
                },
                {
                    "id": "#bwa_mem_0.7.17.cwl/v",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-v"
                    },
                    "doc": "verbosity level: 1=error, 2=warning, 3=message, 4+=debugging [3]"
                },
                {
                    "id": "#bwa_mem_0.7.17.cwl/w",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-w"
                    },
                    "doc": "band width for banded alignment [100]"
                },
                {
                    "id": "#bwa_mem_0.7.17.cwl/y",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-y"
                    },
                    "doc": "seed occurrence for the 3rd round seeding [20]"
                },
                {
                    "id": "#bwa_mem_0.7.17.cwl/D",
                    "type": [
                        "null",
                        "float"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-D"
                    },
                    "doc": "drop chains shorter than FLOAT fraction of the longest overlapping chain [0.50]"
                },
                {
                    "id": "#bwa_mem_0.7.17.cwl/W",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-W"
                    },
                    "doc": "discard a chain if seeded bases shorter than INT [0]"
                },
                {
                    "id": "#bwa_mem_0.7.17.cwl/m",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-m"
                    },
                    "doc": "perform at most INT rounds of mate rescues for each read [50]"
                },
                {
                    "id": "#bwa_mem_0.7.17.cwl/e",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-e"
                    }
                },
                {
                    "id": "#bwa_mem_0.7.17.cwl/x",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-x"
                    },
                    "doc": "read type. Setting -x changes multiple parameters unless overridden [null] pacbio: -k17 -W40 -r10 -A1 -B1 -O1 -E1 -L0  (PacBio reads to ref) ont2d: -k14 -W20 -r10 -A1 -B1 -O1 -E1 -L0  (Oxford Nanopore 2D-reads to ref) intractg: -B9 -O16 -L5  (intra-species contigs to ref)"
                },
                {
                    "id": "#bwa_mem_0.7.17.cwl/H",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-H"
                    },
                    "doc": "Use hard clipping \u2019H\u2019 in the SAM output. This option may dramatically reduce the redundancy of output when mapping long contig or BAC sequences"
                },
                {
                    "id": "#bwa_mem_0.7.17.cwl/j",
                    "type": [
                        "null",
                        "File"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-j"
                    },
                    "doc": "treat ALT contigs as part of the primary assembly (i.e. ignore <idxbase>.alt file)"
                },
                {
                    "id": "#bwa_mem_0.7.17.cwl/he",
                    "type": [
                        "null",
                        {
                            "type": "array",
                            "items": "int"
                        }
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-h",
                        "itemSeparator": ","
                    },
                    "doc": "if there are <INT hits with score >80% of the max score, output all in XA [5,200]"
                },
                {
                    "id": "#bwa_mem_0.7.17.cwl/V",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-V"
                    },
                    "doc": "output the reference FASTA header in the XR tag"
                },
                {
                    "id": "#bwa_mem_0.7.17.cwl/Y",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-Y"
                    },
                    "doc": "use soft clipping for supplementary alignments"
                },
                {
                    "id": "#bwa_mem_0.7.17.cwl/I",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-M"
                    }
                },
                {
                    "id": "#bwa_mem_0.7.17.cwl/R",
                    "type": [
                        "null",
                        "string"
                    ],
                    "doc": "STR read group header line such as '@RG\\tID -foo\\tSM -bar' [null]"
                },
                {
                    "id": "#bwa_mem_0.7.17.cwl/sample_id",
                    "type": [
                        "null",
                        "string"
                    ]
                },
                {
                    "id": "#bwa_mem_0.7.17.cwl/lane_id",
                    "type": [
                        "null",
                        "string"
                    ]
                },
                {
                    "id": "#bwa_mem_0.7.17.cwl/platform",
                    "type": [
                        "null",
                        "string"
                    ]
                },
                {
                    "id": "#bwa_mem_0.7.17.cwl/platform_unit",
                    "type": [
                        "null",
                        "string"
                    ]
                },
                {
                    "id": "#bwa_mem_0.7.17.cwl/center_name",
                    "type": [
                        "null",
                        "string"
                    ]
                },
                {
                    "id": "#bwa_mem_0.7.17.cwl/library_id",
                    "type": [
                        "null",
                        "string"
                    ]
                }
            ],
            "outputs": [
                {
                    "id": "#bwa_mem_0.7.17.cwl/bwa_mem_output_sam",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n  if (inputs.output)\n    return inputs.output;\n  return inputs.reads[0].basename.replace(/(fastq.gz)|(fq.gz)/, 'sam');\n}"
                    }
                }
            ],
            "doc": "bwa mem [-aCHMpP] [-t nThreads] [-k minSeedLen] [-w bandWidth] [-d zDropoff] [-r seedSplitRatio] [-c maxOcc] [-A matchScore] [-B mmPenalty] [-O gapOpenPen] [-E gapExtPen] [-L clipPen] [-U unpairPen] [-R RGline] [-v verboseLevel] db.prefix reads.fq [mates.fq]\nAlign 70bp-1Mbp query sequences with the BWA-MEM algorithm. Briefly, the algorithm works by seeding alignments with maximal exact matches (MEMs) and then extending seeds with the affine-gap Smith-Waterman algorithm (SW).\n\nIf mates.fq file is absent and option -p is not set, this command regards input reads are single-end. If mates.fq is present, this command assumes the i-th read in reads.fq and the i-th read in mates.fq constitute a read pair. If -p is used, the command assumes the 2i-th and the (2i+1)-th read in reads.fq constitute a read pair (such input file is said to be interleaved). In this case, mates.fq is ignored. In the paired-end mode, the mem command will infer the read orientation and the insert size distribution from a batch of reads.\n\nThe BWA-MEM algorithm performs local alignment. It may produce multiple primary alignments for different part of a query sequence. This is a crucial feature for long sequences. However, some tools such as Picard\u2019s markDuplicates does not work with split alignments. One may consider to use option -M to flag shorter split hits as secondary.",
            "label": "bwa_mem_0.7.17",
            "arguments": [
                {
                    "position": 0,
                    "prefix": "-t",
                    "valueFrom": "$(runtime.cores)"
                },
                {
                    "position": 0,
                    "prefix": "-R",
                    "valueFrom": "${\n    if (inputs.sample_id) {\n        var rg_id = \"@RG\\\\tID:\" + inputs.sample_id + \"\\\\tSM:\" + inputs.sample_id;\n        if (inputs.library_id) {\n            rg_id += \"\\\\tLB:\" + inputs.library_id;\n        } if (inputs.platform) {\n            rg_id += \"\\\\tPL:\" + inputs.platform;\n        } if (inputs.platform_unit) {\n            rg_id += \"\\\\tPU:\" + inputs.platform_unit;\n        } if (inputs.center_name) {\n            rg_id += \"\\\\tCN:\" + inputs.center_name;\n        }\n        return rg_id\n    } else {\n        return inputs.R\n    }\n}"
                }
            ],
            "requirements": [
                {
                    "class": "ResourceRequirement",
                    "ramMin": 34000,
                    "coresMin": 16
                },
                {
                    "class": "DockerRequirement",
                    "dockerPull": "ghcr.io/msk-access/bwa:0.7.17"
                },
                {
                    "class": "InlineJavascriptRequirement"
                }
            ],
            "stdout": "${\n  if (inputs.output)\n    return inputs.output;\n  return inputs.reads[0].basename.replace(/(fastq.gz)|(fq.gz)/, 'sam');\n}",
            "id": "#bwa_mem_0.7.17.cwl",
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
                    "http://usefulinc.com/ns/doap#name": "bwa",
                    "http://usefulinc.com/ns/doap#revision": "0.7.17"
                }
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#picard_add_or_replace_read_groups_4.1.8.1.cwl",
            "baseCommand": [
                "java"
            ],
            "inputs": [
                {
                    "id": "#picard_add_or_replace_read_groups_4.1.8.1.cwl/picard_add_or_replace_read_groups_4.1.8.1/memory_per_job",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory per job in megabytes"
                },
                {
                    "id": "#picard_add_or_replace_read_groups_4.1.8.1.cwl/picard_add_or_replace_read_groups_4.1.8.1/memory_overhead",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory overhead per job in megabytes"
                },
                {
                    "id": "#picard_add_or_replace_read_groups_4.1.8.1.cwl/picard_add_or_replace_read_groups_4.1.8.1/number_of_threads",
                    "type": [
                        "null",
                        "int"
                    ]
                },
                {
                    "id": "#picard_add_or_replace_read_groups_4.1.8.1.cwl/picard_add_or_replace_read_groups_4.1.8.1/input",
                    "type": "File",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-I"
                    },
                    "doc": "Input file ( sam).  Required."
                },
                {
                    "id": "#picard_add_or_replace_read_groups_4.1.8.1.cwl/picard_add_or_replace_read_groups_4.1.8.1/output_file_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "doc": "Output file name (bam or sam). Not Required"
                },
                {
                    "id": "#picard_add_or_replace_read_groups_4.1.8.1.cwl/picard_add_or_replace_read_groups_4.1.8.1/sort_order",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-SO"
                    },
                    "doc": "Optional sort order to output in. If not supplied OUTPUT is in the same order as INPUT.Default value: null. Possible values: {unsorted, queryname, coordinate}"
                },
                {
                    "id": "#picard_add_or_replace_read_groups_4.1.8.1.cwl/picard_add_or_replace_read_groups_4.1.8.1/read_group_identifier",
                    "type": "string",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--RGID"
                    },
                    "doc": "Read Group ID  Default value: 1. This option can be set to 'null' to clear the default value  Required"
                },
                {
                    "id": "#picard_add_or_replace_read_groups_4.1.8.1.cwl/picard_add_or_replace_read_groups_4.1.8.1/read_group_sequencing_center",
                    "type": "string",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--RGCN"
                    },
                    "doc": "Read Group sequencing center name  Default value: null. Required"
                },
                {
                    "id": "#picard_add_or_replace_read_groups_4.1.8.1.cwl/picard_add_or_replace_read_groups_4.1.8.1/read_group_library",
                    "type": "string",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--RGLB"
                    },
                    "doc": "Read Group Library.  Required"
                },
                {
                    "id": "#picard_add_or_replace_read_groups_4.1.8.1.cwl/picard_add_or_replace_read_groups_4.1.8.1/read_group_platform_unit",
                    "type": "string",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--RGPU"
                    },
                    "doc": "Read Group platform unit (eg. run barcode)  Required."
                },
                {
                    "id": "#picard_add_or_replace_read_groups_4.1.8.1.cwl/picard_add_or_replace_read_groups_4.1.8.1/read_group_sample_name",
                    "type": "string",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--RGSM"
                    },
                    "doc": "Read Group sample name.  Required"
                },
                {
                    "id": "#picard_add_or_replace_read_groups_4.1.8.1.cwl/picard_add_or_replace_read_groups_4.1.8.1/read_group_sequencing_platform",
                    "type": "string",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--RGPL"
                    },
                    "doc": "Read Group platform (e.g. illumina, solid)  Required."
                },
                {
                    "id": "#picard_add_or_replace_read_groups_4.1.8.1.cwl/picard_add_or_replace_read_groups_4.1.8.1/read_group_description",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--RGDS"
                    },
                    "doc": "Read Group description  Default value: null."
                },
                {
                    "id": "#picard_add_or_replace_read_groups_4.1.8.1.cwl/picard_add_or_replace_read_groups_4.1.8.1/read_group_run_date",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--RGDT"
                    },
                    "doc": "Read Group run date  Default value: null."
                },
                {
                    "id": "#picard_add_or_replace_read_groups_4.1.8.1.cwl/picard_add_or_replace_read_groups_4.1.8.1/validation_stringency",
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
                    "id": "#picard_add_or_replace_read_groups_4.1.8.1.cwl/picard_add_or_replace_read_groups_4.1.8.1/bam_compression_level",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--COMPRESSION_LEVEL"
                    },
                    "doc": "Compression level for all compressed files created (e.g. BAM and GELI). Default value:5. This option can be set to 'null' to clear the default value."
                },
                {
                    "id": "#picard_add_or_replace_read_groups_4.1.8.1.cwl/picard_add_or_replace_read_groups_4.1.8.1/use_jdk_deflater",
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
                    "id": "#picard_add_or_replace_read_groups_4.1.8.1.cwl/picard_add_or_replace_read_groups_4.1.8.1/use_jdk_inflater",
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
                    "default": true,
                    "id": "#picard_add_or_replace_read_groups_4.1.8.1.cwl/picard_add_or_replace_read_groups_4.1.8.1/create_bam_index",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--CREATE_INDEX"
                    },
                    "doc": "Whether to create a BAM index when writing a coordinate-sorted BAM file. Default value:false. This option can be set to 'null' to clear the default value. Possible values:{true, false}"
                },
                {
                    "id": "#picard_add_or_replace_read_groups_4.1.8.1.cwl/picard_add_or_replace_read_groups_4.1.8.1/temporary_directory",
                    "type": [
                        "null",
                        "string"
                    ],
                    "doc": "Default value: null. This option may be specified 0 or more times."
                }
            ],
            "outputs": [
                {
                    "id": "#picard_add_or_replace_read_groups_4.1.8.1.cwl/picard_add_or_replace_read_groups_4.1.8.1/picard_add_or_replace_read_groups_bam",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    if(inputs.output_file_name)\n        return inputs.output_file_name;\n    return inputs.input.basename.replace(/.sam$/, '_srt.bam');\n}"
                    },
                    "secondaryFiles": [
                        "^.bai"
                    ]
                }
            ],
            "label": "picard_add_or_replace_read_groups_4.1.8.1",
            "arguments": [
                {
                    "position": 0,
                    "valueFrom": "${\n  if(inputs.memory_per_job && inputs.memory_overhead) {\n    if(inputs.memory_per_job % 1000 == 0) {\n      return \"-Xmx\" + (inputs.memory_per_job/1000).toString() + \"G\"\n    }\n    else {\n      return \"-Xmx\" + Math.floor((inputs.memory_per_job/1000)).toString() + \"G\"\n    }\n  }\n  else if (inputs.memory_per_job && !inputs.memory_overhead){\n    if(inputs.memory_per_job % 1000 == 0) {\n      return \"-Xmx\" + (inputs.memory_per_job/1000).toString() + \"G\"\n    }\n    else {\n      return \"-Xmx\" + Math.floor((inputs.memory_per_job/1000)).toString() + \"G\"\n    }\n  }\n  else if(!inputs.memory_per_job && inputs.memory_overhead){\n    return \"-Xmx15G\"\n  }\n  else {\n      return \"-Xmx15G\"\n  }\n}"
                },
                {
                    "position": 0,
                    "prefix": "-Djava.io.tmpdir=",
                    "separate": false,
                    "valueFrom": "${\n    if(inputs.temporary_directory)\n        return inputs.temporary_directory;\n      return runtime.tmpdir\n}"
                },
                {
                    "position": 0,
                    "shellQuote": false,
                    "valueFrom": "-XX:-UseGCOverheadLimit"
                },
                {
                    "position": 0,
                    "prefix": "-jar",
                    "valueFrom": "/gatk/gatk-package-4.1.8.1-local.jar"
                },
                {
                    "position": 0,
                    "valueFrom": "AddOrReplaceReadGroups"
                },
                {
                    "position": 0,
                    "prefix": "--TMP_DIR",
                    "valueFrom": "${\n    if(inputs.temporary_directory)\n        return inputs.temporary_directory;\n      return runtime.tmpdir\n}"
                },
                {
                    "position": 0,
                    "prefix": "-O",
                    "valueFrom": "${\n    if(inputs.output_file_name)\n        return inputs.output_file_name;\n      return inputs.input.basename.replace(/.sam$/, '_srt.bam');\n}"
                }
            ],
            "requirements": [
                {
                    "class": "ShellCommandRequirement"
                },
                {
                    "class": "ResourceRequirement",
                    "ramMin": 17000,
                    "coresMin": 2
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
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:kumarn1@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Nikhil Kumar"
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
                    "http://usefulinc.com/ns/doap#name": "picard",
                    "http://usefulinc.com/ns/doap#revision": "4.1.8.1"
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
