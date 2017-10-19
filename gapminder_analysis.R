###Software Carpentry Workshop###
##Day 1##


download.file("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder-FiveYearData.csv", destfile = "data/gapminder-FiveYearData.csv")

gapminder <- read.csv("data/gapminder-FiveYearData.csv")
mean(gapminder$lifeExp)

max(gapminder$year)

gapminder$year ==2007
gapminder2007 <- gapminder[gapminder$year == 2007,]
mean(gapminder2007$lifeExp)


min(gapminder$year)


gapminder1952 <- gapminder[gapminder$year == 1952,]
mean(gapminder1952$lifeExp)


plot(gapminder$lifeExp,gapminder$gdpPercap)

#start of ggplot2 section

install.packages("tidyverse")
library(tidyverse)
library(ggplot2)

ggplot(data = gapminder, aes(x=gdpPercap,y=lifeExp))+geom_point()
ggplot(data = gapminder, aes(x=year,y=lifeExp))+geom_point()

ggplot(data = gapminder, aes(x=year,y=lifeExp,by=country,color=continent))+geom_point()+geom_line()


ggplot(data = gapminder[gapminder$continent=="Americas",], aes(x=gdpPercap,y=lifeExp,color=continent,by=country))+
    geom_point()+
    scale_x_log10()+
    geom_smooth(method = "lm")+
    facet_wrap(~country)+
    xlab("Gross Domestic Product")+
    ylab("Life Expectancy")

install.packages("plotly")
library(plotly)

#interactive plotting with plotly
if(!require("plotly")){install.packages("plotly")}
library(plotly)

p <- ggplot(data = gapminder[gapminder$continent=="Americas",], aes(x=gdpPercap,y=lifeExp,color=continent,by=country))+
  geom_point()+
  scale_x_log10()+
  geom_smooth(method = "lm")+
  facet_wrap(~country)+
  xlab("Gross Domestic Product")+
  ylab("Life Expectancy")

p
ggplotly(p)


#making nice labels

p+labs(x="GDP per Capita",y="Life Expectancy (y)",
  title="Figure 1")+
  scale_color_discrete(name="Continent")




################## Day 2 #############

# Making your own functions

se <- function(x){
    sd(x)/sqrt(length(x))
  }

 # Data manipulation with `dplyr`
  
  # Data manipulation with `tidyr`
  
  