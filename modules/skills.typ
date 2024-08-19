// Imports
#import "../template/template.typ": cvSection, cvSkill, hBar
#let metadata = toml("../metadata.toml")
#let cvSection = cvSection.with(metadata: metadata)


#cvSection("Skills")

#cvSkill(
  type: [Languages],
  info: [English (native) #hBar() German (native)],
)

#cvSkill(
  type: [Tech Stack],
  info: [Python (Pandas/Numpy) #hBar() C++ #hBar() Ruby #hBar() Git],
)

#cvSkill(
  type: [Personal Interests],
  info: [Tennis #hBar() Weightlifting #hBar() Chess #hBar() Investing],
)
