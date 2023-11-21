setwd('C:/Users/Downloads')

require(zip)
require(archive) 
# How to create a folder with r
#$dir.create("C:/Users/Documents/R/data/ZIPPING")
dir('C:/Users/Documents/R/data/CursoR/multiples')
sdf = 'C:/Users/Documents/R/data/CursoR/multiples'
bir = 'C:/Users/Documents/R/data/CursoR'
bir

setwd(bir)
Zip_Files <- list.files(path = getwd(), pattern = ".pdf$")
Zip_Files
  
zip("Este.bz2",files = Zip_Files, compression_level = 9, mode = "mirror")
zip_append("Este.zip",files = Zip_Files, compression_level = 9, mode = "mirror")

zip("Este2.zip",files = Zip_Files, compression_level = 9, mode = "mirror")
zip_append(zipfile = "C:/Users/Documents/R/data/Este2.zip",files = Zip_Files,compression_level = 9, mode = "mirror")


# Add them to a new XZ compressed tar archive
archive_write_files("C:/Users/Documents/R/data/CursoR/multiples/shp.zip", Zip_Files)


# Method One
#Both ways to unzip are reliable.
setwd("C:/Users/Documents/R/data")

Zip_Files <- list.files(path = getwd(), pattern = ".zip$")
Zip_Files
dir.create("C:/Users/Documents/R/data/ZIPPING")
zipF = "try.zip" # lets you choose a file and save its file path in R (at least for windows)

zipF = "C:/Users/Downloads/FullVersion_Setup_2023_As_PassWoRD.rar"
outDir = "C:/Users/Downloads" # Define the folder where the zip file should be unzipped to 
unzip(zipF,exdir=outDir)  # unzip your file 

# 
# Method Two
setwd("C:/Users/Desktop/FinalTest/pwk/Environmental/HycomZYuc")
ZL = zip_list("yucatan_11_2015__8_2016.zip")
Yuc = unzip("yucatan_11_2015__8_2016.zip",files=(pattern=".csv"),exdir=bir)

#
# Method Third 
require(plyr)
YzipF = list.files(path="C:/Users/Documents/R/data",pattern=".zip$", full.names=TRUE)
YzipF
ldply(.data = YzipF, .fun = unzip, exdir = outDir)#"HycomYuc")

# Method Fourth
require(readr)
ZL = zip_list("yucatan_11_2015__8_2016.zip")
df1 = read.csv(unz("yucatan_11_2015__8_2016.zip", "u_finals/A_06_u_.csv"), header = T)
df1

#$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&
#$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&$%&
