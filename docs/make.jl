using FIBSEMHeaders
using Documenter

DocMeta.setdocmeta!(FIBSEMHeaders, :DocTestSetup, :(using FIBSEMHeaders); recursive=true)

makedocs(;
    modules=[FIBSEMHeaders],
    authors="kittisopikulm <kittisopikulm@janelia.hhmi.org> and contributors",
    repo="https://github.com/mkitti/FIBSEMHeaders.jl/blob/{commit}{path}#{line}",
    sitename="FIBSEMHeaders.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://mkitti.github.io/FIBSEMHeaders.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/mkitti/FIBSEMHeaders.jl",
    devbranch="main",
)
