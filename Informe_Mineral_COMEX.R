# rm(list = ls())   
# options(editor = 'notepad')
library(tidyverse)


#       estrutura da NCM: xx.xx.xx.x.x  ----
#         capítulo ________|  |  | | |     SH_2    (V e XV; minérios e metais)
#         posição_____________|  | | |     SH_4    
#         subposição_____________| | |     SH_6
#         item_____________________| |
#         subitem____________________|


#      estrutura da CNAE: B  x x.x x-x/x x  ----
#       seção ____________|  | | | | | | |      B e C - INDÚSTRIAS EXTRATIVAS e INDÚSTRIAS DE TRANSFORMAÇÃO
#       divisão _____________|_| | | | | |      "FABRICAÇÃO DE BEBIDAS", "EXTRAÇÃO DE MINERAIS NÃO METÁLICOS", "FABRICAÇÃO DE PRODUTOS ALIMENTÍCIOS", "FABRICAÇÃO DE PRODUTOS QUÍMICOS", "FABRICAÇÃO DE PRODUTOS DE MINERAIS NÃO METÁLICOS", "EXTRAÇÃO DE MINERAIS METÁLICOS", "METALURGIA", "EXTRAÇÃO DE CARVÃO MINERAL", "FABRICAÇÃO DE COQUE, DE PRODUTOS DERIVADOS DO PETRÓLEO E DE BIOCOMBUSTÍVEIS", "EXTRAÇÃO DE PETRÓLEO E GÁS NATURAL", "FABRICAÇÃO DE PRODUTOS DIVERSOS", "FABRICAÇÃO DE PRODUTOS DE BORRACHA E DE MATERIAL PLÁSTICO", "FABRICAÇÃO DE CELULOSE, PAPEL E PRODUTOS DE PAPEL", "FABRICAÇÃO DE PRODUTOS TÊXTEIS", "FABRICAÇÃO DE PRODUTOS DE METAL, EXCETO MÁQUINAS E EQUIPAMENTOS", "FABRICAÇÃO DE MÁQUINAS E EQUIPAMENTOS", "FABRICAÇÃO DE VEÍCULOS AUTOMOTORES, REBOQUES E CARROCERIAS", "FABRICAÇÃO DE MÁQUINAS, APARELHOS E MATERIAIS ELÉTRICOS", "FABRICAÇÃO DE EQUIPAMENTOS DE INFORMÁTICA, PRODUTOS ELETRÔNICOS E ÓPTICOS", "FABRICAÇÃO DE MÓVEIS"
#       grupo ___________________| | | | |      "Fabricação de bebidas não alcoólicas", "Extração de outros minerais não metálicos", "Fabricação de outros produtos alimentícios", "Fabricação de produtos químicos inorgânicos", "Extração de pedra, areia e argila", "Aparelhamento de pedras e fabricação de outros produtos de minerais não metálicos", "Fabricação de cimento", "Extração de minério de ferro", "Extração de minerais metálicos não ferrosos", "Produção de ferro-gusa e de ferroligas", "Siderurgia", "Metalurgia dos metais não ferrosos", "Extração de carvão mineral", "Fabricação de produtos derivados do petróleo", "Coquerias", "Fabricação de produtos químicos orgânicos", "Extração de petróleo e gás natural", "Fabricação de produtos e preparados químicos diversos", "Fabricação de defensivos agrícolas e desinfestantes domissanitários", "Fabricação de tintas, vernizes, esmaltes, lacas e produtos afins", "Fabricação de sabões, detergentes, produtos de limpeza, cosméticos, produtos de perfumaria e de higiene pessoal", "Fabricação de produtos diversos", "Fabricação de produtos cerâmicos", "Fabricação de artefatos de concreto, cimento, fibrocimento, gesso e materiais semelhantes", "Fabricação de resinas e elastômeros", "Fabricação de produtos de material plástico", "Fabricação de produtos de borracha", "Fabricação de papel, cartolina e papel-cartão", "Fabricação de artefatos têxteis, exceto vestuário", "Fabricação de vidro e de produtos do vidro", "Tecelagem, exceto malha", "Fabricação de artigos de joalheria, bijuteria e semelhantes", "Fabricação de produtos de metal não especificados anteriormente", "Produção de tubos de aço, exceto tubos sem costura", "Fabricação de estruturas metálicas e obras de caldeiraria pesada", "Forjaria, estamparia, metalurgia do pó e serviços de tratamento de metais", "Fabricação de tanques, reservatórios metálicos e caldeiras", "Fabricação de motores, bombas, compressores e equipamentos de transmissão", "Fabricação de peças e acessórios para veículos automotores", "Fabricação de eletrodomésticos", "Fabricação de máquinas e equipamentos de uso geral", "Fundição", "Fabricação de artigos de cutelaria, de serralheria e ferramentas", "Fabricação de máquinas e equipamentos de uso na extração mineral e na construção", "Fabricação de equipamentos e aparelhos elétricos não especificados anteriormente", "Fabricação de pilhas, baterias e acumuladores elétricos", "Fabricação de equipamentos de comunicação", "Fabricação de aparelhos de recepção, reprodução, gravação e amplificação de áudio e vídeo", "Fabricação de lâmpadas e outros equipamentos de iluminação", "Fabricação de componentes eletrônicos", "Fabricação de equipamentos para distribuição e controle de energia elétrica", "Fabricação de instrumentos e materiais para uso médico e odontológico e de artigos ópticos", "Fabricação de equipamentos de informática e periféricos", "Fabricação de aparelhos e instrumentos de medida, teste e controle; cronômetros e relógios", "Fabricação de equipamento bélico pesado, armas e munições", "Fabricação de móveis"
#       classe ____________________|_| | |      "Fabricação de águas envasadas", "Fabricação de refrigerantes e de outras bebidas não alcoólicas", "Extração e refino de sal marinho e sal-gema", "Fabricação de produtos alimentícios não especificados anteriormente", "Extração de minerais para fabricação de adubos, fertilizantes e outros produtos químicos", "Fabricação de produtos químicos inorgânicos não especificados anteriormente", "Extração de minerais não metálicos não especificados anteriormente", "Extração de pedra, areia e argila", "Fabricação de produtos de minerais não metálicos não especificados anteriormente", "Fabricação de cal e gesso", "Fabricação de cimento", "Extração de minério de ferro", "Extração de minério de manganês", "Extração de minerais metálicos não ferrosos não especificados anteriormente", "Extração de minério de alumínio", "Extração de minério de estanho", "Extração de minerais radioativos", "Extração de minério de metais preciosos", "Produção de ferro-gusa", "Produção de laminados planos de aço", "Produção de laminados longos de aço", "Metalurgia dos metais não ferrosos e suas ligas não especificados anteriormente", "Metalurgia do cobre", "Metalurgia do alumínio e suas ligas", "Extração de carvão mineral", "Fabricação de produtos derivados do petróleo, exceto produtos do refino", "Coquerias", "Fabricação de produtos químicos orgânicos não especificados anteriormente", "Extração de petróleo e gás natural", "Fabricação de cloro e álcalis", "Fabricação de produtos químicos não especificados anteriormente", "Fabricação de intermediários para fertilizantes", "Fabricação de catalisadores", "Fabricação de defensivos agrícolas", "Fabricação de aditivos de uso industrial", "Fabricação de adubos e fertilizantes", "Fabricação de tintas, vernizes, esmaltes e lacas", "Fabricação de cosméticos, produtos de perfumaria e de higiene pessoal", "Fabricação de explosivos", "Fabricação de produtos diversos não especificados anteriormente", "Fabricação de produtos cerâmicos refratários", "Fabricação de artefatos de concreto, cimento, fibrocimento, gesso e materiais semelhantes", "Fabricação de resinas termofixas", "Fabricação de tubos e acessórios de material plástico para uso na construção", "Fabricação de artefatos de material plástico não especificados anteriormente", "Fabricação de artefatos de borracha não especificados anteriormente", "Fabricação de cartolina e papel-cartão", "Fabricação de papel", "Fabricação de outros produtos têxteis não especificados anteriormente", "Fabricação de tecidos especiais, inclusive artefatos", "Aparelhamento e outros trabalhos em pedras", "Fabricação de equipamentos e acessórios para segurança e proteção pessoal e profissional", "Fabricação de produtos cerâmicos não refratários para uso estrutural na construção", "Fabricação de produtos cerâmicos não refratários não especificados anteriormente", "Fabricação de artigos de vidro", "Fabricação de vidro plano e de segurança", "Fabricação de embalagens de vidro", "Tecelagem de fios de fibras artificiais e sintéticas", "Extração de gemas (pedras preciosas e semipreciosas)", "Lapidação de gemas e fabricação de artefatos de ourivesaria e joalheria", "Metalurgia dos metais preciosos", "Fabricação de bijuterias e artefatos semelhantes", "Produção de ferroligas", "Produção de semi-acabados de aço", "Fabricação de produtos de metal não especificados anteriormente", "Produção de relaminados, trefilados e perfilados de aço", "Produção de outros tubos de ferro e aço", "Produção de tubos de aço com costura", "Fabricação de estruturas metálicas", "Fabricação de esquadrias de metal", "Fabricação de obras de caldeiraria pesada", "Produção de artefatos estampados de metal; metalurgia do pó", "Fabricação de tanques, reservatórios metálicos e caldeiras para aquecimento central", "Fabricação de embalagens metálicas", "Fabricação de produtos de trefilados de metal", "Fabricação de equipamentos de transmissão para fins industriais", "Fabricação de peças e acessórios para o sistema de direção e suspensão de veículos automotores", "Fabricação de fogões, refrigeradores e máquinas de lavar e secar para uso doméstico", "Fabricação de aparelhos eletrodomésticos não especificados anteriormente", "Fabricação de máquinas e equipamentos de uso geral não especificados anteriormente", "Fabricação de artigos de metal para uso doméstico e pessoal", "Fundição de ferro e aço", "Produção de forjados de aço e de metais não ferrosos e suas ligas", "Fundição de metais não ferrosos e suas ligas", "Fabricação de ferramentas", "Fabricação de máquinas e equipamentos para a prospecção e extração de petróleo", "Fabricação de artigos de cutelaria", "Fabricação de artigos de serralheria, exceto esquadrias", "Fabricação de caldeiras geradoras de vapor, exceto para aquecimento central e para veículos", "Fabricação de aparelhos e equipamentos para instalações térmicas", "Fabricação de equipamentos e aparelhos elétricos não especificados anteriormente", "Fabricação de pilhas, baterias e acumuladores elétricos, exceto para veículos automotores", "Fabricação de baterias e acumuladores para veículos automotores", "Fabricação de equipamentos transmissores de comunicação", "Fabricação de aparelhos de recepção, reprodução, gravação e amplificação de áudio e vídeo", "Fabricação de lâmpadas e outros equipamentos de iluminação", "Fabricação de componentes eletrônicos", "Fabricação de fios, cabos e condutores elétricos isolados", "Fabricação de instrumentos e materiais para uso médico e odontológico e de artigos ópticos", "Fabricação de periféricos para equipamentos de informática", "Fabricação de cronômetros e relógios", "Fabricação de equipamento bélico pesado, armas de fogo e munições", "Fabricação de móveis com predominância de metal"
#       subclasse _____________________|_|


#     estrutura da ProdList:  x x x x  x x x x ----
#       divisão ______________|_| | |  | | | |      | 
#       grupo ____________________| |  | | | |      |4 primeiros dígitos da CNAE
#       classe _____________________|  | | | |      |
#       dígitos ordenadores ___________|_|_|_|     


# rm(list = ls())   
source('D:/Users/humberto.serna/Desktop/Anuario_Mineral_Brasileiro/Funcoes_de_Formatacao_Estilo/Funcoes_de_Formatacao_Estilo.R')


# carregamento ----
# _____ Tabela de Relacionamentos  ----

NCM_CNAE_Relacionamentos <-     # tabela do Mariano Laio
  read.table(
    file = 'D:/Users/humberto.serna/Documents/CSV_Data/Comex_Mineracao/NCM_CNAE_Relacionamentos_FINAL.csv',
    header = TRUE,
    sep = ";",
    #skip = 1286, nrows = 1,
    stringsAsFactors = FALSE, colClasses = c('character'),
    quote = "\"",    #  'aspas simples na string
    encoding = "UTF-8"#, fill = TRUE
  )

colnames(NCM_CNAE_Relacionamentos) <-
  FUNA_removeAcentos(colnames(NCM_CNAE_Relacionamentos))


NCM_CNAE_Relacionamentos <- 
  NCM_CNAE_Relacionamentos[,]

NCM_CNAE_Relacionamentos$SUBSTANCIA <- 
  NCM_CNAE_Relacionamentos$SUBSTANCIA %>% str_squish()

# __________ NCMs da Mineração

NCM_Mineracao <- 
  unique(NCM_CNAE_Relacionamentos$CO_NCM)

# _____ unidades de medida -----
und_medida <-
  read.table(
    file = 'D:/Users/humberto.serna/Documents/CSV_Data/Comex_Mineracao/NCM_UNIDADE.csv',
    header = TRUE,
    sep = ";", 
    colClasses = c('character'),
    stringsAsFactors = FALSE, 
    encoding = "UTF-8"#, fill = TRUE     #  UTF-8 contém US-ASCII 
  )


# _____ Códigos Ponte ProdList-NCM -----
#cod_Ponte_ProdList_NCM <-                            NÃO SERVE AQUI POIS NÃO SÃO CORRESPONDÊNCIAS UNÍVOCAS
#  read.table(
#    file = 'D:/Users/humberto.serna/Documents/CSV_Data/PIA/PRODLIST_NCM_Códigos_Ponte_2019.csv',
#    header = TRUE,
#    sep = ";", 
#    colClasses = c('character'),
#    stringsAsFactors = FALSE, 
#    encoding = "UTF-8"#, fill = TRUE     #  UTF-8 contém US-ASCII 
#  )
#
#cod_Ponte_ProdList_NCM$CO_NCM <- 
#  gsub(pattern = "\\.", replacement = "", cod_Ponte_ProdList_NCM$CO_NCM)




# _____ BASE EXPORTAÇAO                            ####

# carregar arquivo pronto
# exportacao <- readRDS(file = 'D:/Users/humberto.serna/Documents/CSV_Data/Comex_Mineracao/EXP_COMPLETA.RDATA')

 exportacao <-
 read.table(
    file = 'D:/Users/humberto.serna/Documents/CSV_Data/Comex_Mineracao/EXP_2020.csv',
    header =  TRUE,
    sep = ";", # skip =  19038449, 15800261, nrows = 5823354,
    stringsAsFactors = FALSE, 
    colClasses = c('character','character','character','character','character','character','character','character','numeric','numeric','numeric'),
    col.names = c("CO_ANO","CO_MES","CO_NCM","CO_UNID","CO_PAIS","SG_UF_NCM","CO_VIA","CO_URF","QT_ESTAT","KG_LIQUIDO","VL_FOB"),
     quote = "\"",  #    'aspas simples na string
    encoding = "UTF-8", fill = TRUE     #  UTF-8 contém US-ASCII 
  )

# __________ exportacao de produtos NCMs mineração ----

exportacao <-  # 2197 NMCs    
  exportacao[exportacao$CO_NCM %in% NCM_Mineracao,]



# __________  Distinguindo trimestres
exportacao$Trimestre <- NA
for (i in 1:nrow(exportacao)) {
  if (exportacao$CO_MES[i] %in% c('01', '02', '03')) {
    exportacao$Trimestre[i] <- "I_Trimestre"
  } else if (exportacao$CO_MES[i] %in% c('04', '05', '06')) {
    exportacao$Trimestre[i] <- "II_Trimestre"
  } else if (exportacao$CO_MES[i] %in% c('07', '08', '09')) {
    exportacao$Trimestre[i] <- "III_Trimestre"
  } else {
    exportacao$Trimestre[i] <- "IV_Trimestre"
  }
}


# __________ und de medida 
exportacao <- 
  left_join(exportacao, und_medida, by = "CO_UNID")



# __________ Junção com Tabela de Relacionamentos NCMs-CNAES-Substâncias ----

exportacao <-
  left_join(exportacao, 
            unique(NCM_CNAE_Relacionamentos[, c("CO_NCM",#                                   2197 NCMs na mineração
                                                "NO_NCM_POR",
                                                #"CO_FAT_AGREG",#                             2197 linhas
                                                #"NO_FAT_AGREG",
                                                #"NO_FAT_AGREG_GP",#                          2197 linhas
                                                "SUBSTANCIA"#,#                               2198 linhas
                                                #"CNAE.2.3.Secao.Codigo",#                    2207 linhas
                                                #"CNAE.2.3.Secao.Descricao",
                                                #"CNAE.2.3.Divisao.Codigo",#                  2270 linhas
                                                #"CNAE.2.3.Divisao.Descricao",
                                                #"CNAE.2.3.Grupo.Codigo",#                    2291 linhas
                                                #"CNAE.2.3.Grupo.Descricao",
                                                #"CNAE.2.3.Classe.Codigo...ProdList.2019",#   2430 linhas
                                                #"CNAE.2.3.Classe.Descricao...ProdList.2019",                                         
                                                #"PRODUTO.ProdList.Ind.2019.Codigo",
                                                #"PRODUTO.ProdList.Ind.2019.Descricao"#,
                                                #"ProdList.Servicos.associados.2019.Codigo",
                                                #"ProdList.Servicos.associados.2019.Descricao",
                                                #"CNAE.2.3.Classe.Codigo...ProdList.2016",
                                                #"CNAE.2.3.Classe.Descricao...ProdList.2016",
                                                #"PRODUTO.ProdList.Ind.2016.Codigo",
                                                #"PRODUTO.ProdList.Ind.2016.Descricao",
                                                #"ProdList.Servicos.associados.2016.Codigo",
                                                #"ProdList.Servicos.associados.2016.Descricao",
                                                #"CO_UNID",
                                                #"NO_UNID",
                                                #"SG_UNID"
                                                )]), by = "CO_NCM")

# __________ País ----
pais <- 
  read.table(file = "D:/Users/humberto.serna/Documents/CSV_Data/Comex_Mineracao/PAIS.csv", header = TRUE, sep = ";", stringsAsFactors = FALSE, colClasses = 'character')

pais <- 
  pais[,c(
    "CO_PAIS", 
    #  "CO_PAIS_ISON3", 
    #  "CO_PAIS_ISOA3", 
    "NO_PAIS" #, 
    #  "NO_PAIS_ING", 
    #  "NO_PAIS_ESP"
  )]

exportacao <- 
  left_join(exportacao, pais, by = "CO_PAIS")

# __________ Quantidades em Toneladas ----

exportacao$QUANTIDADE_TON <- 
  exportacao$KG_LIQUIDO / 1000

# __________ vetor de preços ----

exportacao$`VALOR_(usd/un)` <- 
  round(
    exportacao$VL_FOB /
      (exportacao$QT_ESTAT), 4) 

# ____________________ tratando valores infinitos 
exportacao[is.infinite(exportacao$`VALOR_(usd/un)`),]$`VALOR_(usd/un)` <- NaN



# __________ impondo grandezas em toneladas às Substâncias do Sumário ----
listagem <- c("Alumínio", "Areia", "Brita", "Calcário", "Carvão", "Caulim", "Chumbo", #"Água Mineral",
              "Cobalto", "Cobre", "Cromo", "Estanho", "Ferro", "Fosfato", "Grafita", "Lítio", "Magnesita",
              "Manganês", "Nióbio", "Níquel", "Potássio", "Prata", "Rochas Ornamentais", "Tântalo", #"Ouro",
              "Terras Raras", "Titânio", "Tungstênio", "Vanádio", "Zinco", "Zircônio")

exportacao[exportacao$SUBSTANCIA %in% listagem &
             exportacao$SG_UNID == "KGL" & is.na(exportacao$`VALOR_(usd/un)`) == FALSE,]$`VALOR_(usd/un)` <-
  exportacao[exportacao$SUBSTANCIA %in% listagem &
               exportacao$SG_UNID == "KGL" & is.na(exportacao$`VALOR_(usd/un)`) == FALSE,]$`VALOR_(usd/un)` * 1000

exportacao[exportacao$SUBSTANCIA %in% listagem &
             exportacao$SG_UNID == "KGL" & is.na(exportacao$QT_ESTAT) == FALSE,]$QT_ESTAT <-
  exportacao[exportacao$SUBSTANCIA %in% listagem &
               exportacao$SG_UNID == "KGL" & is.na(exportacao$QT_ESTAT) == FALSE,]$QT_ESTAT /1000

exportacao[exportacao$SUBSTANCIA %in% listagem &
             exportacao$SG_UNID == "KGL", ]$SG_UNID <- "TML"

exportacao[exportacao$SUBSTANCIA %in% listagem &
             exportacao$NO_UNID == "QUILOGRAMA LIQUIDO", ]$NO_UNID <-
  "TONELADA METRICA LIQUIDA"



# _____ BASE IMPORTAÇAO                           ####

#rm(exportacao)

# carregar arquivo pronto
#importacao <- readRDS(file = 'D:/Users/humberto.serna/Documents/CSV_Data/Comex_Mineracao/IMP_COMPLETA.RDATA')

importacao <-
  read.table(
    file = 'D:/Users/humberto.serna/Documents/CSV_Data/Comex_Mineracao/IMP_2020.csv',
    header = TRUE,   
    sep = ";", # skip = 28737260,  23417130, nrows = 9091054,
    stringsAsFactors = FALSE, 
    colClasses = c('character','character','character','character','character','character','character','character','numeric','numeric','numeric'),
    col.names = c("CO_ANO","CO_MES","CO_NCM","CO_UNID","CO_PAIS","SG_UF_NCM","CO_VIA","CO_URF","QT_ESTAT","KG_LIQUIDO","VL_FOB"),
     quote = "\"",  #    'aspas simples na string
    encoding = "UTF-8", fill = TRUE     #  UTF-8 contém US-ASCII 
  )


# __________ importacao de produtos NCMs mineração ----

importacao <-
  importacao[importacao$CO_NCM %in% NCM_Mineracao,]  

# __________  Distinguindo trimestres
importacao$Trimestre <- NA
for (i in 1:nrow(importacao)) {
  if (importacao$CO_MES[i] %in% c('01','02','03')) {
    importacao$Trimestre[i] <- "I_Trimestre"
  } else if (importacao$CO_MES[i] %in% c('04','05','06')) {
    importacao$Trimestre[i] <- "II_Trimestre"
  } else if (importacao$CO_MES[i] %in% c('07','08','09')) {
    importacao$Trimestre[i] <- "III_Trimestre"
  } else {
    importacao$Trimestre[i] <- "IV_Trimestre"
  }
}


# __________ und de medida 
importacao <- 
  left_join(importacao, und_medida, by = "CO_UNID")


# __________ Junção com Tabela de Relacionamentos NCMs-CNAES-Substâncias ----
importacao <-
  left_join(importacao, 
            unique(NCM_CNAE_Relacionamentos[, c("CO_NCM",#                                   2197 NCMs na mineração
                                                "NO_NCM_POR",
                                                #"CO_FAT_AGREG",#                             2197 linhas
                                                #"NO_FAT_AGREG",
                                                #"NO_FAT_AGREG_GP",#                          2197 linhas
                                                "SUBSTANCIA"#,#                               2198 linhas
                                                #"CNAE.2.3.Secao.Codigo",#                    2207 linhas
                                                #"CNAE.2.3.Secao.Descricao",
                                                #"CNAE.2.3.Divisao.Codigo",#                  2270 linhas
                                                #"CNAE.2.3.Divisao.Descricao",
                                                #"CNAE.2.3.Grupo.Codigo",#                    2291 linhas
                                                #"CNAE.2.3.Grupo.Descricao",
                                                #"CNAE.2.3.Classe.Codigo...ProdList.2019",#   2430 linhas
                                                #"CNAE.2.3.Classe.Descricao...ProdList.2019",                                         
                                                #"PRODUTO.ProdList.Ind.2019.Codigo",
                                                #"PRODUTO.ProdList.Ind.2019.Descricao"#,
                                                #"ProdList.Servicos.associados.2019.Codigo",
                                                #"ProdList.Servicos.associados.2019.Descricao",
                                                #"CNAE.2.3.Classe.Codigo...ProdList.2016",
                                                #"CNAE.2.3.Classe.Descricao...ProdList.2016",
                                                #"PRODUTO.ProdList.Ind.2016.Codigo",
                                                #"PRODUTO.ProdList.Ind.2016.Descricao",
                                                #"ProdList.Servicos.associados.2016.Codigo",
                                                #"ProdList.Servicos.associados.2016.Descricao",
                                                #"CO_UNID",
                                                #"NO_UNID",
                                                #"SG_UNID"
            )]), by = "CO_NCM")



# __________ País ----
importacao <- 
  left_join(importacao, pais, by = "CO_PAIS")

# __________ Quantidades em Toneladas ----

importacao$QUANTIDADE_TON <- 
  importacao$KG_LIQUIDO / 1000

# __________ vetor de preços ----

importacao$`VALOR_(usd/un)` <- 
  round(
    importacao$VL_FOB /
      (importacao$QT_ESTAT), 4) 

# ____________________ tratando valores infinitos
importacao[is.infinite(importacao$`VALOR_(usd/un)`),]$`VALOR_(usd/un)` <- NaN




# __________ impondo grandezas em toneladas às Substâncias do Sumário ----

listagem <- c("Alumínio", "Areia", "Brita", "Calcário", "Carvão", "Caulim", "Chumbo", #"Água Mineral",
              "Cobalto", "Cobre", "Cromo", "Estanho", "Ferro", "Fosfato", "Grafita", "Lítio", "Magnesita",
              "Manganês", "Nióbio", "Níquel", "Potássio", "Prata", "Rochas Ornamentais", "Tântalo", #"Ouro",
              "Terras Raras", "Titânio", "Tungstênio", "Vanádio", "Zinco", "Zircônio")

importacao[importacao$SUBSTANCIA %in% listagem &
             importacao$SG_UNID == "KGL" & is.na(importacao$`VALOR_(usd/un)`) == FALSE,]$`VALOR_(usd/un)` <-
  importacao[importacao$SUBSTANCIA %in% listagem &
               importacao$SG_UNID == "KGL" & is.na(importacao$`VALOR_(usd/un)`) == FALSE,]$`VALOR_(usd/un)` * 1000

importacao[importacao$SUBSTANCIA %in% listagem &
             importacao$SG_UNID == "KGL" & is.na(importacao$QT_ESTAT) == FALSE,]$QT_ESTAT <-
  importacao[importacao$SUBSTANCIA %in% listagem &
               importacao$SG_UNID == "KGL" & is.na(importacao$QT_ESTAT) == FALSE,]$QT_ESTAT /1000

importacao[importacao$SUBSTANCIA %in% listagem &
             importacao$SG_UNID == "KGL", ]$SG_UNID <- "TML"

importacao[importacao$SUBSTANCIA %in% listagem &
             importacao$NO_UNID == "QUILOGRAMA LIQUIDO", ]$NO_UNID <-
  "TONELADA METRICA LIQUIDA"


# _____ PIA (PESQUISA INDUSTRIAL ANUAL) ----
pia <-
  read.table(
    file = 'D:/Users/humberto.serna/Documents/CSV_Data/PIA/PIA_Produto_2018.csv',  #  PIA_2010_2018.csv ESTÁ CORROMPIDO, SEM SEPARADOR DE DECIMAIS
    header = TRUE,
    sep = ";", #skip = 28737260,  
    dec = ",", 
    stringsAsFactors = FALSE, 
    #colClasses = c('character','character','character','integer','integer','numeric','integer','numeric'),
    #col.names = c("CO_ANO","CO_MES","CO_NCM","CO_UNID","CO_PAIS","SG_UF_NCM","CO_VIA","CO_URF","QT_ESTAT","KG_LIQUIDO","VL_FOB"),
    quote = "\"",    #  'aspas simples na string
    encoding = "UTF-8"#, fill = TRUE     #  UTF-8 contém US-ASCII 
  )

# substituindo NA por 0. Se não é feito isso, não se atribui proporções posteriormente
for (i in 1:nrow(pia)) {
  if (is.na(pia$Vendas_Valor[i])) {
    
    pia$Vendas_Valor[i] <- 0
  }
  }



lista_EXTRATIVA_MINERAL_Secao <- c("0500","0500.2010","0500.2020","0500.2030","0500.2045","0500.9010","0500.9020","0710","0710.2015","0710.2030","0710.9015","0710.9030","0721","0721.2010","0721.9010","0721.9020","0722","0722.2010","0722.9010","0722.9020","0723","0723.2010","0723.9010","0723.9020","0724","0724.2010","0724.2020","0724.2030","0724.9010","0724.9020","0725","0725.2010","0725.9010","0725.9020","0729","0729.2010","0729.2020","0729.2030","0729.2040","0729.2050","0729.2060","0729.2070","0729.2080","0729.2090","0729.2100","0729.9010","0729.9020","0810","0810.2020","0810.2030","0810.2040","0810.2055","0810.2070","0810.2080","0810.2090","0810.2100","0810.2110","0810.2120","0810.2130","0810.2140","0810.2150","0810.2160","0810.2180","0810.2190","0810.2215","0810.2220","0810.2230","0810.2240","0810.2250","0810.2255","0810.2270","0810.9010","0810.9020","0891","0891.2010","0891.2020","0891.2030","0891.2040","0891.2050","0891.2060","0891.2070","0891.9010","0891.9020","0892","0892.2020","0892.2040","0892.9010","0892.9020","0893","0893.2010","0893.2020","0893.2030","0893.9010","0893.9020","0899","0899.2010","0899.2020","0899.2030","0899.2040","0899.2050","0899.2060","0899.2070","0899.2080","0899.2090","0899.2100","0899.2120","0899.2130","0899.2140","0899.9010","0899.9020","0990","0990.9010","0990.9020","0990.9030","0990.9040","0990.9050")
lista_TRANSFORMAÇÃO_MINERAL_Secao <- c("2311","2311.2005","2311.2010","2311.2025","2311.2030","2311.2040","2311.9010","2312","2312.2010","2312.2020","2312.2030","2312.2040","2312.9010","2319","2319.2010","2319.2030","2319.2040","2319.2045","2319.2060","2319.2080","2319.2090","2319.2100","2319.2110","2319.2120","2319.2130","2319.2140","2319.2150","2319.2160","2319.2170","2319.2180","2319.2195","2319.2220","2319.2235","2319.2245","2319.2250","2319.2280","2319.9010","2319.9020","2320","2320.2010","2320.2020","2320.2030","2320.2040","2320.2050","2320.2060","2320.2070","2320.2080","2320.2090","2320.2100","2330","2330.2010","2330.2020","2330.2030","2330.2040","2330.2050","2330.2053","2330.2060","2330.2070","2330.2080","2330.2090","2330.2100","2330.2110","2330.2115","2330.2130","2330.9010","2341","2341.2010","2341.2025","2341.2035","2341.2040","2341.9010","2342","2342.2010","2342.2030","2342.2040","2342.2045","2342.2050","2342.2065","2342.2080","2342.9010","2349","2349.2010","2349.2020","2349.2030","2349.2045","2349.2050","2349.2055","2349.2070","2349.2075","2349.2080","2349.2090","2349.2095","2349.2100","2349.2110","2349.9010","2349.9020","2391","2391.2010","2391.2020","2391.2030","2391.2040","2391.2050","2391.2060","2391.9010","2392","2392.2005","2392.2010","2392.2020","2392.2030","2392.2035","2392.2038","2392.2040","2392.9010","2399",
                                       "2399.2010","2399.2020","2399.2030","2399.2040","2399.2050","2399.2060","2399.2070","2399.2080","2399.2090","2399.2100","2399.2110","2399.2120","2399.2130","2399.2135","2399.2140","2399.2150","2399.2160","2399.2170","2399.2180","2399.2190","2399.2200","2399.2210","2399.2215","2399.2220","2399.9010","2399.9013","2399.9015","2399.9020","2411","2411.2010","2411.2020","2411.2030","2411.9010","2412","2412.2010","2412.2020","2412.2030","2412.2040","2412.2050","2412.2060","2412.2070","2412.9010","2421","2421.2005","2421.2010","2421.2015","2421.2020","2421.2030","2421.2040","2421.9010","2422","2422.2010","2422.2020","2422.2030","2422.2035","2422.2060","2422.2070","2422.2080","2422.2090","2422.2100","2422.2105","2422.2115","2422.2120","2422.2130","2422.2140","2422.2150","2422.2160","2422.2170","2422.9010","2423","2423.2010","2423.2020","2423.2030","2423.2040","2423.2050","2423.2060","2423.2070","2423.2080","2423.2090","2423.2100","2423.2110","2423.2120","2423.2130","2423.2140","2423.9010","2424","2424.2010","2424.2020","2424.2030","2424.2040","2424.2050","2424.2060","2424.2070","2424.2080","2424.9010","2424.9020","2431","2431.2010","2431.2020","2431.2030","2431.2040","2431.9010","2439","2439.2010","2439.2020","2439.2040","2439.9010","2441","2441.2010","2441.2020","2441.2030","2441.2045","2441.2050",
                                       "2441.2060","2441.2070","2441.2080","2441.2090","2441.2100","2441.2110","2441.2120","2441.2130","2441.2140","2441.2150","2441.9010","2442","2442.2010","2442.2020","2442.2030","2442.2040","2442.2050","2442.2075","2442.2080","2442.2090","2442.9010","2443","2443.2010","2443.2020","2443.2025","2443.2030","2443.2040","2443.2055","2443.2070","2443.2080","2443.2100","2443.2110","2443.2120","2443.9010","2449","2449.2010","2449.2015","2449.2020","2449.2030","2449.2040","2449.2060","2449.2070","2449.2080","2449.2090","2449.2095","2449.2100","2449.2110","2449.2120","2449.2140","2449.2150","2449.2160","2449.2170","2449.2180","2449.2190","2449.2200","2449.2210","2449.9010","2449.9020","2449.9030","2451","2451.2010","2451.2015","2451.2020","2451.9010","2452","2452.2010","2452.2020","2452.2030","2452.2040","2452.9010","2511","2511.2010","2511.2025","2511.2040","2511.2055","2511.2060","2511.2065","2511.2070","2511.9010","2511.9020","2512","2512.2010","2512.2020","2512.2030","2512.2040","2512.9010","2513","2513.2010","2513.2040","2513.9010","2521","2521.2010","2521.2020","2521.2030","2521.2040","2521.2050","2521.2060","2521.2070","2521.2080","2521.2090","2521.2100","2521.2110","2521.2120","2521.9010","2521.9020","2522","2522.2010","2522.2020","2522.2030","2522.2040","2522.2050","2522.2060","2522.2070","2522.9010",
                                       "2522.9020","2531","2531.2010","2531.2020","2531.9010","2531.9020","2532","2532.2010","2532.2020","2532.2030","2532.2040","2532.2050","2532.2060","2532.2070","2532.9010","2532.9020","2539","2539.9010","2539.9020","2539.9030","2539.9040","2539.9050","2539.9060","2539.9070","2541","2541.2010","2541.2020","2541.2030","2541.2040","2541.2050","2541.2060","2541.2070","2541.2080","2541.2090","2541.2100","2541.2110","2541.2120","2541.9010","2542","2542.2010","2542.2020","2542.2030","2542.2040","2542.2050","2542.2060","2542.2070","2542.2080","2542.2090","2542.2100","2542.2110","2542.2120","2542.2130","2542.2140","2542.9010","2543","2543.2010","2543.2020","2543.2030","2543.2040","2543.2050","2543.2060","2543.2070","2543.2080","2543.2090","2543.2100","2543.2110","2543.2120","2543.2130","2543.2140","2543.2150","2543.2160","2543.2170","2543.2180","2543.2190","2543.2200","2543.2210","2543.2220","2543.2230","2543.2240","2543.2250","2543.2260","2543.2270","2543.2280","2543.2290","2543.2300","2543.2310","2543.2320","2543.2330","2543.2340","2543.2350","2543.2360","2543.2370","2543.2380","2543.2390","2543.9010","2550","2550.2010","2550.2020","2550.2030","2550.2040","2550.2050","2550.2060","2550.2070","2550.2080","2550.9010","2550.9020","2591","2591.2010","2591.2020","2591.2030","2591.2040","2591.2050","2591.2060",
                                       "2591.2070","2591.2080","2591.2090","2591.2100","2591.9010","2592","2592.2010","2592.2020","2592.2030","2592.2040","2592.2050","2592.2060","2592.2070","2592.2080","2592.2090","2592.2100","2592.2110","2592.2120","2592.2130","2592.2140","2592.2150","2592.2160","2592.2170","2592.2180","2592.2190","2592.2200","2592.2210","2592.2220","2592.2230","2592.2240","2592.2250","2592.2260","2592.2270","2592.2280","2592.9010","2593","2593.2010","2593.2020","2593.2030","2593.2040","2593.2050","2593.2060","2593.2070","2593.2080","2593.9010","2599","2599.2010","2599.2020","2599.2030","2599.2032","2599.2035","2599.2040","2599.2060","2599.2065","2599.2070","2599.2080","2599.2090","2599.2100","2599.2110","2599.2120","2599.2125","2599.2140","2599.2150","2599.2160","2599.2170","2599.2180","2599.2190","2599.2200","2599.2210","2599.9010","2599.9020","2599.9030")

pia$CNAE.2.3.Secao.Codigo <- NA
pia$cnae_seção <- NA
for (i in 1:nrow(pia)) {
  if (pia$cod_PRODLIST[i] %in% lista_EXTRATIVA_MINERAL_Secao) {
    
    pia$cnae_seção[i] <- "extrativa mineral"
    
    pia$CNAE.2.3.Secao.Codigo[i] <- "B"
    
  } else if (pia$cod_PRODLIST[i] %in% lista_TRANSFORMAÇÃO_MINERAL_Secao) {
    pia$cnae_seção[i] <- "transformacao mineral"
    
    pia$CNAE.2.3.Secao.Codigo[i] <- "C"
  }}  



# NCM que constam simultâneamente nas Seções CNAES "INDÚSTRIAS DE TRANSFORMAÇÃO" e "INDÚSTRIAS EXTRATIVAS"  ----

NCMs_em_2_ProdList <-   
  left_join(
    filter(as.data.frame(table(
      unique(NCM_CNAE_Relacionamentos[, c(
        "CO_NCM",
        "NO_NCM_POR",
        "CNAE.2.3.Secao.Codigo",
        "CNAE.2.3.Secao.Descricao"
      )])[, 1]
    )), Freq > 1),
    unique(NCM_CNAE_Relacionamentos[, c("CO_NCM",
                                        "NO_NCM_POR",
                                        "SUBSTANCIA")]),
    by = c("Var1" = "CO_NCM"))


# NCMs_em_2_ProdList
#  25291000    2                                                                                           Feldspato  Feldspato
#  25070010    2                                                                  Caulim (caulino), mesmo calcinados     Caulim
#  25101010    2                                                             Fosfatos de cálcio naturais, não moídos    Fosfato
#  25101090    2                                       Fosfatos aluminocálcicos, naturais, cré fosfatado, não moídos    Fosfato
#  25102010    2                                                                 Fosfatos de cálcio naturais, moídos    Fosfato
#  25102090    2                                           Fosfatos aluminocálcicos, naturais, cré fosfatado, moídos    Fosfato
#  25111000    2                                                                 Sulfato de bário natural (baritina)      Bário
  # (estas NCMs abaixo também estão emmais de 1 fator de agregação)
#  25059000    2 Outras areias naturais de qualquer espécie, mesmo coradas, exceto areias metalíferas do Capítulo 26      Areia
#  25210000    2                            Castinas; pedras calcárias utilizadas na fabricação de cal ou de cimento   Calcário


# unindo as NCMs acima à NCM_CNAE_Relacionamentos
colnames(NCMs_em_2_ProdList)[1] <- 'CO_NCM'  
NCMs_em_2_ProdList <-   
  left_join(NCMs_em_2_ProdList,
            unique(NCM_CNAE_Relacionamentos[, c(
              "CO_NCM",
              "NO_FAT_AGREG",
              "SUBSTANCIA",
              "CNAE.2.3.Secao.Codigo",
              "CNAE.2.3.Secao.Descricao",
              "PRODUTO.ProdList.Ind.2019.Codigo",      #"ProdList.Ind.2016.Codigo",
              "PRODUTO.ProdList.Ind.2019.Descricao"#,  #"ProdList.Ind.2016.Descricao",      
              #         "ProdList.Servicos.associados.2016.Codigo",
              #        "ProdList.Servicos.associados.2016.Descricao"
            )]),
            by = c("CO_NCM")) # %>% View()


# Listagem das ProdLists envolvidas com a duplicação das NCMs:
#           unique(NCMs_em_2_ProdList[, c("PRODUTO.ProdList.Ind.2019.Codigo")]) %>% as.character() %>% edit
lista_prodList <- 
  c("0810.2055", "2399.2015", "0810.2150", "2399.2070", "0891.2040", "2399.2120", "0891.2070", "2399.2210", "0810.2140", "2399.2060", "2399.2090", "0899.2060", "2399.2110")
#  c("8.102.150", "23.992.070", "8.912.040", "23.992.120", "8.912.070", "23.992.210", "8.102.180", "23.922.038", "8.992.060", "23.992.110")
# somente PIA produto
# c("8.102.150", "23.992.070", "8.912.040", "23.992.120", "8.912.070", "23.992.210", "8.102.180", "23.922.038", "8.992.060", "23.992.110")

# com PIA produto + serviços
# c("0810.2150", "0810.2150", "2399.2070", "2399.2070", "2399.2070", "2399.2070", "0891.2040", "0891.2040", "2399.2120", "2399.2120", "0891.2070", "0891.2070", "2399.2210", "2399.2210", "2399.2210", "2399.2210", "0810.2180", "0810.2180", "2392.2038", "0899.2060", "0899.2060", "2399.2110", "2399.2110", "2399.2110", "2399.2110", "0810.9010", "0810.9020", "2399.9010", "2399.9013", "2399.9015", "2399.9020", "0891.9010", "0891.9020", "2399.9010", "2399.9020", "0891.9010", "0891.9020", "2399.9010", "2399.9013", "2399.9015", "2399.9020", "0810.9010", "0810.9020", "2392.9010", "0899.9010", "0899.9020", "2399.9010", "2399.9013", "2399.9015", "2399.9020")


# _____ Distribuindo o comércio das NCMs da PIA por cada CNAE Seção (Ext Min/Ind. Min) ----
df_CnaeSec_NCM_PIA <-
  left_join(
    group_by(
      left_join(
      pia[pia$cod_PRODLIST %in% lista_prodList & pia$ano == 2018, ],
      NCMs_em_2_ProdList[, c(1, 9)],
      by = c("cod_PRODLIST" = "PRODUTO.ProdList.Ind.2019.Codigo")
    ),
    CO_NCM) %>% summarise(sum(Vendas_Valor)),
    group_by(
      left_join(
        pia[pia$cod_PRODLIST %in% lista_prodList & pia$ano == 2018, ],
        NCMs_em_2_ProdList[, c(1, 9)],
        by = c("cod_PRODLIST" = "PRODUTO.ProdList.Ind.2019.Codigo")
      ),
      CO_NCM,
      cnae_seção,
      CNAE.2.3.Secao.Codigo
    ) %>% summarise(sum(Vendas_Valor)),
    by = "CO_NCM"
  )


# acrescentando coluna de proporção
df_CnaeSec_NCM_PIA$proporcao <- 
  df_CnaeSec_NCM_PIA$`sum(Vendas_Valor).y` /
  df_CnaeSec_NCM_PIA$`sum(Vendas_Valor).x`

# __________ tabela final associando às NCMs as proporções entre (Ext Min/Ind. Min) ----
df_CnaeSec_NCM_PIA <- 
  df_CnaeSec_NCM_PIA[,c("CO_NCM", "CNAE.2.3.Secao.Codigo", "cnae_seção", "proporcao")]


# CONSULTAS Importação NCM CNAE ----

df_auxiliar <- 
  left_join(
    group_by(importacao, CO_ANO, Trimestre, CO_NCM, CO_PAIS, NO_PAIS) %>% summarise(sum(VL_FOB)), #Trimestre, 
    unique(
      NCM_CNAE_Relacionamentos[,c(
        "CO_NCM",
        "NO_NCM_POR",
        "CO_FAT_AGREG",
        "NO_FAT_AGREG",
        #  "NO_FAT_AGREG_GP",
        "SUBSTANCIA",
        "CNAE.2.3.Secao.Codigo",
        "CNAE.2.3.Secao.Descricao"# ,
        #   "ProdList.Ind.2016.Codigo",                 # Há NCMs com 2 ou mais ProdLists
        #   "ProdList.Ind.2016.Descricao",
        #   "ProdList.Servicos.associados.2016.Codigo",
        #   "ProdList.Servicos.associados.2016.Descricao"
      )]), by = "CO_NCM")               # %>% View()


df_CnaeSec_NCM_PIA$pia_id <- 
  paste(df_CnaeSec_NCM_PIA$CO_NCM, df_CnaeSec_NCM_PIA$CNAE.2.3.Secao.Codigo, sep = "_")

df_auxiliar$pia_id <- 
  paste(df_auxiliar$CO_NCM, df_auxiliar$CNAE.2.3.Secao.Codigo, sep = "_")

df_auxiliar <-
  left_join(df_auxiliar, df_CnaeSec_NCM_PIA, by = "pia_id")

df_auxiliar <- 
  df_auxiliar[, c(
    "CO_ANO","Trimestre","CO_NCM.x","CO_PAIS", "NO_PAIS", "NO_NCM_POR","CO_FAT_AGREG","NO_FAT_AGREG","SUBSTANCIA","CNAE.2.3.Secao.Codigo.x","CNAE.2.3.Secao.Descricao","proporcao","sum(VL_FOB)"
  )]


for (i in 1:length(df_auxiliar$proporcao)) {
  
  if (is.na(df_auxiliar$proporcao[i])) {
    df_auxiliar$proporcao[i] <- 1
  }}

df_auxiliar$VL_FOB <- 
  df_auxiliar$`sum(VL_FOB)` * df_auxiliar$proporcao


importacao_PIA_ajustada <- df_auxiliar[,c("CO_ANO", "Trimestre", "CO_NCM.x", "CO_PAIS", "NO_PAIS", "NO_NCM_POR", "CO_FAT_AGREG", "NO_FAT_AGREG", "SUBSTANCIA", "CNAE.2.3.Secao.Codigo.x", "CNAE.2.3.Secao.Descricao", "VL_FOB")]




# _____ Importacao_Fat_AGREG ----
Importacao_Fat_AGREG <- 
  group_by(importacao_PIA_ajustada, CO_ANO, Trimestre, NO_FAT_AGREG) %>% summarise(sum(VL_FOB))
Importacao_Fat_AGREG <- 
  spread(Importacao_Fat_AGREG, key = CO_ANO, value =  `sum(VL_FOB)`)  
#   write.table(Importacao_Fat_AGREG, "Importacao_Fat_AGREG.csv", sep = ";", dec = ",", row.names = FALSE, na = "")            

# _____ Importacao_Substancia ----
Importacao_Substancia <- 
  group_by(importacao_PIA_ajustada, CO_ANO, Trimestre, SUBSTANCIA) %>% summarise(sum(VL_FOB))
Importacao_Substancia$id <- paste(Importacao_Substancia$CO_ANO,Importacao_Substancia$Trimestre, sep = "_")
Importacao_Substancia <- 
  arrange(
    spread(Importacao_Substancia[,c("id","SUBSTANCIA","sum(VL_FOB)")], key = id, value = `sum(VL_FOB)`),
    desc(`2020_I_Trimestre`))
#   write.table(Importacao_Substancia, "Importacao_Substancia.csv", sep = ";", dec = ",", row.names = FALSE, na = "")        

# _____ Importacao_Pais ----
Importacao_Pais <- 
  group_by(importacao_PIA_ajustada, CO_ANO, Trimestre, CNAE.2.3.Secao.Descricao, NO_PAIS) %>% summarise(sum(VL_FOB))
Importacao_Pais$id <- paste(Importacao_Pais$CO_ANO,Importacao_Pais$Trimestre, sep = "_")
Importacao_Pais <- 
  arrange(
    spread(Importacao_Pais[,c("id","NO_PAIS", "CNAE.2.3.Secao.Descricao", "sum(VL_FOB)")], key = id, value = `sum(VL_FOB)`),
    desc(`2020_IV_Trimestre`))
#   write.table(Importacao_Pais, "Importacao_Pais.csv", sep = ";", dec = ",", row.names = FALSE, na = "")              

# _____ Importacao_Substancia_Pais ----
Importacao_Substancia_Pais <- 
  arrange(
    spread(data = 
             group_by(importacao_PIA_ajustada[importacao_PIA_ajustada$NO_PAIS %in% unique(Exportacao_Pais$NO_PAIS),], CO_ANO, Trimestre, CNAE.2.3.Secao.Descricao, SUBSTANCIA, NO_PAIS) %>% 
             summarise(sum(VL_FOB)), 
           key = Trimestre, value  = `sum(VL_FOB)`), desc(I_Trimestre))

#   write.table(Importacao_Substancia_Pais, "Importacao_Substancia_Pais.csv", sep = ";", dec = ",", row.names = FALSE, na = "")        

# _____ Importacao_df ----
Importacao_df <- 
  group_by(importacao_PIA_ajustada, CO_ANO, Trimestre, CNAE.2.3.Secao.Descricao, CO_NCM.x, NO_NCM_POR, NO_FAT_AGREG,  SUBSTANCIA, CO_PAIS, NO_PAIS) %>% summarise(sum(VL_FOB))

#   write.table(Importacao_df, "Importacao_df.csv", sep = ";", dec = ",", row.names = FALSE, na = "")        





# CONSULTAS Exportação NCM CNAE ----

df_auxiliar <- 
  left_join(
    group_by(exportacao, CO_ANO, Trimestre, CO_NCM, CO_PAIS, NO_PAIS) %>% summarise(sum(VL_FOB)), 
    unique(
      NCM_CNAE_Relacionamentos[,c(
        "CO_NCM",
        "NO_NCM_POR",
        "CO_FAT_AGREG",
        "NO_FAT_AGREG",
        #  "NO_FAT_AGREG_GP",
        "SUBSTANCIA",
        "CNAE.2.3.Secao.Codigo",
        "CNAE.2.3.Secao.Descricao"# ,
        #   "ProdList.Ind.2016.Codigo",                 # Há NCMs com 2 ou mais ProdLists
        #   "ProdList.Ind.2016.Descricao",
        #   "ProdList.Servicos.associados.2016.Codigo",
        #   "ProdList.Servicos.associados.2016.Descricao"
      )]), by = "CO_NCM")               # %>% View()


df_CnaeSec_NCM_PIA$pia_id <- 
  paste(df_CnaeSec_NCM_PIA$CO_NCM, df_CnaeSec_NCM_PIA$CNAE.2.3.Secao.Codigo, sep = "_")

df_auxiliar$pia_id <- 
  paste(df_auxiliar$CO_NCM, df_auxiliar$CNAE.2.3.Secao.Codigo, sep = "_")

df_auxiliar <-
  left_join(df_auxiliar, df_CnaeSec_NCM_PIA, by = "pia_id")

df_auxiliar <- 
  df_auxiliar[, c(
    "CO_ANO","Trimestre","CO_NCM.x","CO_PAIS", "NO_PAIS", "NO_NCM_POR","CO_FAT_AGREG","NO_FAT_AGREG","SUBSTANCIA","CNAE.2.3.Secao.Codigo.x","CNAE.2.3.Secao.Descricao","proporcao","sum(VL_FOB)"
  )]


for (i in 1:length(df_auxiliar$proporcao)) {
  
  if (is.na(df_auxiliar$proporcao[i])) {
    df_auxiliar$proporcao[i] <- 1
  }}

df_auxiliar$VL_FOB <- 
  df_auxiliar$`sum(VL_FOB)` * df_auxiliar$proporcao


exportacao_PIA_ajustada <- df_auxiliar[,c("CO_ANO", "Trimestre", "CO_NCM.x", "CO_PAIS", "NO_PAIS", "NO_NCM_POR", "CO_FAT_AGREG", "NO_FAT_AGREG", "SUBSTANCIA", "CNAE.2.3.Secao.Codigo.x", "CNAE.2.3.Secao.Descricao", "VL_FOB")]


# _____ Exportacao_Fat_AGREG ----
Exportacao_Fat_AGREG <- 
  group_by(exportacao_PIA_ajustada, CO_ANO, Trimestre, NO_FAT_AGREG) %>% summarise(sum(VL_FOB))
Exportacao_Fat_AGREG <- 
  spread(Exportacao_Fat_AGREG, key = CO_ANO, value =  `sum(VL_FOB)`)  
#   write.table(Exportacao_Fat_AGREG, "Exportacao_Fat_AGREG.csv", sep = ";", dec = ",", row.names = FALSE, na = "")            


# _____ Exportacao_Substancia ----
Exportacao_Substancia <- 
  group_by(exportacao_PIA_ajustada, CO_ANO, Trimestre, SUBSTANCIA) %>% summarise(sum(VL_FOB))
Exportacao_Substancia$id <- paste(Exportacao_Substancia$CO_ANO,Exportacao_Substancia$Trimestre, sep = "_")
Exportacao_Substancia <- 
  arrange(
    spread(Exportacao_Substancia[,c("id","SUBSTANCIA","sum(VL_FOB)")], key = id, value = `sum(VL_FOB)`),
    desc(`2020_I_Trimestre`))
#   write.table(Exportacao_Substancia, "Exportacao_Substancia.csv", sep = ";", dec = ",", row.names = FALSE, na = "")        

# _____ Exportacao_Pais ----
Exportacao_Pais <- 
  group_by(exportacao_PIA_ajustada, CO_ANO, Trimestre, CNAE.2.3.Secao.Descricao, NO_PAIS) %>% summarise(sum(VL_FOB))
Exportacao_Pais$id <- paste(Exportacao_Pais$CO_ANO,Exportacao_Pais$Trimestre, sep = "_")
Exportacao_Pais <- 
  arrange(
    spread(Exportacao_Pais[,c("id","NO_PAIS", "CNAE.2.3.Secao.Descricao", "sum(VL_FOB)")], key = id, value = `sum(VL_FOB)`),
    desc(`2020_IV_Trimestre`))
#   write.table(Exportacao_Pais, "Exportacao_Pais.csv", sep = ";", dec = ",", row.names = FALSE, na = "")              


# _____ Exportacao_Substancia_Pais ----
Exportacao_Substancia_Pais <- 
  arrange(
  spread(data = 
           group_by(exportacao_PIA_ajustada[exportacao_PIA_ajustada$NO_PAIS %in% unique(Exportacao_Pais$NO_PAIS),], CO_ANO, Trimestre, CNAE.2.3.Secao.Descricao, SUBSTANCIA, NO_PAIS) %>% 
           summarise(sum(VL_FOB)), 
    key = Trimestre, value  = `sum(VL_FOB)`), desc(I_Trimestre))
#   write.table(Exportacao_Substancia_Pais, "Exportacao_Substancia_Pais.csv", sep = ";", dec = ",", row.names = FALSE, na = "")        

# _____ Exportacao_df ----
Exportacao_df <- 
  group_by(exportacao_PIA_ajustada, CO_ANO, Trimestre, CNAE.2.3.Secao.Descricao, CO_NCM.x, NO_NCM_POR, NO_FAT_AGREG,  SUBSTANCIA, CO_PAIS, NO_PAIS) %>% summarise(sum(VL_FOB))

#   write.table(Exportacao_df, "Exportacao_df.csv", sep = ";", dec = ",", row.names = FALSE, na = "")        





