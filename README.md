## Population and Economic Impact of Natural Disasters in USA between 2000 and 2010

### Objective
Provide an interactive application demonstrating the use of shiny and allow an interested reader to visualize the impact of natural disasters on US population and economy during the 2000-2010 decade.

### Data
Data used for this shiny application has been obtained via Coursera Reproducible Research Course and its original source is U.S. National Oceanic and Atmospheric Administration's (NOAA) Storm Database. 

### References and Merits
I reused some of the source code written for the peer assignment of the Coursera Reproductible Research Course, however, I eliminated functionality irelevant for this assignment and added shiny and rCharts spefic code.

I am certain that others attending the Data Products class may have used the same data set. I thought to use NYSE data set, but I could not finish an interesting analysis in the time I had available and decided to use something more familiar.

### How to Run
Clone locally https://github.com/cstanca1/naturaldisastersimpact.
Start your R-Studio and set working directory to the folder where you copied this project artifacts.
Execute with: runApp()

### How to Use
Select the date range (between 2000 and 2010) and event types from the left panel. By default all events are selected. In a future release, I will add "Select All / Unselect All" capability, until then events need to be selected/unselected one by one, sorry. On the right panel, you can choose to see the impact by State or Year and filter by impact type. For the best view, please maximize the window.

