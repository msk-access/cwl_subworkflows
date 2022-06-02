{
    "$graph": [
        {
            "class": "Workflow",
            "inputs": [
                {
                    "type": "File",
                    "id": "#main/coverage_file"
                },
                {
                    "type": "File",
                    "id": "#main/panel_bed"
                },
                {
                    "type": "File",
                    "id": "#main/transcript_file"
                }
            ],
            "outputs": [
                {
                    "type": "Directory",
                    "outputSource": "#main/report/coverage_report_single",
                    "id": "#main/coverage_report_single"
                }
            ],
            "steps": [
                {
                    "run": "#annotate_bed.cwl",
                    "in": [
                        {
                            "source": "#main/coverage_file",
                            "id": "#main/annotate/coverage_file"
                        },
                        {
                            "source": "#main/panel_bed",
                            "id": "#main/annotate/panel_bed"
                        },
                        {
                            "source": "#main/transcript_file",
                            "id": "#main/annotate/transcript_file"
                        }
                    ],
                    "out": [
                        "#main/annotate/annotated_bed"
                    ],
                    "id": "#main/annotate"
                },
                {
                    "run": "#coverage_report_single.cwl",
                    "in": [
                        {
                            "source": "#main/stats/exon_stats_output",
                            "id": "#main/report/exon_stats"
                        },
                        {
                            "source": "#main/stats/gene_stats_output",
                            "id": "#main/report/gene_stats"
                        },
                        {
                            "source": "#main/annotate/annotated_bed",
                            "id": "#main/report/raw_coverage"
                        }
                    ],
                    "out": [
                        "#main/report/coverage_report_single"
                    ],
                    "id": "#main/report"
                },
                {
                    "run": "#coverage_stats_single.cwl",
                    "in": [
                        {
                            "source": "#main/annotate/annotated_bed",
                            "id": "#main/stats/file"
                        }
                    ],
                    "out": [
                        "#main/stats/gene_stats_output",
                        "#main/stats/exon_stats_output"
                    ],
                    "id": "#main/stats"
                }
            ],
            "id": "#main"
        },
        {
            "class": "CommandLineTool",
            "id": "#annotate_bed.cwl",
            "baseCommand": [
                "python",
                "/app/bin/annotate_bed.py"
            ],
            "inputs": [
                {
                    "id": "#annotate_bed.cwl/panel_bed",
                    "type": "File",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-p"
                    },
                    "doc": "Input panel bed file; must have ONLY the following 4 columns chromosome, start position, end position, gene/transcript"
                },
                {
                    "id": "#annotate_bed.cwl/transcript_file",
                    "type": "File",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-t"
                    },
                    "doc": "Transcript annotation file, contains required gene and exon information. Must have ONLY the following 6 columns:\nchromosome, start, end, gene, transcript, exon"
                },
                {
                    "id": "#annotate_bed.cwl/coverage_file",
                    "type": "File",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-c"
                    },
                    "doc": "Per base coverage file (output from mosdepth or similar)"
                },
                {
                    "id": "#annotate_bed.cwl/chunk_size",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 999,
                        "prefix": "-s"
                    }
                },
                {
                    "id": "#annotate_bed.cwl/output_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 960,
                        "prefix": "-n"
                    },
                    "doc": "(optional) Prefix for naming output file, if not given will use name from per base coverage file"
                }
            ],
            "outputs": [
                {
                    "id": "#annotate_bed.cwl/annotated_bed",
                    "label": "annotated_bed",
                    "type": "File",
                    "outputBinding": {
                        "glob": "*.bed"
                    }
                }
            ],
            "label": "general_stats_parse",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "ghcr.io/msk-access/athena:1.4.2"
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
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:johnsoni@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Ian Johnson"
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
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#coverage_report_single.cwl",
            "baseCommand": [
                "python",
                "/app/bin/coverage_report_single.py"
            ],
            "inputs": [
                {
                    "id": "#coverage_report_single.cwl/exon_stats",
                    "type": "File",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-e"
                    },
                    "doc": "per exon statistics file (from `coverage_stats_single.py`)"
                },
                {
                    "id": "#coverage_report_single.cwl/gene_stats",
                    "type": "File",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-g"
                    },
                    "doc": "per gene statistics file (from `coverage_stats_single.py`)"
                },
                {
                    "id": "#coverage_report_single.cwl/raw_coverage",
                    "type": "File",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-r"
                    },
                    "doc": "annotated bed file with coverage data (generated from annotate_bed.sh / bedtools intersect)"
                },
                {
                    "id": "#coverage_report_single.cwl/per_base_coverage",
                    "type": [
                        "null",
                        "File"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-b"
                    },
                    "doc": "Per-base coverage bed file from mosdepth. (Optional; if not submitted, plots displaying global coverage per chromosome will not be displayed)"
                },
                {
                    "id": "#coverage_report_single.cwl/snps",
                    "type": [
                        "null",
                        "File"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-s"
                    },
                    "doc": "VCF(s) of known SNPs to check coverage of (optional; i.e. HGMD, ClinVar)"
                },
                {
                    "id": "#coverage_report_single.cwl/threshold",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-t"
                    },
                    "doc": "threshold value defining sub-optimal coverage (optional; default if not given: 20)"
                },
                {
                    "id": "#coverage_report_single.cwl/sample_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-n"
                    }
                },
                {
                    "id": "#coverage_report_single.cwl/output",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-o"
                    },
                    "doc": "name for output report (optional; sample name will be used if not given)"
                },
                {
                    "id": "#coverage_report_single.cwl/panel",
                    "type": [
                        "null",
                        "File"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-p"
                    },
                    "doc": "panel bed file used for initial annotation, name will be displayed in summary of report (optional)"
                },
                {
                    "id": "#coverage_report_single.cwl/limit",
                    "type": [
                        "null",
                        "File"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-l"
                    },
                    "doc": "number of genes at which to limit including full gene plots, large numbers of genes may take a long time to generate the plots (optional)"
                },
                {
                    "id": "#coverage_report_single.cwl/summary",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-m"
                    },
                    "doc": "boolean flag to add clinical report summary text in summary section, includes list of all genes with transcripts (optional; default False)"
                },
                {
                    "id": "#coverage_report_single.cwl/cores",
                    "type": [
                        "null",
                        "File"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--cores"
                    },
                    "doc": "Number of CPU cores to utilise, for larger numbers of genes this will drastically reduce run time. If not given will use maximum available"
                }
            ],
            "outputs": [
                {
                    "id": "#coverage_report_single.cwl/coverage_report_single",
                    "label": "coverage_report_single",
                    "type": "Directory",
                    "outputBinding": {
                        "glob": ".",
                        "outputEval": "${\n    self[0].basename = \"coverage_report_single\";\n    return self[0]\n}"
                    }
                }
            ],
            "label": "general_stats_parse",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "ghcr.io/msk-access/athena:1.4.2"
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
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:johnsoni@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Ian Johnson"
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
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#coverage_stats_single.cwl",
            "baseCommand": [
                "python",
                "/app/bin/coverage_stats_single.py"
            ],
            "inputs": [
                {
                    "id": "#coverage_stats_single.cwl/file",
                    "type": "File",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--file"
                    },
                    "doc": "annotated bed file on which to generate report from"
                },
                {
                    "id": "#coverage_stats_single.cwl/build",
                    "type": [
                        "null",
                        "File"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--build"
                    },
                    "doc": "text file with build number used for alignment, output from mosdepth (optional) chromosome, start, end, gene, transcript, exon"
                },
                {
                    "id": "#coverage_stats_single.cwl/outfile",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--outfile"
                    },
                    "doc": "output file name prefix, if not given the input file name will be used as the name prefix"
                },
                {
                    "id": "#coverage_stats_single.cwl/thresholds",
                    "type": [
                        "null",
                        "int",
                        {
                            "type": "array",
                            "items": "int"
                        }
                    ],
                    "inputBinding": {
                        "position": 999,
                        "prefix": "--thresholds"
                    },
                    "doc": "threshold values to calculate coverage for as comma seperated integers (default: 10, 20, 30, 50, 100)"
                },
                {
                    "id": "#coverage_stats_single.cwl/output_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 900,
                        "prefix": "--n"
                    },
                    "doc": "(optional) Prefix for naming output file, if not given will use name from per base coverage file"
                },
                {
                    "id": "#coverage_stats_single.cwl/flagstat",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 900,
                        "prefix": "--flagstat"
                    },
                    "doc": "file for sample, required for generating run statistics (in development)"
                },
                {
                    "id": "#coverage_stats_single.cwl/cores",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 900,
                        "prefix": "--cores"
                    },
                    "doc": "Number of CPU cores to utilise, for larger numbers of genes this will drastically reduce run time. If not given will use maximum available"
                }
            ],
            "outputs": [
                {
                    "id": "#coverage_stats_single.cwl/exon_stats_output",
                    "label": "exon_stats_output",
                    "type": "File",
                    "outputBinding": {
                        "glob": "*_exon_stats.tsv"
                    }
                },
                {
                    "id": "#coverage_stats_single.cwl/gene_stats_output",
                    "label": "gene_stats_output",
                    "type": "File",
                    "outputBinding": {
                        "glob": "*_gene_stats.tsv"
                    }
                }
            ],
            "label": "general_stats_parse",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "ghcr.io/msk-access/athena:1.4.2"
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
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:johnsoni@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Ian Johnson"
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
            ]
        }
    ],
    "cwlVersion": "v1.0"
}