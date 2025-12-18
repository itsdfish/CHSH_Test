using CHSH_Test
using Documenter

DocMeta.setdocmeta!(CHSH_Test, :DocTestSetup, :(using CHSH_Test); recursive = true)

makedocs(;
    modules = [CHSH_Test],
    authors = "itsdfish",
    sitename = "CHSH_Test.jl",
    format = Documenter.HTML(;
        edit_link = "main",
        assets = String[]
    ),
    pages = [
        "Home" => "index.md",
        "CHSH" => "chsh.md"
    ]
)
