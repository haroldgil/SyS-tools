## Apply the syndrome definitions----  

df_syn_ind <- mutate(df, 
                     Syndrome.ILI = syndef_ili(Chief.Complaint, Diagnosis.Code), 
                     Syndrome.GI = syndef_gi(Chief.Complaint),
                     Syndrome.RESP = syndef_resp(Chief.Complaint)
                     )

# Create the field Syndromes listing all the binned syndromes for each record

df_syn_bin <- mutate(df_syn_ind, Syndromes = 
                    apply(select(df_syn_ind,contains("Syndrome")) == TRUE, 1, 
                    function(x) 
                    toupper(
                            gsub("Syndrome.", "", 
                                 paste0(names(which(x)), collapse = "," ), 
                                 ignore.case = TRUE
                                 )
                            )
                          )
                      )
