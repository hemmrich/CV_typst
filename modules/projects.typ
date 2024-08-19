// Imports
#import "../template/template.typ": cvSection, cvEntry
#let metadata = toml("../metadata.toml")
#let cvSection = cvSection.with(metadata: metadata)
#let cvEntry = cvEntry.with(metadata: metadata)


#cvSection("Research Projects")

#cvEntry(
  title: [Oral Premalignancy Progression Prediction, PI: Alexander Pearson, MD, PhD],
  society: [University of Chicago Department of Hematology and Oncology],
  date: [2024-current],
  location: [Chicago, IL],
  description: list(
    ["UPDATE THIS"]
  ),
)

#cvEntry(
  title: [COPD Readmission Prediction, PI: Valerie Press, MD],
  society: [University of Chicago Department of Medicine],
  date: [2018-2021],
  location: [Chicago, IL],
  description: list(
    [Built machine learning model using electronic health record data to predict risk of readmission after COPD excerbation],
    [Disseminated findings at international, national, and regional conferences],
    [Received Healthcare Delivery Science Award for research excellence at 2018 Pritzker Summer Research Forum],
    [Received Health Service Research Abstract Award at 2019 American Thoracic Society International Conference],
    [Manuscript submitted, undergoing review and edits]
  ),
)

#cvEntry(
  title: [Head & Neck Cancer Recurrence Database, PI: Alexander Pearson, MD, PhD],
  society: [University of Chicago Department of Medicine],
  date: [2020-2021],
  location: [Chicago, IL],
  description: list(
    [Built natural language processing classifier to extract tumor data from radiology notes],
    [Data will be combined with content extracted from pathology notes to build a recurrence database to assess efficacy of treatment modalities and determine predictors of recurrence],
  ),
)

#cvEntry(
  title: [COVID-19 Natural History, PI: Renslow Sherer, MD],
  society: [University of Chicago Department of Medicine],
  date: [2020-2021],
  location: [Chicago, IL],
  description: list(
    [Chart reviews of first 413 COVID patients at UChicago Medical Center],
    [Literature review for subgroup analysis of COVID in young and obese patients],
    [Poster presented at HIV Glasgow 2020 conference (virtual due to COVID)]
  ),
)