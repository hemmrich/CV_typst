// Imports
#import "../template/template.typ": cvSection, cvPublication, customSpace
#let metadata = toml("../metadata.toml")
#let cvSection = cvSection.with(metadata: metadata)


#let create_pub_pres_entries(contents, presentation:false) = {
  for (name, details) in contents {
    details.authors.join(",  ")
    
    let d = details.date.split("-")
    let dt = datetime(year: int(d.at(0)), month: int(d.at(1)), day: int(d.at(2)))
    "  (" + dt.display("[month repr:short] [year]") + ").  "

    text(details.title + ".  ", style:"italic")

    if presentation {
      "Presented by " + details.presenter + " at " + details.conference +  ", " + details.location + "."
    } 
    else if details.status == "Submitted_Book" {
      //Author AA, Author BB. Title of chapter. In: Editor AA, Editor BB, eds. Book Title. Vol no. Nth ed. Publisher; Year:page numbers. Accessed Month DD, YYYY. DOI or URL
      { "In: " + details.editors + ", eds. " + text(details.book, style:"italic") + ". Forthcoming from " + details.publisher + "."}
    }
     
    else {
      if details.status == "Published" { "Published in " + details.journal + "." } 
      else if details.status == "Accepted" { "Accepted by " + details.journal + "." }
      else if details.status == "Submitted" { "Submitted to " + details.journal + "." }
      else if details.status == "Revision" { "Submitted to " + details.journal + ", undergoing revisions."}
      else if details.status == "Will_Submit" { "Will submit to " + details.journal + " when Call for Science opens Dec 2, 2024"}
    }

    parbreak()
  }
}

//PUBLICATIONS
#cvSection("Publications") #parbreak()
#create_pub_pres_entries(
  yaml("../src/publications.yaml"), presentation:false
)

// ORAL PRESENTATIONS
#cvSection("Oral Presentations") #parbreak()
#create_pub_pres_entries(
  yaml("../src/oral_presentations.yaml"), presentation:true
)

// POSTER PRESENTATIONS
#cvSection("Poster Presentations") #parbreak()
#create_pub_pres_entries(
  yaml("../src/poster_presentations.yaml"), presentation:true
)