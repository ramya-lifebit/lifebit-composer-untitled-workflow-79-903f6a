# Untitled Workflow #79

## Description



## Components

The present workflow is composed by the following unique components (Note that some components may be repeated):

### lifebitai_download_reads

**Description**: Downloads FastQ reads using SRA toolkit's fasterq-dump when provided with a list of accession numbers. For this component, reads are downloaded uncompressed.\
**Inputs**: 1\
**Outputs**: 1\
**Parameters**: 0\
**Authors**: @odiogosilva, @tiagofilipe12

### lifebitai_fastqc

**Description**: Quality control assessment of FastQ files using FastQC.\
**Inputs**: 1\
**Outputs**: 1\
**Parameters**: 0\
**Authors**: @odiogosilva

### nf-core_fastqc

**Description**: Run FastQC on sequenced reads\
**Inputs**: 1\
**Outputs**: 3\
**Parameters**: 0\
**Authors**: @drpatelh, @grst, @ewels, @FelixKrueger

## Inputs

- `--download_reads_1.accessions`: Accession file CSV file with a label in the first column and the accession number in the second column.
- `--fastqc_2.meta_reads`: 
