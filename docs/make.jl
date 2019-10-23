using Documenter, ComputationalBiologyCourse

makedocs(
    sitename = "Computational Biology Course",
    pages = [
        "Home" => "index.md",
        "Syllabus" => "Syllabus.md",
        "Lesson 1 - Getting Started" => [
            "Lesson1/index.md",
            "Windows Users" => "Lesson1/0_windows.md",
            "Using the Terminal" => "Lesson1/1_terminal.md",
            "Git for Version Control" => "Lesson1/2_git.md"
            ]
    ],
    authors = "Kevin Bonham, PhD",
    format = Documenter.HTML(
        prettyurls = get(ENV, "CI", nothing) == "true")
)

const repo="github.com/wellesley-bisc195/computing_bio_course.git"
const PR = get(ENV, "TRAVIS_PULL_REQUEST", "false")
if PR == "false"
    # Normal case, only deply docs if merging to master or release tagged
    deploydocs(repo=repo)
else
    @info "Deploying review docs for PR #$PR"
    # TODO: remove most of this once https://github.com/JuliaDocs/Documenter.jl/issues/1131 is resolved

    # Overwrite Documenter's function for generating the versions.js file
    foreach(Base.delete_method, methods(Documenter.Writers.HTMLWriter.generate_version_file))
    Documenter.Writers.HTMLWriter.generate_version_file(_, _) = nothing
    # Overwrite necessary environment variables to trick Documenter to deploy
    ENV["TRAVIS_PULL_REQUEST"] = "false"
    ENV["TRAVIS_BRANCH"] = "master"

    deploydocs(
        devurl="preview-PR$(PR)",
        repo=repo,
    )
end
