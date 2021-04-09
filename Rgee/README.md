<h1 align="center">
  <br>
  Introducción a Google Earth Engine con R
  <br>
<h1>
  
## rgee: An R package for interacting with Google Earth Engine

##### **Cesar Aybar** , Qiusheng Wu , Lesly Bautista , Roy Yali , and Antony Barja

<h1 align="center">
  <br>
  <a href="https://r-spatial.github.io/rgee/"><img src="https://raw.githubusercontent.com/r-spatial/rgee/master/man/figures/logo.png" alt="Markdownify" width="187"></a>
  <a href="https://twitter.com/EffrainMu/status/1300003182064496641/photo/1"><img src="https://pbs.twimg.com/media/EgqKANjVkAEVDtb?format=jpg&name=large" alt="Markdownify" width="700"></a>
  <br>
</h1>

## 1. ¿Qué es GEE? 
**Google Earth Engine** (GEE) es una plataforma gratis en la nube que esta diseñada para el análisis de datos espaciales a una escala planetaria que incorpora las capacidades computacionales masivas de Google. Esta plataforma integrada está diseñada para potenciar no solo a los científicos tradicionales de teledetección, sino también a una audiencia mucho mas amplia que carece de capacidad técnica necesaria para utilizar supercomputadoras tradicionales o recursos de computación en la nube de productos básicos a gran escala.
<table  align="center">
  <tr>
    <th> GEE </th>
    <th> Otros </th>
  <tr>
  <td>
  <a href="https://icon-icons.com/es/icono/google-tierra-motor/104576"><img src="https://cdn.icon-icons.com/icons2/1508/PNG/512/googleearth-engine_104576.png" alt="Markdownify" width="187"></a>
  </td>
  <td>
  <a href="https://architecht.io/what-happened-to-hadoop-211aa52a297"><img src="https://miro.medium.com/max/2760/1*kPKoXmHBDmGthbah-0549A.png" alt="Markdownify" width="187"></a>     
  <a href="https://en.wikipedia.org/wiki/File:Logo_terralib_index.png"><img src="https://upload.wikimedia.org/wikipedia/commons/1/18/Logo_terralib_index.png" alt="Markdownify" width="99"></a>
    <a href="https://www.osgeo.org/projects/rasdaman/"><img src="https://www.osgeo.org/wp-content/uploads/rasdaman_logo-1-370x206.png" alt="Markdownify" width="150"></a>
    <a href="https://uspto.report/TM/87768483"><img src="https://uspto.report/TM/87768483/mark" alt="Markdownify" width="190"></a>
  </td>
  </td>
<table>
  
## 2. Funcionamiento de rgee

![image](https://user-images.githubusercontent.com/51866276/112390475-628fc500-8cc4-11eb-9105-8d0f107f19dc.png) 


## 3. Sintaxis de rgee

<table>
<tr>
<th> JS (Code Editor) </th>
<th> Python </th>
<th> R </th>
</tr>
<tr>
<td>
  
``` javascript
var db = 'CGIAR/SRTM90_V4'
var image = ee.Image(db)
print(image.bandNames())
#> 'elevation'
```

</td>
<td>

``` python
import ee
ee.Initialize()
db = 'CGIAR/SRTM90_V4'
image = ee.Image(db)
image.bandNames().getInfo()
#> [u'elevation']
```

</td>
<td>

``` r
library(rgee)
ee_Initialize()
db <- 'CGIAR/SRTM90_V4'
image <- ee$Image(db)
image$bandNames()$getInfo()
#> [1] "elevation"
```
</td>
</tr>
</table>

## 4. GEE- API

![image](https://user-images.githubusercontent.com/51866276/112393470-1bf09980-8cc9-11eb-9f2e-c207065c6f02.png)

## 5. instalación de rgee

Si utilizas la versión 4.0 en el sistema operativo de Windows, de preferencia es recomendable tener instalado [Rtools](https://cran.r-project.org/bin/windows/Rtools/). 

Para poder instalar **rgee** primero debemos instalar las librerías **remotes** y **rstudioapi**

``` r
install.packages('remotes')
install.packages('rstudioapi')
install.packages('rgee') 
```
### instalamos los paquetes de rgee
```r 
library(rgee)
ee_install()
```
  ##### intalando miniconda
  ``` r
  Would you like to install Miniconda? [Y/n]: Y
  * Downloading "https://repo.anaconda.com/miniconda/Miniconda3-latest-Windows-x86_64.exe" ...
  probando la URL 'https://repo.anaconda.com/miniconda/Miniconda3-latest-Windows-x86_64.exe'
  Content type 'application/octet-stream' length 59801432 bytes (57.0 MB)
  downloaded 57.0 MB
  ![image](https://user-images.githubusercontent.com/51866276/112393901-cc5e9d80-8cc9-11eb-9503-041e8a0f43ad.png)

  ```
  ``` r
  # To activate this environment, use
  #
  #     $ conda activate r-reticulate
  #
  # To deactivate an active environment, use
  #
  #     $ conda deactivate

  * Miniconda has been successfully installed at "C:/Users/Junior/AppData/Local/r-miniconda".
  
  ```
``` r
1. Removing the previous Python Environment (rgee), if it exists ...

2. Creating a Python Environment (rgee)
Collecting package metadata (current_repodata.json): ...working... done
Solving environment: ...working... done

rgee::ee_install want to store the environment variables: EARTHENGINE_PYTHON 
and EARTHENGINE_ENV in your .Renviron file to use the Python path:
C:\Users\Junior\AppData\Local\r-miniconda\envs\rgee\python.exe in future sessions.


Would you like to continues? [Y/n]:Y


3. The Environment Variable 'EARTHENGINE_PYTHON=C:\Users\Junior\AppData\Local\r-miniconda\envs\rgee\python.exe' 
was stored in the .Renviron file. Remember that you
could remove EARTHENGINE_PYTHON and EARTHENGINE_ENV using
rgee::ee_clean_pyenv().

4. Installing the earthengine-api. Running: 
reticulate::py_install(packages = 'earthengine-api', envname = 'C:/Users/Junior/AppData/Local/r-miniconda/envs/rgee')

```
``` r
Well done! rgee was successfully set up in your system.
You need restart R to see changes. After doing that, we recommend
run ee_check() to perform a full check of all non-R rgee dependencies.
Do you want restart your R session? 

1: yes
2: no

>1
```
