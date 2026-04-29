df <- read.csv("insurance.csv")

head(df)

summary(df)

df[df$sex == "male" , ]

erkek <- df[df$sex == "male" ,]

View(erkek)

table(df$sex)

kadin <- df[df$sex == "female" , ]

View(kadin)

colSums(is.na(df))

install.packages("ggplot2")
install.packages("tidyverse")
library(tidyverse)



plot_yas_dagilim <- ggplot(df, aes(x = age)) +
  
  geom_histogram(binwidth = 5 ,
                 fill = "blue" ,
                 color = "white" ,
                 alpha = 0.8) +
  labs(title = "Yaş Dağılımı" ,
       x = "Yaş" ,
       y = "Kişi Sayısı") +
  theme_light()

plot_children_hist <- ggplot (df ,aes(x = children))+
  geom_histogram(binwidth = 1 ,
                 fill="pink" ,
                 color = "red",
                 alpha = 0.8) +
  labs(title = "çocuk sayısı dağılım grafiği" ,
       x = "çocuk sayısı" ,
       y = "Kişi Sayısı") +
  theme_light()

plot_children_hist

plot_expenses_hist <- ggplot (df ,aes(x = expenses))+
  geom_histogram(binwidth = 5000 ,
                 fill="blue" ,
                 color = "orange",
                 alpha = 0.8) +
  labs(title = "maliyet dağılımı" ,
       x = "maliyetler($)" ,
       y = "kişi sayısı") +
  theme_light()

plot_expenses_hist

plot_bmi_hist <- ggplot(df, aes(x = bmi)) +
  geom_histogram(binwidth = 2, 
                 fill = "#ff7f0e", 
                 color = "white", 
                 alpha = 0.8) +
  labs(title = "Vücut Kitle İndex (VKİ) Dağılımı", 
       x = "VKİ", 
       y = "Kişi Sayısı") +
  theme_grey()

plot_bmi_hist

library(patchwork)

(plot_yas_dagilim ) + (plot_children_hist + plot_expenses_hist) + (plot_bmi_hist)

plot_sex_bar <- ggplot(df, aes(x = sex, fill = sex)) +
  geom_bar() +
  labs(title = "Cinsiyet Dağılımı",
       x = "Cinsiyet",
       y = "Kişi Sayısı") +
  theme_light() +
  theme(legend.position = "none")

plot_sex_bar

plot_smoker_bar <- ggplot(df, aes(x = smoker, fill = smoker)) +
  geom_bar() +
  scale_fill_manual(values = c(
    "no" = "#2ca02c",
    "yes" = "#d62728")) +
  labs(title = "Sigara icme durumu",
       x = "Sigara iciyor mu",
       y = "Kişi sayısı") +
  theme_light() +
  theme(legend.position = "none")

plot_smoker_bar

plot_region_bar <- ggplot(df, aes(x = region, fill = region)) +
  geom_bar() +
  scale_fill_manual(values = c(
    "southwest" = "#1f77b4",
    "southeast" = "#ff7f0e",
    "northwest" = "#2ca02c",
    "northheast" ="#9467bd" 
    )) +
  labs(title = "bölgelere göre dağılım",
       x = "bölge",
       y = "Kişi sayısı") +
  theme_light() +
  theme(legend.position = "none")

plot_region_bar

(plot_sex_bar + plot_smoker_bar) + plot_region_bar

read.csv("insurance.csv", fileEncoding = "UTF-8")

read.csv("insurance.csv", fileEncoding = "latin5")











