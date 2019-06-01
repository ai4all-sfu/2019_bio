#load("C:/Users/raque/Google Drive/SFU/Outros/IA4All/bio_project2019/HTA20_RMA.RData")

dim(eset_HTA20
  
  
#probeset is compoised of entrez-gene ID
#pid has the patient id 
probeset = rownames(eset_HTA20)
pid = colnames(eset_HTA20)
head(probeset,20)
head(pid)
