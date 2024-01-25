---
  title: Overview
---
  
  # Web Application {#sec-introduction}
  
  ~~For the web application, no installation is necessary. Simply go to https://lavaangui.org. The web application requires a modern browser but unfortunately does not work with Safari. It is continuously being tested on Chrome, Firefox, and Edge. It has been most extensively tested using Chrome, which we recommend if you have the choice.~~
  
  # R Package
  
  ## Installation
  
  You can install the latest version of the R package via the following commands.

```{r, eval = FALSE, echo = TRUE}
if (!requireNamespace("remotes", quietly = TRUE)) {
  install.packages("remotes")
}
remotes::install_github("karchjd\lavaangui")
```

You will also need a modern web browser, which typically should already be installed on your system. However, note that Safari is not supported, as explained in  @sec-introduction.

## `start_gui`

You can start the `lavaangui` web application by typing 

```{r, eval = FALSE}
start_gui()
```

into your R console.

Alternatively, you can also use the command `start_gui(fit)`, where `fit` is any supported fitted lavaan object. This will initialize the web application with the model and data contained in fit. For example, the following code initializes the web application with a three factor model.

```{r, eval = FALSE}
library(lavaan)
HS.model <- ' visual  =~ x1 + x2 + x3
              textual =~ x4 + x5 + x6
              speed   =~ x7 + x8 + x9 '

fit <- cfa(HS.model, data = HolzingerSwineford1939)
start_gui(fit)
```

## `plot_interactive`

If you only want an interactive visualization of your fitted `lavaan` model, we recommend the `plot_interactive(fit)` function. This disables all facilities of modifying or refitting the model and if you are using Rstudio displays the model directly in Rstudio. For example, the following code plots a three factor model.

```{r, eval = FALSE}
library(lavaan)
HS.model <- ' visual  =~ x1 + x2 + x3
              textual =~ x4 + x5 + x6
              speed   =~ x7 + x8 + x9 '

fit <- cfa(HS.model, data = HolzingerSwineford1939)
plot_interactive(fit)
```