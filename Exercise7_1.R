fastadata<-scan(file="Lecture11.fasta",what=character())
#Make indices of either even or odd numbers to 200
x<-1:200
oddintegers<-x[c(TRUE,FALSE)]
evenintegers<-x[c(FALSE,TRUE)]
Sequences<-fastadata[evenintegers]
#count number of nucleotides in sequences and plot histogram
SeqLength<-nchar(Sequences)
HistofLength<-qplot(SeqLength,geom="histogram")
#Similar histogram but of the number of G's and C's in sequences
SeqWithoutA<-gsub("A","",Sequences)
SeqWithoutAT<-gsub("T","",SeqWithoutA)
GCSeqLength<-nchar(SeqWithoutAT)
qplot(GCSeqLength,geom="histogram")
