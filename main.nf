nextflow.enable.dsl=2

include { download_reads_1 } from './modules/download_reads_1/module.nf'
include { fastqc_1 } from './modules/fastqc_1/module.nf'
include { fastqc_2 } from './modules/fastqc_2/module.nf'
include { abacas123_1 } from './modules/abacas123_1/module.nf'

workflow {
input1 = Channel.fromPath(params.download_reads_1.accessions).splitCsv(sep: ';').map { row -> tuple(evaluate(row[0]), evaluate(row[1])) }
input2 = Channel.fromPath(params.fastqc_2.meta_reads).splitCsv(sep: ';').map { row -> tuple(evaluate(row[0]), row[1]) }
input3 = Channel.fromPath(params.abacas123_1.meta_scaffold).splitCsv(sep: ';').map { row -> tuple(evaluate(row[0]), row[1]) }
input4 = Channel.fromPath(params.abacas123_1.fasta)
download_reads_1(input1)
fastqc_2(input2)
abacas123_1(input3, input4)
fastqc_1(download_reads_1.out.output1)
}
