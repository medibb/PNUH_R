JK_F=data.frame()
for (i in 1:nrow(JKS))
{
  JK_i=JKS[i,]
  LIST_i=inner_join(JK_i,T24_LIST,by="PERSON_ID")
  LIST_H=filter(LIST_i,NAME=="Hypertension")
  LIST_D=filter(LIST_i,NAME=="Diabetes")
  
  JK_i$HYP=nrow(LIST_H)>0
  JK_i$DIA=nrow(LIST_D)>0
  JK_F=rbind(JK_F,JK_i)
}