library(dplyr) #Librería para concatenar instrucciones sobre un set de datos 
library(stringr) #Libreria para realizar operaciones sobre "strings" (obtener o editar lementos de un "string")
trpA <- (TrpA_clustalo_aln) #Dataframe con los identificadores y las secuencias de trpA después del alineamiento con clustal
trpA_UW3_44E <- trpA %>% #Ensayo para realizar operaciones sobre strings
  mutate(pos_90 = str_sub(X2, 90, 90)) %>% #"str_sub se utiliza para obtener el caracter en una dada posición en un string"
  mutate(pos_)
  mutate(IDS= str_remove(X1, ">")) %>% #remover un caracter del string
  select(IDS, pos_90)
trpA_positions <- trpA %>% #obtención de todas la posiciones de interes del alineamiento y construcción del dataframe
  mutate(Glu44_aln90 = str_sub(X2, 90, 90)) %>%
  mutate(Asp55_aln101 = str_sub(X2, 101, 101)) %>%
  mutate(Tyr95_aln152 = str_sub(X2, 152, 152)) %>%
  mutate(Ile123_aln181 = str_sub(X2, 181, 181)) %>%
  mutate(Tyr173_aln231 = str_sub(X2, 231, 231)) %>%
  mutate(Arg205_aln267 = str_sub(X2, 267, 267)) %>%
  mutate(Arg206_aln268 = str_sub(X2, 268, 268)) %>%
  mutate(Asp207_aln269 = str_sub(X2, 269, 269)) %>%
  mutate(Val226_aln288 = str_sub(X2, 288, 288)) %>%
  mutate(Lys227_aln289 = str_sub(X2, 289, 289)) %>%
  mutate(Thr228_aln290 = str_sub(X2, 290, 290)) %>%
  mutate(IDS= str_remove(X1, ">")) %>%
  select(IDS, Glu44_aln90, Asp55_aln101, Tyr95_aln152, Ile123_aln181, Tyr173_aln231, Arg205_aln267, Arg206_aln268, Asp207_aln269,Val226_aln288, Lys227_aln289, Thr228_aln290)
?write_csv
write_delim(trpA_positions, "/home/rodrigo/GIT/practicas/trpA_positions.csv", delim= "\t", quote_escape = "none")
  
#obtención de la posiciones en el alinemaiento de trpB

trpB <- TrpB_clustalo_aln
trpB_positions <- trpB %>% #obtención de todas la posiciones de interes del alineamiento y construcción del dataframe
  mutate(His83_aln102 = str_sub(X2, 102, 102)) %>%
  mutate(Lys84_aln103 = str_sub(X2, 103, 103)) %>%
  mutate(Thr107_aln126 = str_sub(X2, 126, 126)) %>%
  mutate(Gly108_aln127 = str_sub(X2, 127, 127)) %>%
  mutate(Ala109_aln128 = str_sub(X2, 128, 128)) %>%
  mutate(Gln111_aln130 = str_sub(X2, 130, 130)) %>%
  mutate(His112_aln131 = str_sub(X2, 131, 131)) %>%
  mutate(Leu163_aln182 = str_sub(X2, 182, 182)) %>%
  mutate(Leu189_aln208 = str_sub(X2, 208, 208)) %>%
  mutate(Ile228_aln247 = str_sub(X2, 247, 247)) %>%
  mutate(Gly229_aln248 = str_sub(X2, 248, 248)) %>%
  mutate(Ser232_aln251 = str_sub(X2, 251, 251)) %>%
  mutate(Asn233_aln252 = str_sub(X2, 252, 252)) %>%
  mutate(Glu253_aln272 = str_sub(X2, 272, 272)) %>%
  mutate(Ala265_aln284 = str_sub(X2, 284, 284)) %>%
  mutate(Arg267_aln286 = str_sub(X2, 286, 286)) %>%
  mutate(Phe279_aln298 = str_sub(X2, 298, 298)) %>%
  mutate(Leu301_aln320 = str_sub(X2, 320, 320)) %>%
  mutate(Asp302_aln321 = str_sub(X2, 321, 321)) %>%
  mutate(Tyr303_aln322 = str_sub(X2, 322, 322)) %>%
  mutate(Ser305_aln324 = str_sub(X2, 324, 324)) %>%
  mutate(Glu347_aln366 = str_sub(X2, 366, 366)) %>%
  mutate(IDS= str_remove(X1, ">")) %>%
  select(IDS, His83_aln102, Lys84_aln103, Thr107_aln126, Gly108_aln127, Ala109_aln128, Gln111_aln130, His112_aln131, Leu163_aln182, Leu189_aln208, Ile228_aln247, Gly229_aln248, Ser232_aln251, Asn233_aln252, Glu253_aln272, Ala265_aln284, Arg267_aln286, Phe279_aln298, Leu301_aln320, Asp302_aln321, Tyr303_aln322, Ser305_aln324, Glu347_aln366)

write_delim(trpB_positions, "/home/rodrigo/GIT/practicas/trpB_positions.csv", delim= "\t", quote_escape = "none")
