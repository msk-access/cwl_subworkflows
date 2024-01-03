{
    "$graph": [
        {
            "class": "CommandLineTool",
            "id": "#maf_filter_cmoch.cwl",
            "baseCommand": [
                "pv"
            ],
            "inputs": [
                {
                    "id": "#maf_filter_cmoch.cwl/pv_maf_filter/memory_per_job",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory per job in megabytes"
                },
                {
                    "id": "#maf_filter_cmoch.cwl/pv_maf_filter/memory_overhead",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory overhead per job in megabytes"
                },
                {
                    "id": "#maf_filter_cmoch.cwl/pv_maf_filter/number_of_threads",
                    "type": [
                        "null",
                        "int"
                    ]
                },
                {
                    "id": "#maf_filter_cmoch.cwl/pv_maf_filter/input_maf",
                    "type": "File",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-m"
                    }
                },
                {
                    "id": "#maf_filter_cmoch.cwl/pv_maf_filter/output_maf_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-o"
                    },
                    "https://www.sevenbridges.com/toolDefaultValue": "output.maf"
                },
                {
                    "id": "#maf_filter_cmoch.cwl/pv_maf_filter/output_maf_separator",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-sep"
                    },
                    "https://www.sevenbridges.com/toolDefaultValue": "tsv"
                }
            ],
            "label": "pv_maf_filter",
            "arguments": [
                "maf",
                "filter",
                "cmo_ch",
                {
                    "position": 2,
                    "prefix": "--output",
                    "valueFrom": "${ \n    if (inputs.output_maf_name) { \n        return inputs.output_maf_name \n    } else { \n        return inputs.input_maf.basename.replace('.maf', '_maftagcmoCh.maf') \n    } \n}"
                }
            ],
            "requirements": [
                {
                    "class": "ResourceRequirement",
                    "ramMin": 8000,
                    "coresMin": 2
                },
                {
                    "class": "DockerRequirement",
                    "dockerPull": "ghcr.io/msk-access/postprocessing_variant_calls:chipvar_dev10"
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
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:sivaprk@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Karthigayini Sivaprakasam"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "class": "http://usefulinc.com/ns/doap#Version",
                    "http://usefulinc.com/ns/doap#name": "postprocessing_variant_calls",
                    "http://usefulinc.com/ns/doap#revision": "0.2.3"
                }
            ],
            "outputs": [
                {
                    "id": "#maf_filter_cmoch.cwl/pv_maf_filter/output",
                    "type": [
                        "null",
                        "File"
                    ],
                    "outputBinding": {
                        "glob": "${ \n    if (inputs.output_maf_name) { \n        return inputs.output_maf_name \n    } else { \n        return inputs.input_maf.basename.replace('.maf', '_maftagcmoCh.maf') \n    } \n}"
                    }
                }
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#maf_tag_cmoch.cwl",
            "baseCommand": [
                "pv"
            ],
            "inputs": [
                {
                    "id": "#maf_tag_cmoch.cwl/pv_maf_tag/memory_per_job",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory per job in megabytes"
                },
                {
                    "id": "#maf_tag_cmoch.cwl/pv_maf_tag/memory_overhead",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory overhead per job in megabytes"
                },
                {
                    "id": "#maf_tag_cmoch.cwl/pv_maf_tag/number_of_threads",
                    "type": [
                        "null",
                        "int"
                    ]
                },
                {
                    "id": "#maf_tag_cmoch.cwl/pv_maf_tag/input_maf",
                    "type": "File",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-m"
                    }
                },
                {
                    "id": "#maf_tag_cmoch.cwl/pv_maf_tag/output_maf_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-o"
                    },
                    "https://www.sevenbridges.com/toolDefaultValue": "output.maf"
                },
                {
                    "id": "#maf_tag_cmoch.cwl/pv_maf_tag/output_maf_separator",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-sep"
                    },
                    "https://www.sevenbridges.com/toolDefaultValue": "tsv"
                }
            ],
            "outputs": [
                {
                    "id": "#maf_tag_cmoch.cwl/pv_maf_tag/output",
                    "type": [
                        "null",
                        "File"
                    ],
                    "outputBinding": {
                        "glob": "${ \n    if (inputs.output_maf_name) { \n        return inputs.output_maf_name \n    } else { \n        return inputs.input_maf.basename.replace('.maf', '_maftagcmoCh.maf') \n    } \n}"
                    }
                }
            ],
            "label": "pv_maf_tag",
            "arguments": [
                "maf",
                "tag",
                "cmo_ch",
                {
                    "position": 2,
                    "prefix": "--output",
                    "valueFrom": "${ \n    if (inputs.output_maf_name) { \n        return inputs.output_maf_name \n    } else { \n        return inputs.input_maf.basename.replace('.maf', '_maftagcmoCh.maf') \n    } \n}"
                }
            ],
            "requirements": [
                {
                    "class": "ResourceRequirement",
                    "ramMin": 8000,
                    "coresMin": 2
                },
                {
                    "class": "DockerRequirement",
                    "dockerPull": "ghcr.io/msk-access/postprocessing_variant_calls:chipvar_dev10"
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
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:sivaprk@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Karthigayini Sivaprakasam"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "class": "http://usefulinc.com/ns/doap#Version",
                    "http://usefulinc.com/ns/doap#name": "postprocessing_variant_calls",
                    "http://usefulinc.com/ns/doap#revision": "0.2.3"
                }
            ]
        },
        {
            "class": "Workflow",
            "id": "#main",
            "label": "chipvar_processing",
            "inputs": [
                {
                    "id": "#main/output_maf_name_filter",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": -453,
                    "https://www.sevenbridges.com/y": -272.5
                },
                {
                    "id": "#main/output_maf_name_tag",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": -911,
                    "https://www.sevenbridges.com/y": -200
                },
                {
                    "id": "#main/input_variant_annotated_maf",
                    "type": "File",
                    "https://www.sevenbridges.com/x": -1012.5234375,
                    "https://www.sevenbridges.com/y": 20
                }
            ],
            "outputs": [
                {
                    "id": "#main/output_maf_cmoch_filtered",
                    "outputSource": [
                        "#main/pv_maf_filter/output"
                    ],
                    "type": [
                        "null",
                        "File"
                    ],
                    "https://www.sevenbridges.com/x": -183,
                    "https://www.sevenbridges.com/y": 111
                },
                {
                    "id": "#main/output_maf_cmoch_tag",
                    "outputSource": [
                        "#main/pv_maf_tag/output"
                    ],
                    "type": [
                        "null",
                        "File"
                    ],
                    "https://www.sevenbridges.com/x": -559,
                    "https://www.sevenbridges.com/y": 104
                }
            ],
            "steps": [
                {
                    "id": "#main/pv_maf_filter",
                    "in": [
                        {
                            "id": "#main/pv_maf_filter/input_maf",
                            "source": "#main/pv_maf_tag/output"
                        },
                        {
                            "id": "#main/pv_maf_filter/output_maf_name",
                            "source": "#main/output_maf_name_filter"
                        }
                    ],
                    "out": [
                        {
                            "id": "#main/pv_maf_filter/output"
                        }
                    ],
                    "run": "#maf_filter_cmoch.cwl",
                    "label": "pv_maf_filter",
                    "https://www.sevenbridges.com/x": -303,
                    "https://www.sevenbridges.com/y": -116
                },
                {
                    "id": "#main/pv_maf_tag",
                    "in": [
                        {
                            "id": "#main/pv_maf_tag/input_maf",
                            "source": "#main/input_variant_annotated_maf"
                        },
                        {
                            "id": "#main/pv_maf_tag/output_maf_name",
                            "source": "#main/output_maf_name_tag"
                        }
                    ],
                    "out": [
                        {
                            "id": "#main/pv_maf_tag/output"
                        }
                    ],
                    "run": "#maf_tag_cmoch.cwl",
                    "label": "pv_maf_tag",
                    "https://www.sevenbridges.com/x": -777,
                    "https://www.sevenbridges.com/y": -80
                }
            ],
            "requirements": []
        }
    ],
    "cwlVersion": "v1.0",
    "$namespaces": {
        "sbg": "https://www.sevenbridges.com/"
    }
}
