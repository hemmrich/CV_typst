// Imports
#import "./template/lib.typ": cv
#let metadata = toml("./metadata.toml")
#let importModules(modules, lang: metadata.language) = {
  for module in modules {
    include {
      "modules/" + module + ".typ"
    }
  }
}


#show: cv.with(
  metadata, 
  profilePhoto: image("./src/headshot.png")
)
#importModules((
  "education",
  "professional",
  "projects",
  //"certificates",
  "publications",
  "skills",
))