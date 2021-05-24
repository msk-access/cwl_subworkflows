{
    "$graph": [
        {
            "class": "Workflow",
            "id": "#main",
            "label": "access_qc_aggregator",
            "inputs": [
                {
                    "id": "#duplex_extraction_files",
                    "type": {
                        "type": "array",
                        "items": "File",
                        "inputBinding": {
                            "position": 0,
                            "prefix": "--input"
                        }
                    },
                    "label": "duplex_extraction_files",
                    "doc": "Can be one of three types: (1) path to a CSV file containing sample information (one per line). For example: sample_name,sample_bam,sample_type,sample_sex,sample_group. (2) Path to a '*.pk' file that was produced by the 'extract' tool. (3) Name of the sample to analyze; this assumes there is a file named '{sample_name}.pk' in your database directory. Can be specified more than once.",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 534.296875
                },
                {
                    "id": "#duplex_biometrics_discordance_threshold",
                    "type": [
                        "null",
                        "float"
                    ],
                    "doc": "Discordance values less than this are regarded as matching samples. (default: 0.05)",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 854.875
                },
                {
                    "id": "#biometrics_json",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "label": "biometrics_json",
                    "doc": "Also output data in JSON format.",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 2564.625
                },
                {
                    "id": "#biometrics_plot",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "label": "biometrics_plot",
                    "doc": "Also output plots of the data.",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 2457.765625
                },
                {
                    "id": "#simplex_bam_pool_a_dir",
                    "type": {
                        "type": "array",
                        "items": [
                            "File",
                            "Directory",
                            "null"
                        ]
                    },
                    "label": "simplex_bam_pool_a_dir",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 213.71875
                },
                {
                    "id": "#simplex_bam_pool_b_dir",
                    "type": {
                        "type": "array",
                        "items": [
                            "File",
                            "Directory",
                            "null"
                        ]
                    },
                    "label": "simplex_bam_pool_b_dir",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 213.71875
                },
                {
                    "id": "#duplex_bam_sequence_qc_dir",
                    "type": {
                        "type": "array",
                        "items": [
                            "File",
                            "Directory",
                            "null"
                        ]
                    },
                    "label": "duplex_bam_sequence_qc_dir",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1282.3125
                },
                {
                    "id": "#duplex_bam_stats_pool_a_dir",
                    "type": {
                        "type": "array",
                        "items": [
                            "File",
                            "Directory",
                            "null"
                        ]
                    },
                    "label": "duplex_bam_stats_pool_a_dir",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1175.453125
                },
                {
                    "id": "#duplex_bam_stats_pool_b_dir",
                    "type": {
                        "type": "array",
                        "items": [
                            "File",
                            "Directory",
                            "null"
                        ]
                    },
                    "label": "duplex_bam_stats_pool_b_dir",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1068.59375
                },
                {
                    "id": "#collapsed_bam_stats_pool_a_dir",
                    "type": {
                        "type": "array",
                        "items": [
                            "File",
                            "Directory",
                            "null"
                        ]
                    },
                    "label": "collapsed_bam_stats_pool_a_dir",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 2030.328125
                },
                {
                    "id": "#collapsed_bam_stats_pool_b_dir",
                    "type": {
                        "type": "array",
                        "items": [
                            "File",
                            "Directory",
                            "null"
                        ]
                    },
                    "label": "collapsed_bam_stats_pool_b_dir",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1923.46875
                },
                {
                    "id": "#collapsed_bam_duplex_metrics_pool_a_dir",
                    "type": {
                        "type": "array",
                        "items": [
                            "File",
                            "Directory",
                            "null"
                        ]
                    },
                    "label": "collapsed_bam_duplex_metrics_pool_a_dir",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 2244.046875
                },
                {
                    "id": "#collapsed_bam_duplex_metrics_pool_b_dir",
                    "type": {
                        "type": "array",
                        "items": [
                            "File",
                            "Directory",
                            "null"
                        ]
                    },
                    "label": "collapsed_bam_duplex_metrics_pool_b_dir",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 2137.1875
                },
                {
                    "id": "#gatk_mean_quality_by_cycle_recal_dir",
                    "type": {
                        "type": "array",
                        "items": [
                            "File",
                            "Directory",
                            "null"
                        ]
                    },
                    "label": "gatk_mean_quality_by_cycle_recal_dir",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 320.578125
                },
                {
                    "id": "#gatk_mean_quality_by_cycle_dir",
                    "type": {
                        "type": "array",
                        "items": [
                            "File",
                            "Directory",
                            "null"
                        ]
                    },
                    "label": "gatk_mean_quality_by_cycle_dir",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 427.4375
                },
                {
                    "id": "#uncollapsed_bam_stats_pool_b_dir",
                    "type": {
                        "type": "array",
                        "items": [
                            "File",
                            "Directory",
                            "null"
                        ]
                    },
                    "label": "uncollapsed_bam_stats_pool_b_dir",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 0
                },
                {
                    "id": "#uncollapsed_bam_stats_pool_a_dir",
                    "type": {
                        "type": "array",
                        "items": [
                            "File",
                            "Directory",
                            "null"
                        ]
                    },
                    "label": "uncollapsed_bam_stats_pool_a_dir",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 106.859375
                },
                {
                    "id": "#biometrics_threads",
                    "type": [
                        "null",
                        "int"
                    ],
                    "label": "biometrics_threads",
                    "doc": "Number of threads to use.",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 2350.90625
                },
                {
                    "id": "#duplex_biometrics_coverage_threshold",
                    "type": [
                        "null",
                        "int"
                    ],
                    "label": "duplex_biometrics_coverage_threshold",
                    "doc": "Samples with Y chromosome above this value will be considered male.",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 961.734375
                },
                {
                    "id": "#duplex_biometrics_major_threshold",
                    "type": [
                        "null",
                        "float"
                    ],
                    "label": "duplex_biometrics_major_threshold",
                    "doc": "Major contamination threshold for bad sample.",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 748.015625
                },
                {
                    "id": "#duplex_biometrics_minor_threshold",
                    "type": [
                        "null",
                        "float"
                    ],
                    "label": "duplex_biometrics_minor_threshold",
                    "doc": "Minor contamination threshold for bad sample.",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 641.15625
                },
                {
                    "id": "#collapsed_extraction_files",
                    "type": {
                        "type": "array",
                        "items": "File",
                        "inputBinding": {
                            "position": 0,
                            "prefix": "--input"
                        }
                    },
                    "label": "collapsed_extraction_files",
                    "doc": "Can be one of three types: (1) path to a CSV file containing sample information (one per line). For example: sample_name,sample_bam,sample_type,sample_sex,sample_group. (2) Path to a '*.pk' file that was produced by the 'extract' tool. (3) Name of the sample to analyze; this assumes there is a file named '{sample_name}.pk' in your database directory. Can be specified more than once.",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1389.171875
                },
                {
                    "id": "#collapsed_biometrics_discordance_threshold",
                    "type": [
                        "null",
                        "float"
                    ],
                    "label": "collapsed_biometrics_discordance_threshold",
                    "doc": "Discordance values less than this are regarded as matching samples. (default: 0.05)",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1709.75
                },
                {
                    "id": "#collapsed_biometrics_major_threshold",
                    "type": [
                        "null",
                        "float"
                    ],
                    "label": "collapsed_biometrics_major_threshold",
                    "doc": "Major contamination threshold for bad sample.",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1602.890625
                },
                {
                    "id": "#collapsed_biometrics_minor_threshold",
                    "type": [
                        "null",
                        "float"
                    ],
                    "label": "collapsed_biometrics_minor_threshold",
                    "doc": "Minor contamination threshold for bad sample.",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1496.03125
                },
                {
                    "id": "#collapsed_biometrics_coverage_threshold",
                    "type": [
                        "null",
                        "int"
                    ],
                    "label": "collapsed_biometrics_coverage_threshold",
                    "doc": "Samples with Y chromosome above this value will be considered male.",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1816.609375
                }
            ],
            "outputs": [
                {
                    "id": "#outdir",
                    "outputSource": [
                        "#aggregate/directory"
                    ],
                    "type": {
                        "type": "array",
                        "items": "Directory"
                    },
                    "label": "outdir",
                    "https://www.sevenbridges.com/x": 887.649169921875,
                    "https://www.sevenbridges.com/y": 1175.453125
                },
                {
                    "id": "#duplex_biometrics_outdir",
                    "outputSource": [
                        "#duplex_biometrics_agg/directory"
                    ],
                    "type": "Directory",
                    "label": "duplex_biometrics_outdir",
                    "https://www.sevenbridges.com/x": 1054.649169921875,
                    "https://www.sevenbridges.com/y": 1228.8828125
                },
                {
                    "id": "#collapsed_biometrics_outdir",
                    "outputSource": [
                        "#collapsed_biometrics_agg/directory"
                    ],
                    "type": "Directory",
                    "label": "collapsed_biometrics_outdir",
                    "https://www.sevenbridges.com/x": 1054.649169921875,
                    "https://www.sevenbridges.com/y": 1335.7421875
                }
            ],
            "steps": [
                {
                    "id": "#duplex_biometrics_genotype",
                    "in": [
                        {
                            "id": "#duplex_biometrics_genotype/input",
                            "source": [
                                "#duplex_extraction_files"
                            ]
                        },
                        {
                            "id": "#duplex_biometrics_genotype/discordance_threshold",
                            "source": "#duplex_biometrics_discordance_threshold"
                        },
                        {
                            "id": "#duplex_biometrics_genotype/plot",
                            "default": true,
                            "source": "#biometrics_plot"
                        },
                        {
                            "id": "#duplex_biometrics_genotype/json",
                            "default": true,
                            "source": "#biometrics_json"
                        },
                        {
                            "id": "#duplex_biometrics_genotype/threads",
                            "source": "#biometrics_threads"
                        }
                    ],
                    "out": [
                        {
                            "id": "#duplex_biometrics_genotype/biometrics_genotype_comparisons"
                        },
                        {
                            "id": "#duplex_biometrics_genotype/biometrics_genotype_cluster_input"
                        },
                        {
                            "id": "#duplex_biometrics_genotype/biometrics_genotype_cluster_input_database"
                        },
                        {
                            "id": "#duplex_biometrics_genotype/biometrics_genotype_plot_input"
                        },
                        {
                            "id": "#duplex_biometrics_genotype/biometrics_genotype_plot_input_database"
                        }
                    ],
                    "run": "#biometrics_genotype.cwl",
                    "https://www.sevenbridges.com/x": 410.1875,
                    "https://www.sevenbridges.com/y": 1133.453125
                },
                {
                    "id": "#aggregate",
                    "in": [
                        {
                            "id": "#aggregate/files",
                            "linkMerge": "merge_nested",
                            "source": [
                                "#simplex_bam_pool_a_dir",
                                "#simplex_bam_pool_b_dir",
                                "#duplex_bam_stats_pool_a_dir",
                                "#duplex_bam_stats_pool_b_dir",
                                "#collapsed_bam_stats_pool_a_dir",
                                "#collapsed_bam_stats_pool_b_dir",
                                "#collapsed_bam_duplex_metrics_pool_a_dir",
                                "#collapsed_bam_duplex_metrics_pool_b_dir",
                                "#gatk_mean_quality_by_cycle_recal_dir",
                                "#gatk_mean_quality_by_cycle_dir",
                                "#uncollapsed_bam_stats_pool_b_dir",
                                "#uncollapsed_bam_stats_pool_a_dir",
                                "#duplex_bam_sequence_qc_dir"
                            ]
                        },
                        {
                            "id": "#aggregate/output_directory_name",
                            "default": [
                                "simplex_bam_pool_a_dir",
                                "simplex_bam_pool_b_dir",
                                "duplex_bam_stats_pool_a_dir",
                                "duplex_bam_stats_pool_b_dir",
                                "collapsed_bam_stats_pool_a_dir",
                                "collapsed_bam_stats_pool_b_dir",
                                "collapsed_bam_duplex_metrics_pool_a_dir",
                                "collapsed_bam_duplex_metrics_pool_b_dir",
                                "gatk_mean_quality_by_cycle_recal_dir",
                                "gatk_mean_quality_by_cycle_dir",
                                "uncollapsed_bam_stats_pool_b_dir",
                                "uncollapsed_bam_stats_pool_a_dir",
                                "duplex_bam_sequence_qc_dir"
                            ]
                        }
                    ],
                    "out": [
                        {
                            "id": "#aggregate/directory"
                        }
                    ],
                    "run": "#put_in_dir.cwl",
                    "label": "aggregate",
                    "scatter": [
                        "#aggregate/files",
                        "#aggregate/output_directory_name"
                    ],
                    "scatterMethod": "dotproduct",
                    "https://www.sevenbridges.com/x": 410.1875,
                    "https://www.sevenbridges.com/y": 1863.75
                },
                {
                    "id": "#duplex_biometrics_major",
                    "in": [
                        {
                            "id": "#duplex_biometrics_major/input",
                            "source": [
                                "#duplex_extraction_files"
                            ]
                        },
                        {
                            "id": "#duplex_biometrics_major/major_threshold",
                            "source": "#duplex_biometrics_major_threshold"
                        },
                        {
                            "id": "#duplex_biometrics_major/plot",
                            "default": true,
                            "source": "#biometrics_plot"
                        },
                        {
                            "id": "#duplex_biometrics_major/json",
                            "default": true,
                            "source": "#biometrics_json"
                        }
                    ],
                    "out": [
                        {
                            "id": "#duplex_biometrics_major/biometrics_major_csv"
                        },
                        {
                            "id": "#duplex_biometrics_major/biometrics_major_json"
                        },
                        {
                            "id": "#duplex_biometrics_major/biometrics_major_plot"
                        }
                    ],
                    "run": "#biometrics_major.cwl",
                    "label": "duplex_biometrics_major",
                    "https://www.sevenbridges.com/x": 410.1875,
                    "https://www.sevenbridges.com/y": 977.59375
                },
                {
                    "id": "#duplex_biometrics_minor",
                    "in": [
                        {
                            "id": "#duplex_biometrics_minor/input",
                            "source": [
                                "#duplex_extraction_files"
                            ]
                        },
                        {
                            "id": "#duplex_biometrics_minor/minor_threshold",
                            "source": "#duplex_biometrics_minor_threshold"
                        },
                        {
                            "id": "#duplex_biometrics_minor/plot",
                            "default": true,
                            "source": "#biometrics_plot"
                        },
                        {
                            "id": "#duplex_biometrics_minor/json",
                            "default": true,
                            "source": "#biometrics_json"
                        }
                    ],
                    "out": [
                        {
                            "id": "#duplex_biometrics_minor/biometrics_minor_csv"
                        },
                        {
                            "id": "#duplex_biometrics_minor/biometrics_minor_json"
                        },
                        {
                            "id": "#duplex_biometrics_minor/biometrics_minor_plot"
                        },
                        {
                            "id": "#duplex_biometrics_minor/biometrics_minor_sites_plot"
                        }
                    ],
                    "run": "#biometrics_minor.cwl",
                    "label": "duplex_biometrics_minor",
                    "https://www.sevenbridges.com/x": 410.1875,
                    "https://www.sevenbridges.com/y": 828.734375
                },
                {
                    "id": "#duplex_biometrics_sexmismatch",
                    "in": [
                        {
                            "id": "#duplex_biometrics_sexmismatch/input",
                            "source": [
                                "#duplex_extraction_files"
                            ]
                        },
                        {
                            "id": "#duplex_biometrics_sexmismatch/coverage_threshold",
                            "source": "#duplex_biometrics_coverage_threshold"
                        },
                        {
                            "id": "#duplex_biometrics_sexmismatch/json",
                            "default": true
                        }
                    ],
                    "out": [
                        {
                            "id": "#duplex_biometrics_sexmismatch/biometrics_sexmismatch_csv"
                        },
                        {
                            "id": "#duplex_biometrics_sexmismatch/biometrics_sexmismatch_json"
                        }
                    ],
                    "run": "#biometrics_sexmismatch.cwl",
                    "label": "duplex_biometrics_sexmismatch",
                    "https://www.sevenbridges.com/x": 410,
                    "https://www.sevenbridges.com/y": 623.2350463867188
                },
                {
                    "id": "#duplex_biometrics_agg",
                    "in": [
                        {
                            "id": "#duplex_biometrics_agg/files",
                            "source": [
                                "#duplex_biometrics_genotype/biometrics_genotype_plot_input_database",
                                "#duplex_biometrics_genotype/biometrics_genotype_plot_input",
                                "#duplex_biometrics_genotype/biometrics_genotype_comparisons",
                                "#duplex_biometrics_genotype/biometrics_genotype_cluster_input_database",
                                "#duplex_biometrics_genotype/biometrics_genotype_cluster_input",
                                "#duplex_biometrics_major/biometrics_major_plot",
                                "#duplex_biometrics_major/biometrics_major_json",
                                "#duplex_biometrics_major/biometrics_major_csv",
                                "#duplex_biometrics_minor/biometrics_minor_sites_plot",
                                "#duplex_biometrics_minor/biometrics_minor_plot",
                                "#duplex_biometrics_minor/biometrics_minor_json",
                                "#duplex_biometrics_minor/biometrics_minor_csv",
                                "#duplex_biometrics_sexmismatch/biometrics_sexmismatch_json",
                                "#duplex_biometrics_sexmismatch/biometrics_sexmismatch_csv"
                            ]
                        },
                        {
                            "id": "#duplex_biometrics_agg/output_directory_name",
                            "default": "duplex_biometrics_output"
                        }
                    ],
                    "out": [
                        {
                            "id": "#duplex_biometrics_agg/directory"
                        }
                    ],
                    "run": "#put_in_dir.cwl",
                    "label": "duplex_biometrics_agg",
                    "https://www.sevenbridges.com/x": 887.649169921875,
                    "https://www.sevenbridges.com/y": 1282.3125
                },
                {
                    "id": "#collapsed_biometrics_genotype",
                    "in": [
                        {
                            "id": "#collapsed_biometrics_genotype/input",
                            "source": [
                                "#collapsed_extraction_files"
                            ]
                        },
                        {
                            "id": "#collapsed_biometrics_genotype/discordance_threshold",
                            "source": "#collapsed_biometrics_discordance_threshold"
                        },
                        {
                            "id": "#collapsed_biometrics_genotype/plot",
                            "default": true,
                            "source": "#biometrics_plot"
                        },
                        {
                            "id": "#collapsed_biometrics_genotype/json",
                            "default": true,
                            "source": "#biometrics_json"
                        },
                        {
                            "id": "#collapsed_biometrics_genotype/threads",
                            "source": "#biometrics_threads"
                        }
                    ],
                    "out": [
                        {
                            "id": "#collapsed_biometrics_genotype/biometrics_genotype_comparisons"
                        },
                        {
                            "id": "#collapsed_biometrics_genotype/biometrics_genotype_cluster_input"
                        },
                        {
                            "id": "#collapsed_biometrics_genotype/biometrics_genotype_cluster_input_database"
                        },
                        {
                            "id": "#collapsed_biometrics_genotype/biometrics_genotype_plot_input"
                        },
                        {
                            "id": "#collapsed_biometrics_genotype/biometrics_genotype_plot_input_database"
                        }
                    ],
                    "run": "#biometrics_genotype.cwl",
                    "label": "collapsed_biometrics_genotype",
                    "https://www.sevenbridges.com/x": 410.1875,
                    "https://www.sevenbridges.com/y": 1728.890625
                },
                {
                    "id": "#collapsed_biometrics_major",
                    "in": [
                        {
                            "id": "#collapsed_biometrics_major/input",
                            "source": [
                                "#collapsed_extraction_files"
                            ]
                        },
                        {
                            "id": "#collapsed_biometrics_major/major_threshold",
                            "default": 0.6,
                            "source": "#collapsed_biometrics_major_threshold"
                        },
                        {
                            "id": "#collapsed_biometrics_major/plot",
                            "default": true,
                            "source": "#biometrics_plot"
                        },
                        {
                            "id": "#collapsed_biometrics_major/json",
                            "default": true,
                            "source": "#biometrics_json"
                        }
                    ],
                    "out": [
                        {
                            "id": "#collapsed_biometrics_major/biometrics_major_csv"
                        },
                        {
                            "id": "#collapsed_biometrics_major/biometrics_major_json"
                        },
                        {
                            "id": "#collapsed_biometrics_major/biometrics_major_plot"
                        }
                    ],
                    "run": "#biometrics_major.cwl",
                    "label": "collapsed_biometrics_major",
                    "https://www.sevenbridges.com/x": 410.1875,
                    "https://www.sevenbridges.com/y": 1573.03125
                },
                {
                    "id": "#collapsed_biometrics_minor",
                    "in": [
                        {
                            "id": "#collapsed_biometrics_minor/input",
                            "source": [
                                "#collapsed_extraction_files"
                            ]
                        },
                        {
                            "id": "#collapsed_biometrics_minor/minor_threshold",
                            "default": 0.002,
                            "source": "#collapsed_biometrics_minor_threshold"
                        },
                        {
                            "id": "#collapsed_biometrics_minor/plot",
                            "default": true,
                            "source": "#biometrics_plot"
                        },
                        {
                            "id": "#collapsed_biometrics_minor/json",
                            "default": true,
                            "source": "#biometrics_json"
                        },
                        {
                            "id": "#collapsed_biometrics_minor/no_db_comparison",
                            "default": false
                        }
                    ],
                    "out": [
                        {
                            "id": "#collapsed_biometrics_minor/biometrics_minor_csv"
                        },
                        {
                            "id": "#collapsed_biometrics_minor/biometrics_minor_json"
                        },
                        {
                            "id": "#collapsed_biometrics_minor/biometrics_minor_plot"
                        },
                        {
                            "id": "#collapsed_biometrics_minor/biometrics_minor_sites_plot"
                        }
                    ],
                    "run": "#biometrics_minor.cwl",
                    "label": "collapsed_biometrics_minor",
                    "https://www.sevenbridges.com/x": 410.1875,
                    "https://www.sevenbridges.com/y": 1424.171875
                },
                {
                    "id": "#collapsed_biometrics_sexmismatch",
                    "in": [
                        {
                            "id": "#collapsed_biometrics_sexmismatch/input",
                            "source": [
                                "#collapsed_extraction_files"
                            ]
                        },
                        {
                            "id": "#collapsed_biometrics_sexmismatch/coverage_threshold",
                            "source": "#collapsed_biometrics_coverage_threshold"
                        },
                        {
                            "id": "#collapsed_biometrics_sexmismatch/json",
                            "default": true,
                            "source": "#biometrics_json"
                        }
                    ],
                    "out": [
                        {
                            "id": "#collapsed_biometrics_sexmismatch/biometrics_sexmismatch_csv"
                        },
                        {
                            "id": "#collapsed_biometrics_sexmismatch/biometrics_sexmismatch_json"
                        }
                    ],
                    "run": "#biometrics_sexmismatch.cwl",
                    "label": "collapsed_biometrics_sexmismatch",
                    "https://www.sevenbridges.com/x": 410.1875,
                    "https://www.sevenbridges.com/y": 1282.3125
                },
                {
                    "id": "#collapsed_biometrics_agg",
                    "in": [
                        {
                            "id": "#collapsed_biometrics_agg/files",
                            "source": [
                                "#collapsed_biometrics_genotype/biometrics_genotype_plot_input_database",
                                "#collapsed_biometrics_genotype/biometrics_genotype_plot_input",
                                "#collapsed_biometrics_genotype/biometrics_genotype_comparisons",
                                "#collapsed_biometrics_genotype/biometrics_genotype_cluster_input_database",
                                "#collapsed_biometrics_genotype/biometrics_genotype_cluster_input",
                                "#collapsed_biometrics_major/biometrics_major_plot",
                                "#collapsed_biometrics_major/biometrics_major_json",
                                "#collapsed_biometrics_major/biometrics_major_csv",
                                "#collapsed_biometrics_minor/biometrics_minor_sites_plot",
                                "#collapsed_biometrics_minor/biometrics_minor_plot",
                                "#collapsed_biometrics_minor/biometrics_minor_json",
                                "#collapsed_biometrics_minor/biometrics_minor_csv",
                                "#collapsed_biometrics_sexmismatch/biometrics_sexmismatch_json",
                                "#collapsed_biometrics_sexmismatch/biometrics_sexmismatch_csv"
                            ]
                        },
                        {
                            "id": "#collapsed_biometrics_agg/output_directory_name",
                            "default": "collapsed_biometrics_output"
                        }
                    ],
                    "out": [
                        {
                            "id": "#collapsed_biometrics_agg/directory"
                        }
                    ],
                    "run": "#put_in_dir.cwl",
                    "label": "collapsed_biometrics_agg",
                    "https://www.sevenbridges.com/x": 887.649169921875,
                    "https://www.sevenbridges.com/y": 1389.171875
                }
            ],
            "requirements": [
                {
                    "class": "ScatterFeatureRequirement"
                },
                {
                    "class": "MultipleInputFeatureRequirement"
                }
            ],
            "$namespaces": {
                "sbg": "https://www.sevenbridges.com/"
            }
        },
        {
            "class": "CommandLineTool",
            "id": "#biometrics_genotype.cwl",
            "baseCommand": [
                "biometrics",
                "genotype"
            ],
            "inputs": [
                {
                    "id": "#biometrics_genotype.cwl/input",
                    "type": [
                        {
                            "type": "array",
                            "items": "File",
                            "inputBinding": {
                                "position": 0,
                                "prefix": "--input"
                            }
                        }
                    ],
                    "doc": "Can be one of three types: (1) path to a CSV file containing sample information (one per line). For example: sample_name,sample_bam,sample_type,sample_sex,sample_group. (2) Path to a '*.pk' file that was produced by the 'extract' tool. (3) Name of the sample to analyze; this assumes there is a file named '{sample_name}.pk' in your database directory. Can be specified more than once."
                },
                {
                    "id": "#biometrics_genotype.cwl/database",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--database"
                    },
                    "doc": "Directory to store the intermediate files after running the extraction step."
                },
                {
                    "id": "#biometrics_genotype.cwl/discordance_threshold",
                    "type": [
                        "null",
                        "float"
                    ],
                    "default": 0.05,
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--discordance-threshold"
                    },
                    "doc": "Discordance values less than this are regarded as matching samples. (default: 0.05)"
                },
                {
                    "id": "#biometrics_genotype.cwl/prefix",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--prefix"
                    },
                    "doc": "Output file prefix."
                },
                {
                    "id": "#biometrics_genotype.cwl/plot",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--plot"
                    },
                    "doc": "Also output plots of the data."
                },
                {
                    "id": "#biometrics_genotype.cwl/json",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--json"
                    },
                    "doc": "Also output data in JSON format."
                },
                {
                    "id": "#biometrics_genotype.cwl/no_db_comparison",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--no-db-compare"
                    },
                    "doc": "Do not compare the sample(s) you provided to all samples in the database, only compare them with each other."
                },
                {
                    "id": "#biometrics_genotype.cwl/threads",
                    "type": [
                        "null",
                        "int"
                    ],
                    "default": 2,
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--threads"
                    },
                    "doc": "Number of threads to use."
                }
            ],
            "outputs": [
                {
                    "id": "#biometrics_genotype.cwl/biometrics_genotype_comparisons",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n  if (inputs.prefix) {\n    return inputs.prefix + '_genotype_comparison.csv'\n  } else {\n    return 'genotype_comparison.csv'\n  }\n}"
                    }
                },
                {
                    "id": "#biometrics_genotype.cwl/biometrics_genotype_cluster_input",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n  if (inputs.prefix) {\n    return inputs.prefix + '_genotype_clusters_input.csv'\n  } else {\n    return 'genotype_clusters_input.csv'\n  }\n}"
                    }
                },
                {
                    "id": "#biometrics_genotype.cwl/biometrics_genotype_cluster_input_database",
                    "type": [
                        "null",
                        "File"
                    ],
                    "outputBinding": {
                        "glob": "${\n  if (inputs.prefix) {\n    return inputs.prefix + '_genotype_clusters_database.csv'\n  } else {\n    return 'genotype_clusters_database.csv'\n  }\n}"
                    }
                },
                {
                    "id": "#biometrics_genotype.cwl/biometrics_genotype_plot_input",
                    "type": [
                        "null",
                        "File"
                    ],
                    "outputBinding": {
                        "glob": "${\n  return 'genotype_comparison_input.html'\n}"
                    }
                },
                {
                    "id": "#biometrics_genotype.cwl/biometrics_genotype_plot_input_database",
                    "type": [
                        "null",
                        "File"
                    ],
                    "outputBinding": {
                        "glob": "${\n  return 'genotype_comparison_database.html'\n}"
                    }
                }
            ],
            "requirements": [
                {
                    "class": "ResourceRequirement",
                    "ramMin": 16000,
                    "coresMin": 2
                },
                {
                    "class": "DockerRequirement",
                    "dockerPull": "ghcr.io/msk-access/biometrics:0.2.9"
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
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:murphyc4@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Charlie Murphy"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "class": "http://usefulinc.com/ns/doap#Version",
                    "http://usefulinc.com/ns/doap#name": "biometrics",
                    "http://usefulinc.com/ns/doap#revision": "0.2.9"
                }
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#biometrics_major.cwl",
            "baseCommand": [
                "biometrics",
                "major"
            ],
            "inputs": [
                {
                    "id": "#biometrics_major.cwl/input",
                    "type": {
                        "type": "array",
                        "items": "File",
                        "inputBinding": {
                            "prefix": "--input"
                        }
                    },
                    "inputBinding": {
                        "position": 0
                    },
                    "doc": "Can be one of three types: (1) path to a CSV file containing sample information (one per line). For example: sample_name,sample_bam,sample_type,sample_sex,sample_group. (2) Path to a '*.pk' file that was produced by the 'extract' tool. (3) Name of the sample to analyze; this assumes there is a file named '{sample_name}.pk' in your database directory. Can be specified more than once."
                },
                {
                    "id": "#biometrics_major.cwl/database",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--database"
                    },
                    "doc": "Directory to store the intermediate files after running the extraction step."
                },
                {
                    "id": "#biometrics_major.cwl/major_threshold",
                    "type": [
                        "null",
                        "float"
                    ],
                    "default": 0.6,
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--major-threshold"
                    },
                    "doc": "Major contamination threshold for bad sample."
                },
                {
                    "id": "#biometrics_major.cwl/prefix",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--prefix"
                    },
                    "doc": "Output file prefix."
                },
                {
                    "id": "#biometrics_major.cwl/plot",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--plot"
                    },
                    "doc": "Also output plots of the data."
                },
                {
                    "id": "#biometrics_major.cwl/json",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--json"
                    },
                    "doc": "Also output data in JSON format."
                },
                {
                    "id": "#biometrics_major.cwl/no_db_comparison",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--no-db-compare"
                    },
                    "doc": "Do not compare the sample(s) you provided to all samples in the database, only compare them with each other."
                }
            ],
            "outputs": [
                {
                    "id": "#biometrics_major.cwl/biometrics_major_csv",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    if (inputs.prefix) {\n      return inputs.prefix + '_major_contamination.csv'\n    } else {\n      return 'major_contamination.csv'\n    }\n}"
                    }
                },
                {
                    "id": "#biometrics_major.cwl/biometrics_major_json",
                    "type": [
                        "null",
                        "File"
                    ],
                    "outputBinding": {
                        "glob": "${\n    if (inputs.prefix) {\n      return inputs.prefix + '_major_contamination.json'\n    } else {\n      return 'major_contamination.json'\n    }\n}"
                    }
                },
                {
                    "id": "#biometrics_major.cwl/biometrics_major_plot",
                    "type": [
                        "null",
                        "File"
                    ],
                    "outputBinding": {
                        "glob": "${\n  return 'major_contamination.html'\n}"
                    }
                }
            ],
            "requirements": [
                {
                    "class": "ResourceRequirement",
                    "ramMin": 16000,
                    "coresMin": 2
                },
                {
                    "class": "DockerRequirement",
                    "dockerPull": "ghcr.io/msk-access/biometrics:0.2.9"
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
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:murphyc4@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Charlie Murphy"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "class": "http://usefulinc.com/ns/doap#Version",
                    "http://usefulinc.com/ns/doap#name": "biometrics",
                    "http://usefulinc.com/ns/doap#revision": "0.2.9"
                }
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#biometrics_minor.cwl",
            "baseCommand": [
                "biometrics",
                "minor"
            ],
            "inputs": [
                {
                    "id": "#biometrics_minor.cwl/input",
                    "type": {
                        "type": "array",
                        "items": "File",
                        "inputBinding": {
                            "prefix": "--input"
                        }
                    },
                    "inputBinding": {
                        "position": 0
                    },
                    "doc": "Can be one of three types: (1) path to a CSV file containing sample information (one per line). For example: sample_name,sample_bam,sample_type,sample_sex,sample_group. (2) Path to a '*.pk' file that was produced by the 'extract' tool. (3) Name of the sample to analyze; this assumes there is a file named '{sample_name}.pk' in your database directory. Can be specified more than once."
                },
                {
                    "id": "#biometrics_minor.cwl/database",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--database"
                    },
                    "doc": "Directory to store the intermediate files after running the extraction step."
                },
                {
                    "id": "#biometrics_minor.cwl/minor_threshold",
                    "type": [
                        "null",
                        "float"
                    ],
                    "default": 0.002,
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--minor-threshold"
                    },
                    "doc": "Minor contamination threshold for bad sample."
                },
                {
                    "id": "#biometrics_minor.cwl/prefix",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--prefix"
                    },
                    "doc": "Output file prefix."
                },
                {
                    "id": "#biometrics_minor.cwl/plot",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--plot"
                    },
                    "doc": "Also output plots of the data."
                },
                {
                    "id": "#biometrics_minor.cwl/json",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--json"
                    },
                    "doc": "Also output data in JSON format."
                },
                {
                    "id": "#biometrics_minor.cwl/no_db_comparison",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--no-db-compare"
                    },
                    "doc": "Do not compare the sample(s) you provided to all samples in the database, only compare them with each other."
                }
            ],
            "outputs": [
                {
                    "id": "#biometrics_minor.cwl/biometrics_minor_csv",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    if (inputs.prefix) {\n      return inputs.prefix + '_minor_contamination.csv'\n    } else {\n      return 'minor_contamination.csv'\n    }\n}"
                    }
                },
                {
                    "id": "#biometrics_minor.cwl/biometrics_minor_json",
                    "type": [
                        "null",
                        "File"
                    ],
                    "outputBinding": {
                        "glob": "${\n    if (inputs.prefix) {\n      return inputs.prefix + '_minor_contamination.json'\n    } else {\n      return 'minor_contamination.json'\n    }\n}"
                    }
                },
                {
                    "id": "#biometrics_minor.cwl/biometrics_minor_plot",
                    "type": [
                        "null",
                        "File"
                    ],
                    "outputBinding": {
                        "glob": "${\n  return 'minor_contamination.html'\n}"
                    }
                },
                {
                    "id": "#biometrics_minor.cwl/biometrics_minor_sites_plot",
                    "type": [
                        "null",
                        "File"
                    ],
                    "outputBinding": {
                        "glob": "${\n  return 'minor_contamination_sites.html'\n}"
                    }
                }
            ],
            "requirements": [
                {
                    "class": "ResourceRequirement",
                    "ramMin": 16000,
                    "coresMin": 2
                },
                {
                    "class": "DockerRequirement",
                    "dockerPull": "ghcr.io/msk-access/biometrics:0.2.9"
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
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:murphyc4@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Charlie Murphy"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "class": "http://usefulinc.com/ns/doap#Version",
                    "http://usefulinc.com/ns/doap#name": "biometrics",
                    "http://usefulinc.com/ns/doap#revision": "0.2.9"
                }
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#biometrics_sexmismatch.cwl",
            "baseCommand": [
                "biometrics",
                "sexmismatch"
            ],
            "inputs": [
                {
                    "id": "#biometrics_sexmismatch.cwl/input",
                    "type": {
                        "type": "array",
                        "items": "File",
                        "inputBinding": {
                            "prefix": "--input"
                        }
                    },
                    "inputBinding": {
                        "position": 0
                    },
                    "doc": "Can be one of three types: (1) path to a CSV file containing sample information (one per line). For example: sample_name,sample_bam,sample_type,sample_sex,sample_group. (2) Path to a '*.pk' file that was produced by the 'extract' tool. (3) Name of the sample to analyze; this assumes there is a file named '{sample_name}.pk' in your database directory. Can be specified more than once."
                },
                {
                    "id": "#biometrics_sexmismatch.cwl/database",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--database"
                    },
                    "doc": "Directory to store the intermediate files after running the extraction step."
                },
                {
                    "id": "#biometrics_sexmismatch.cwl/coverage_threshold",
                    "type": [
                        "null",
                        "int"
                    ],
                    "default": 50,
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--coverage-threshold"
                    },
                    "doc": "Samples with Y chromosome above this value will be considered male."
                },
                {
                    "id": "#biometrics_sexmismatch.cwl/prefix",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--prefix"
                    },
                    "doc": "Output file prefix."
                },
                {
                    "id": "#biometrics_sexmismatch.cwl/json",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--json"
                    },
                    "doc": "Also output data in JSON format."
                },
                {
                    "id": "#biometrics_sexmismatch.cwl/no_db_comparison",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--no-db-compare"
                    },
                    "doc": "Do not compare the sample(s) you provided to all samples in the database, only compare them with each other."
                }
            ],
            "outputs": [
                {
                    "id": "#biometrics_sexmismatch.cwl/biometrics_sexmismatch_csv",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    if (inputs.prefix) {\n      return inputs.prefix + '_sex_mismatch.csv'\n    } else {\n      return 'sex_mismatch.csv'\n    }\n}"
                    }
                },
                {
                    "id": "#biometrics_sexmismatch.cwl/biometrics_sexmismatch_json",
                    "type": [
                        "null",
                        "File"
                    ],
                    "outputBinding": {
                        "glob": "${\n    if (inputs.prefix) {\n      return inputs.prefix + '_sex_mismatch.json'\n    } else {\n      return 'sex_mismatch.json'\n    }\n}"
                    }
                }
            ],
            "requirements": [
                {
                    "class": "ResourceRequirement",
                    "ramMin": 16000,
                    "coresMin": 2
                },
                {
                    "class": "DockerRequirement",
                    "dockerPull": "ghcr.io/msk-access/biometrics:0.2.9"
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
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:murphyc4@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Charlie Murphy"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "class": "http://usefulinc.com/ns/doap#Version",
                    "http://usefulinc.com/ns/doap#name": "biometrics",
                    "http://usefulinc.com/ns/doap#revision": "0.2.9"
                }
            ]
        },
        {
            "class": "ExpressionTool",
            "id": "#put_in_dir.cwl",
            "inputs": [
                {
                    "type": {
                        "type": "array",
                        "items": [
                            "File",
                            {
                                "type": "array",
                                "items": [
                                    "File"
                                ]
                            },
                            "Directory",
                            "null"
                        ]
                    },
                    "id": "#put_in_dir.cwl/files"
                },
                {
                    "type": "string",
                    "id": "#put_in_dir.cwl/output_directory_name"
                }
            ],
            "outputs": [
                {
                    "type": "Directory",
                    "id": "#put_in_dir.cwl/directory"
                }
            ],
            "expression": "${\n  var output_files = [];\n  var input_files = inputs.files.filter(function(single_file) {\n    return String(single_file).toUpperCase() != 'NONE';\n  });\n\n  for (var i = 0; i < input_files.length; i++) {\n    // Handle list of list of files\n    if (input_files[i] && input_files[i].length) {\n      for (var ii = 0; ii < input_files[i].length; ii++) {\n        output_files.push(input_files[i][ii]);\n      }\n    // Handle list of files\n    } else if (input_files[i]) {\n      output_files.push(input_files[i]);\n    }\n  }\n\n  return {\n    'directory': {\n      'class': 'Directory',\n      'basename': inputs.output_directory_name,\n      'listing': output_files\n    }\n  };\n}\n",
            "requirements": [
                {
                    "class": "ResourceRequirement",
                    "ramMin": 2000,
                    "coresMin": 1
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
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:murphyc4@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Charlie Murphy"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ]
        }
    ],
    "cwlVersion": "v1.0"
}