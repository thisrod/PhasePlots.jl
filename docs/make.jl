using Documenter, PhasePlots

makedocs(
    modules = [PhasePlots],
    format = Documenter.HTML(; prettyurls = get(ENV, "CI", nothing) == "true"),
    authors = "Rodney Polkinghorne",
    sitename = "PhasePlots.jl",
    pages = Any["index.md"]
    # strict = true,
    # clean = true,
    # checkdocs = :exports,
)

deploydocs(
    repo = "github.com/"thisrod"/PhasePlots.jl.git",
    push_preview = true
)
