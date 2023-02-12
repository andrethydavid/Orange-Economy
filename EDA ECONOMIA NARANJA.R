# EDA scaterplot  orangecc

plot(orangeec$Unemployment ~ orangeec$Education.invest...GDP,
     xlab ='Inversion Educacion (%PIB)',ylab ='Desempleo',
     main='Relacion entre Inversion  en educaion y desempleo')

plot(orangeec$GDP.PC ~ orangeec$Creat.Ind...GDP,
     xlab ='Aporte economia naranja al (%PIB)',ylab ='Pib percapita',
     main='Relacion econocia naranja y PIB per capita')

# EDA con dataset proyecto - histogramas - ggplot2


gplot() + geom_histogram(data=orangeec,
                         aes(x=Creat.Ind...GDP), fill = 'blue', color = 'red',
                         binwidth = 1)+
  labs(x='Aporte Economia naranja al PIB(%)',
       y='Contribucion de energia naranja al PIB en LATAM',
       title= 'PIB per cápita en paises latam')+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

ggplot() + geom_histogram(data=orangeec,
                          aes(x=Internet.penetration...population), fill = 'red', color = 'yellow',
                          binwidth = 5)+
  labs(x='Penetración Internet (%) Población',
       y='Cantidad de paises',
       title= 'Penetracion de Internet en paises latam')+
  scale_x_continuous(breaks = seq(40,max(100),5))+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())


library(plotly)
my_graph <- ggplot(orangeec, aes(Internet.penetration...population,
                                 Creat.Ind...GDP, label=orangeec$Country))+
  geom_point()+
  labs(x="Penetración Internet", y="Aporte economia naranja",
       title = "Penetración Internet y aporte economia naranja")
my_graph
p = ggplotly(my_graph)
p


