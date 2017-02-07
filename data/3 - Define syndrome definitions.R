## Define syndrome definitions----

syndef_ili <- function(chief_complaint_field, diagnosis_code_field){
  
  result_dataframe <- as.integer(
  (
    grepl("FLU", chief_complaint_field, diagnosis_code_field) 
    | 
      (
        grepl("FEVER", chief_complaint_field) 
        & grepl("COUGH|SORE THROAT", chief_complaint_field)
      )
    |
      grepl("487", diagnosis_code_field)
  )
                                  )
  return(result_dataframe)
}

syndef_gi <- function(chief_complaint_field){
  
  result_dataframe <- as.integer(
    (
      grepl("ABDOMINAL PAIN|VOMIT|NAUSEA|DIARRHEA", chief_complaint_field)
    )
  )
  return(result_dataframe)
}

syndef_resp <- function(chief_complaint_field){
  
  result_dataframe <- as.integer(
    (
      grepl("SOB|ASTHMA|COPD", chief_complaint_field)
    )
  )
  return(result_dataframe)
}