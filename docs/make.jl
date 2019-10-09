using Documenter, ComputationalBiologyCourse

makedocs(
    sitename = "Computational Biology Course",
    pages = [
        "Home" => "index.md",
        "Syllabus" => "Syllabus.md",
        "Lesson 1 - Getting Started" => "Lesson01.md"
    ],
    authors = "Kevin Bonham, PhD",
    format = Documenter.HTML(
        prettyurls = get(ENV, "CI", nothing) == "true")
)

deploydocs(
    repo = "/wellesley-bisc195/computing_bio_course.git",
    osname = "linux",
    target = "build",
    deps = nothing,
    make = nothing
)
