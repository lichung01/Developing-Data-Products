---
title       : Developing Data Products
subtitle    : Building Body Mass Index (BMI) calculator
author      : HLC
job         :  
logo:                       # save image file in the directory ./assets/img
framework   : io2012        # {io2012, html5slides, shower, dzslides, revealjs, ...}
theme: default
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # {tomorrow, default}
widgets     : mathjax       # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---


## <span style="color:blue">Description of Body Mass Index (BMI)</span>

The BMI is an attempt to quantify the amount of tissue mass (muscle, fat, and bone) in an individual, and then categorize that person as underweight, normal weight, overweight, or obese based on that value. 

- <span style="color:red"> World Health Organisation BMI information can be classified below:</span>
    +  BMI < 16.00                 :   Severe Thinness
    +  BMI between 16.00 - 16.99   :   Moderate Thinness
    +  BMI between 17.00 - 18.49   :   Mild Thinness
    +  BMI between 18.50 - 24.99   :   Normal Weight
    +  BMI between 25.00 - 29.99   :   Overweight
    +  BMI between 30.00 - 34.99   :   Obese I
    +  BMI between 35.00 - 39.99   :   Obese II
    +  BMI > 40.00                 :   Obese III

--- .class #id 

## <span style="color:blue">Measuring BMI</span>

The BMI is defined as the body mass divided by the square of the body height, and is universally expressed in units of kg/metre square, resulting from mass in kilograms and height in metres.

<span style="color:red">BMI Formula = Weight / $Height^2$</span>

Using an example of height 1.72m and weight 65kg of a person:

```r
height <- 1.72
weight <- 65
BMI <- weight / height^2
BMI
```

```
## [1] 21.97134
```


---

## <span style="color:blue">Function for BMI</span>

- The function to return BMI result to user is quoted in 'r' below:

```r
BMI <- function(height, weight) {weight/(height^2)}
return_analysis <- function(height, weight){
      BMI_value <- weight/(height^2)
      ifelse(BMI_value < 16,"severe thinness",
      ifelse(BMI_value < 17,"moderate thinness",
      ifelse(BMI_value < 18.5,"mild thinness",
      ifelse(BMI_value < 25,"normal weight",
      ifelse(BMI_value < 30,"overweight",
      ifelse(BMI_value < 35,"obese Class I",
      ifelse(BMI_value < 40,"obese Class II","obese Class III")))))))
}
```


---

## <span style="color:blue">BMI and lifestyle?</span>

While the BMI tool is fairly reliable tool to evaluating a person's health status. It is important to take other measures like blood pressure, cardiac health, physical inactivity and abdominal girth. We need to keep in mind that BMI does not distinguish between muscle mass and fat mass. A particularly athletic person whose weight is higher due to muscle may have a BMI that indicates that they are overweight, when their weight is simply higher due to muscle mass instead of fat mass.

- <span style="color:red">To ensure a healthy lifestyle, we recommended four steps below:</span>

    + Being physically active.
    + Making healthy food choices.
    + Avoiding overeating.
    + Scheduling an annual physical examination.

These are the vital parts to maintaining a long and healthy life.
