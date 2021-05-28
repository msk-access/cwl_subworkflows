{
    "$graph": [
        {
            "class": "CommandLineTool",
            "id": "#getbasecountsmultisample_1.2.5.cwl",
            "baseCommand": [
                "GetBaseCountsMultiSample"
            ],
            "inputs": [
                {
                    "id": "#getbasecountsmultisample_1.2.5.cwl/memory_per_job",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory per job in megabytes"
                },
                {
                    "id": "#getbasecountsmultisample_1.2.5.cwl/memory_overhead",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory overhead per job in megabytes"
                },
                {
                    "id": "#getbasecountsmultisample_1.2.5.cwl/number_of_threads",
                    "type": [
                        "null",
                        "int"
                    ]
                },
                {
                    "id": "#getbasecountsmultisample_1.2.5.cwl/genotyping_bams",
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "doc": "Input bam file"
                },
                {
                    "id": "#getbasecountsmultisample_1.2.5.cwl/genotyping_bams_ids",
                    "type": [
                        "string",
                        {
                            "type": "array",
                            "items": "string"
                        }
                    ],
                    "doc": "Input bam, sample identifier to be used for \"Tumor Sample Barcode\" for maf or Sample name in the header for vcf"
                },
                {
                    "id": "#getbasecountsmultisample_1.2.5.cwl/filter_duplicate",
                    "type": "int",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--filter_duplicate"
                    },
                    "doc": "Whether to filter reads that are marked as duplicate. 0=off, 1=on. Default 1"
                },
                {
                    "id": "#getbasecountsmultisample_1.2.5.cwl/fragment_count",
                    "type": "int",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--fragment_count"
                    },
                    "doc": "Whether to output fragment read counts DPF/RDF/ADF. 0=off, 1=on. Default 0"
                },
                {
                    "id": "#getbasecountsmultisample_1.2.5.cwl/maf",
                    "type": "File",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--maf"
                    },
                    "doc": "Input variant file in TCGA maf format. --maf or --vcf need to be specified at least once. But --maf and --vcf are mutually exclusive"
                },
                {
                    "id": "#getbasecountsmultisample_1.2.5.cwl/maq",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--maq"
                    },
                    "doc": "Mapping quality threshold. Default 20"
                },
                {
                    "id": "#getbasecountsmultisample_1.2.5.cwl/omaf",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--omaf"
                    },
                    "doc": "Output the result in maf format"
                },
                {
                    "id": "#getbasecountsmultisample_1.2.5.cwl/output",
                    "type": "string",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--output"
                    },
                    "doc": "Filename for output of raw fillout data in MAF/VCF format"
                },
                {
                    "id": "#getbasecountsmultisample_1.2.5.cwl/ref_fasta",
                    "type": "File",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--fasta"
                    },
                    "doc": "Input reference sequence file"
                },
                {
                    "id": "#getbasecountsmultisample_1.2.5.cwl/vcf",
                    "type": [
                        "null",
                        "File"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--vcf"
                    },
                    "doc": "Input variant file in vcf-like format(the first 5 columns are used). --maf or --vcf need to be specified at least once. But --maf and --vcf are mutually exclusive"
                },
                {
                    "id": "#getbasecountsmultisample_1.2.5.cwl/generic_counting",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--generic_counting"
                    },
                    "doc": "Use the newly implemented generic counting algorithm. Works better for complex variants. You may get different allele count result from the default counting algorithm"
                }
            ],
            "outputs": [
                {
                    "id": "#getbasecountsmultisample_1.2.5.cwl/fillout",
                    "type": "File",
                    "outputBinding": {
                        "glob": "$(inputs.output)\n"
                    }
                }
            ],
            "label": "getbasecountsmultisample_1.2.5",
            "arguments": [
                {
                    "position": 0,
                    "prefix": "",
                    "shellQuote": false,
                    "valueFrom": "$('--bam_fof bam_fof.tsv')\n"
                },
                {
                    "position": 0,
                    "prefix": "--thread",
                    "valueFrom": "$(runtime.cores)"
                }
            ],
            "requirements": [
                {
                    "class": "ShellCommandRequirement"
                },
                {
                    "class": "ResourceRequirement",
                    "ramMin": 16000,
                    "coresMin": 2
                },
                {
                    "class": "DockerRequirement",
                    "dockerPull": "ghcr.io/msk-access/gbcms:1.2.5"
                },
                {
                    "class": "InitialWorkDirRequirement",
                    "listing": [
                        {
                            "entryname": "bam_fof.tsv",
                            "entry": "${\n  if (typeof(inputs.genotyping_bams_ids) == 'object') {\n      return inputs.genotyping_bams_ids.map(function(sid, i) {\n        return sid + \"\\t\" +\n          inputs.genotyping_bams[i].path\n      }).join(\"\\n\")\n  } else {\n      return inputs.genotyping_bams_ids + \"\\t\" + inputs.genotyping_bams.path + \"\\n\"\n  }\n}",
                            "writable": false
                        }
                    ]
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
                    "http://usefulinc.com/ns/doap#name": "GetBaseCountsMultiSample",
                    "http://usefulinc.com/ns/doap#revision": "1.2.5"
                }
            ],
            "$namespaces": {
                "s": "https://schema.org/",
                "sbg": "https://www.sevenbridges.com/"
            }
        },
        {
            "class": "Workflow",
            "id": "#main",
            "label": "gbcms_genotyping",
            "inputs": [
                {
                    "id": "#duplex_bams",
                    "type": {
                        "type": "array",
                        "items": "File"
                    },
                    "secondaryFiles": [
                        "^.bai"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1067.0859375
                },
                {
                    "id": "#normal_bams",
                    "type": {
                        "type": "array",
                        "items": "File"
                    },
                    "secondaryFiles": [
                        "^.bai"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 640.2421875
                },
                {
                    "id": "#tumor_bams",
                    "type": {
                        "type": "array",
                        "items": "File"
                    },
                    "secondaryFiles": [
                        "^.bai"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 106.7109375
                },
                {
                    "id": "#simplex_bams",
                    "type": {
                        "type": "array",
                        "items": "File"
                    },
                    "secondaryFiles": [
                        "^.bai"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 320.1328125
                },
                {
                    "id": "#maf",
                    "type": "File",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 746.9296875
                },
                {
                    "id": "#ref_fasta",
                    "type": "File",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 426.8203125
                },
                {
                    "id": "#simplex_genotyping_bams_ids",
                    "type": {
                        "type": "array",
                        "items": "string"
                    },
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 213.421875
                },
                {
                    "id": "#generic_counting",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 853.640625
                },
                {
                    "id": "#normal_genotyping_bams_ids",
                    "type": {
                        "type": "array",
                        "items": "string"
                    },
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 533.53125
                },
                {
                    "id": "#tumor_genotyping_bams_ids",
                    "type": {
                        "type": "array",
                        "items": "string"
                    },
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 0
                },
                {
                    "id": "#duplex_genotyping_bams_ids",
                    "type": {
                        "type": "array",
                        "items": "string"
                    },
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 960.375
                }
            ],
            "outputs": [
                {
                    "id": "#tumor_fillout",
                    "outputSource": [
                        "#tumor_getbasecountsmultisample_1_2_5/fillout"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "https://www.sevenbridges.com/x": 611.2342529296875,
                    "https://www.sevenbridges.com/y": 373.5234375
                },
                {
                    "id": "#simplex_fillout",
                    "outputSource": [
                        "#simplex_getbasecountsmultisample_1_2_5/fillout"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "https://www.sevenbridges.com/x": 611.2342529296875,
                    "https://www.sevenbridges.com/y": 480.2109375
                },
                {
                    "id": "#normal_fillout",
                    "outputSource": [
                        "#normal_getbasecountsmultisample_1_2_5/fillout"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "https://www.sevenbridges.com/x": 611.2342529296875,
                    "https://www.sevenbridges.com/y": 586.8984375
                },
                {
                    "id": "#duplex_fillout",
                    "outputSource": [
                        "#duplex_getbasecountsmultisample_1_2_5/fillout"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "https://www.sevenbridges.com/x": 611.2342529296875,
                    "https://www.sevenbridges.com/y": 693.5859375
                }
            ],
            "steps": [
                {
                    "id": "#duplex_getbasecountsmultisample_1_2_5",
                    "in": [
                        {
                            "id": "#duplex_getbasecountsmultisample_1_2_5/genotyping_bams",
                            "source": [
                                "#duplex_bams"
                            ]
                        },
                        {
                            "id": "#duplex_getbasecountsmultisample_1_2_5/genotyping_bams_ids",
                            "source": [
                                "#duplex_genotyping_bams_ids"
                            ]
                        },
                        {
                            "id": "#duplex_getbasecountsmultisample_1_2_5/filter_duplicate",
                            "default": 0
                        },
                        {
                            "id": "#duplex_getbasecountsmultisample_1_2_5/fragment_count",
                            "default": 1
                        },
                        {
                            "id": "#duplex_getbasecountsmultisample_1_2_5/maf",
                            "source": "#maf"
                        },
                        {
                            "id": "#duplex_getbasecountsmultisample_1_2_5/maq",
                            "default": 20
                        },
                        {
                            "id": "#duplex_getbasecountsmultisample_1_2_5/omaf",
                            "default": true
                        },
                        {
                            "id": "#duplex_getbasecountsmultisample_1_2_5/output",
                            "source": "#duplex_genotyping_bams_ids",
                            "valueFrom": "${\n  if (inputs.duplex_output) {\n    return inputs.duplex_output\n  } else {\n    if (typeof(self) == 'object') {\n        return self.map(function(b, i) {\n          return b + \"_fillout_DUPLEX.maf\"\n        })\n    } else {\n        return self + \"_fillout_DUPLEX.maf\"\n    }\n  }\n}"
                        },
                        {
                            "id": "#duplex_getbasecountsmultisample_1_2_5/ref_fasta",
                            "source": "#ref_fasta"
                        },
                        {
                            "id": "#duplex_getbasecountsmultisample_1_2_5/generic_counting",
                            "source": "#generic_counting"
                        }
                    ],
                    "out": [
                        {
                            "id": "#duplex_getbasecountsmultisample_1_2_5/fillout"
                        }
                    ],
                    "run": "#getbasecountsmultisample_1.2.5.cwl",
                    "label": "duplex_getbasecountsmultisample_1.2.5",
                    "scatter": [
                        "#duplex_getbasecountsmultisample_1_2_5/genotyping_bams",
                        "#duplex_getbasecountsmultisample_1_2_5/genotyping_bams_ids",
                        "#duplex_getbasecountsmultisample_1_2_5/output"
                    ],
                    "scatterMethod": "dotproduct",
                    "https://www.sevenbridges.com/x": 295.84375,
                    "https://www.sevenbridges.com/y": 763.6328125
                },
                {
                    "id": "#simplex_getbasecountsmultisample_1_2_5",
                    "in": [
                        {
                            "id": "#simplex_getbasecountsmultisample_1_2_5/genotyping_bams",
                            "source": [
                                "#simplex_bams"
                            ]
                        },
                        {
                            "id": "#simplex_getbasecountsmultisample_1_2_5/genotyping_bams_ids",
                            "source": [
                                "#simplex_genotyping_bams_ids"
                            ]
                        },
                        {
                            "id": "#simplex_getbasecountsmultisample_1_2_5/filter_duplicate",
                            "default": 0
                        },
                        {
                            "id": "#simplex_getbasecountsmultisample_1_2_5/fragment_count",
                            "default": 1
                        },
                        {
                            "id": "#simplex_getbasecountsmultisample_1_2_5/maf",
                            "source": "#maf"
                        },
                        {
                            "id": "#simplex_getbasecountsmultisample_1_2_5/maq",
                            "default": 20
                        },
                        {
                            "id": "#simplex_getbasecountsmultisample_1_2_5/omaf",
                            "default": true
                        },
                        {
                            "id": "#simplex_getbasecountsmultisample_1_2_5/output",
                            "source": "#simplex_genotyping_bams_ids",
                            "valueFrom": "${\n  if (inputs.simplex_output){\n    return inputs.simplex_output\n  } else {\n    if (typeof(self) == 'object') {\n        return self.map(function(b, i) {\n          return b + \"_fillout_SIMPLEX.maf\"\n        })\n    } else {\n        return self + \"_fillout_SIMPLEX.maf\"\n    }\n  }\n}"
                        },
                        {
                            "id": "#simplex_getbasecountsmultisample_1_2_5/ref_fasta",
                            "source": "#ref_fasta"
                        },
                        {
                            "id": "#simplex_getbasecountsmultisample_1_2_5/generic_counting",
                            "source": "#generic_counting"
                        }
                    ],
                    "out": [
                        {
                            "id": "#simplex_getbasecountsmultisample_1_2_5/fillout"
                        }
                    ],
                    "run": "#getbasecountsmultisample_1.2.5.cwl",
                    "label": "simplex_getbasecountsmultisample_1.2.5",
                    "scatter": [
                        "#simplex_getbasecountsmultisample_1_2_5/genotyping_bams",
                        "#simplex_getbasecountsmultisample_1_2_5/genotyping_bams_ids",
                        "#simplex_getbasecountsmultisample_1_2_5/output"
                    ],
                    "scatterMethod": "dotproduct",
                    "https://www.sevenbridges.com/x": 295.84375,
                    "https://www.sevenbridges.com/y": 410.1640625
                },
                {
                    "id": "#tumor_getbasecountsmultisample_1_2_5",
                    "in": [
                        {
                            "id": "#tumor_getbasecountsmultisample_1_2_5/genotyping_bams",
                            "source": [
                                "#tumor_bams"
                            ]
                        },
                        {
                            "id": "#tumor_getbasecountsmultisample_1_2_5/genotyping_bams_ids",
                            "source": [
                                "#tumor_genotyping_bams_ids"
                            ]
                        },
                        {
                            "id": "#tumor_getbasecountsmultisample_1_2_5/filter_duplicate",
                            "default": 0
                        },
                        {
                            "id": "#tumor_getbasecountsmultisample_1_2_5/fragment_count",
                            "default": 1
                        },
                        {
                            "id": "#tumor_getbasecountsmultisample_1_2_5/maf",
                            "source": "#maf"
                        },
                        {
                            "id": "#tumor_getbasecountsmultisample_1_2_5/maq",
                            "default": 20
                        },
                        {
                            "id": "#tumor_getbasecountsmultisample_1_2_5/omaf",
                            "default": true
                        },
                        {
                            "id": "#tumor_getbasecountsmultisample_1_2_5/output",
                            "source": "#tumor_genotyping_bams_ids",
                            "valueFrom": "${\n  if (inputs.tumor_output) {\n    return inputs.tumor_output\n  } else {\n    if (typeof(self) == 'object') {\n        return self.map(function(b, i) {\n          return b + \"_fillout.maf\"\n        })\n    } else {\n        return self + \"_fillout.maf\"\n    }\n  }\n}   "
                        },
                        {
                            "id": "#tumor_getbasecountsmultisample_1_2_5/ref_fasta",
                            "source": "#ref_fasta"
                        },
                        {
                            "id": "#tumor_getbasecountsmultisample_1_2_5/generic_counting",
                            "source": "#generic_counting"
                        }
                    ],
                    "out": [
                        {
                            "id": "#tumor_getbasecountsmultisample_1_2_5/fillout"
                        }
                    ],
                    "run": "#getbasecountsmultisample_1.2.5.cwl",
                    "label": "tumor_getbasecountsmultisample_1.2.5",
                    "scatter": [
                        "#tumor_getbasecountsmultisample_1_2_5/genotyping_bams",
                        "#tumor_getbasecountsmultisample_1_2_5/genotyping_bams_ids",
                        "#tumor_getbasecountsmultisample_1_2_5/output"
                    ],
                    "scatterMethod": "dotproduct",
                    "https://www.sevenbridges.com/x": 295.84375,
                    "https://www.sevenbridges.com/y": 233.4296875
                },
                {
                    "id": "#normal_getbasecountsmultisample_1_2_5",
                    "in": [
                        {
                            "id": "#normal_getbasecountsmultisample_1_2_5/genotyping_bams",
                            "source": [
                                "#normal_bams"
                            ]
                        },
                        {
                            "id": "#normal_getbasecountsmultisample_1_2_5/genotyping_bams_ids",
                            "source": [
                                "#normal_genotyping_bams_ids"
                            ]
                        },
                        {
                            "id": "#normal_getbasecountsmultisample_1_2_5/filter_duplicate",
                            "default": 0
                        },
                        {
                            "id": "#normal_getbasecountsmultisample_1_2_5/fragment_count",
                            "default": 1
                        },
                        {
                            "id": "#normal_getbasecountsmultisample_1_2_5/maf",
                            "source": "#maf"
                        },
                        {
                            "id": "#normal_getbasecountsmultisample_1_2_5/maq",
                            "default": 20
                        },
                        {
                            "id": "#normal_getbasecountsmultisample_1_2_5/omaf",
                            "default": true
                        },
                        {
                            "id": "#normal_getbasecountsmultisample_1_2_5/output",
                            "source": "#normal_genotyping_bams_ids",
                            "valueFrom": "${\n  if (inputs.normal_output){\n    return inputs.normal_output\n  } else {\n    if (typeof(self) == 'object') {\n        return self.map(function(b, i) {\n          return b + \"_fillout.maf\"\n        })\n    } else {\n        return self + \"_fillout.maf\"\n    }\n  }\n}"
                        },
                        {
                            "id": "#normal_getbasecountsmultisample_1_2_5/ref_fasta",
                            "source": "#ref_fasta"
                        },
                        {
                            "id": "#normal_getbasecountsmultisample_1_2_5/generic_counting",
                            "source": "#generic_counting"
                        }
                    ],
                    "out": [
                        {
                            "id": "#normal_getbasecountsmultisample_1_2_5/fillout"
                        }
                    ],
                    "run": "#getbasecountsmultisample_1.2.5.cwl",
                    "label": "normal_getbasecountsmultisample_1.2.5",
                    "scatter": [
                        "#normal_getbasecountsmultisample_1_2_5/genotyping_bams",
                        "#normal_getbasecountsmultisample_1_2_5/genotyping_bams_ids",
                        "#normal_getbasecountsmultisample_1_2_5/output"
                    ],
                    "scatterMethod": "dotproduct",
                    "https://www.sevenbridges.com/x": 295.84375,
                    "https://www.sevenbridges.com/y": 586.8984375
                }
            ],
            "requirements": [
                {
                    "class": "ScatterFeatureRequirement"
                },
                {
                    "class": "StepInputExpressionRequirement"
                },
                {
                    "class": "InlineJavascriptRequirement"
                }
            ],
            "https://schema.org/author": [
                {
                    "class": "https://schema.org/Person",
                    "https://schema.org/email": "mailto:johnsoni@mskcc.org",
                    "https://schema.org/name": "Ian Johnson"
                }
            ],
            "https://schema.org/citation": "",
            "https://schema.org/codeRepository": "https://github.com/msk-access/cwl_subworkflows/gbcms_genotyping",
            "https://schema.org/contributor": [
                {
                    "class": "https://schema.org/Person",
                    "https://schema.org/email": "mailto:shahr2@mskcc.org",
                    "https://schema.org/name": "Ronak Shah"
                }
            ],
            "https://schema.org/dateCreated": "2021-05-28",
            "https://schema.org/license": "https://spdx.org/licenses/Apache-2.0"
        }
    ],
    "cwlVersion": "v1.0",
    "$schemas": [
        "http://schema.org/version/latest/schemaorg-current-http.rdf"
    ]
}