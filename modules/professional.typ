// Imports
#import "../template/template.typ": cvSection, cvEntry
#let metadata = toml("../metadata.toml")
#let cvSection = cvSection.with(metadata: metadata)
#let cvEntry = cvEntry.with(metadata: metadata)


#cvSection("Professional Experience")

#cvEntry(
  title: [Software Engineer - Developer Platforms & Services],
  society: [Yahoo! Inc],
  logo: image("../src/logos/yahoo.png"),
  date: [2016-2017],
  location: [Sunnyvale, CA],
  description: list(
    [Built internal Ruby gem server to reduce dependence on external systems],
    [Scaled centralized Github Enterprise instance to achieve 99.99% uptime],
  ),
)
