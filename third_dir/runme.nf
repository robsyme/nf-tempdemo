nextflow.enable.dsl=2

process Bash {
    output:
    path("*")

    "echo hello > out.txt"
}

workflow {
    println "Inside third_dir/runme.nf!"
    Bash() | view
}
