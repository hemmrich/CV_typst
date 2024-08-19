// Imports
#import "../template/template.typ": cvSection, cvEntry, hBar
#let metadata = toml("../metadata.toml")
#let cvSection = cvSection.with(metadata: metadata)
#let cvEntry = cvEntry.with(metadata: metadata)


#cvSection("Education")

#cvEntry(
  title: [Resident Physician, Otolaryngology-Head&Neck Surgery],
  society: [University of Chicago Medical Center],
  logo: image("../src/logos/ucmc.png"),
  date: [2021-current],
  location: [Chicago, IL],
  description: list(
    [Expected graduation June 2026],
    [Passed USMLE Step 3],
    [UPDATE THIS SECTION!],
    [GRAND ROUNDS TOPICS?]
  ),
)

#cvEntry(
  title: [Doctor of Medicine (MD)],
  society: [University of Chicago Pritzker School of Medicine],
  date: [2017 - 2021],
  location: [Chicago, IL],
  logo: image("../src/logos/uchicago2.png"),
  description: list(
    [USMLE Step 1 259 (4/2019) | Step 2 CK 270 (12/2020)],
    [Court and Sherry Cutting Scholar in Medical Education (2017) | Kappas Trust Fund Scholar (2018)],
    [Society of Hospital Medicine (SHM) Student Hospitalist Scholar (2018) |    Abstract Reviewer for SHM 2020 & 2021 National Conferences],
    [Pritzker TECH leader - hosted 3-lead EKG building workshop, python coding/statistics course, hosted healthcare hackathon],
    [Washington Park Free Clinic - performed well-child visits, vaccinations, and sports physicals for uninsured patients],
    [South Side Science Scholars - taught after-school science lessons on nutrition, physics, and biology to 4th graders on South Side],
    [Chicago Youth Programs - weekly mentoring sessions to local high school students, assisted with job and college applications],

  ),
)

#cvEntry(
  title: [Bachelors of Science in Computer Science and Engineering],
  society: [University of Michigan],
  date: [2012 - 2016],
  location: [Ann Arbor, MI],
  logo: image("../src/logos/umich2.png"),
  description: list(
    [GPA 3.90 / 4.00 #hBar() Dean's List Fall 2012 - Winter 2016, James B. Angell Scholar],
    [Minor in Biochemistry],
  ),
)
