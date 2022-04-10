# España desde el cielo 🛰️🇪🇦

<img src="https://i.imgur.com/OiC71jl.png" width="400" height="200" text-align: center></div>

[![](https://img.shields.io/badge/SIgue_a_@esmapbot-white?style=for-the-badge&labelColor=blue&logo=Twitter&logoColor=white)](https://twitter.com/esmapbot)

### 🤖

Código fuente del bot de Twitter [@esmapbot](https://www.twitter.com/esmapbot) que postea diariamente una imagen de satélite aleatoria de España junto a su municipio y provincia 📍 y un enlace al lugar en Google Maps 🗺.

Construido originalmente por [@mattdray](https://twitter.com/mattdray), este bot es una adaptación de su [@londonmapbot](https://twitter.com/londonmapbot) hecha por Rober J ([@roberer_](https://www.twitter.com/roberer_)). 

Inicialmente, las coordenadas se generaban aleatoriamente entre los rangos delimitados por una bounding box de Londres. Aplicar este método a España daba lugar a que muchas veces las imágenes correspondieran al mar, a Francia o a Portugal, y al incorporar las islas resultaba aún más problemático.

En su lugar, este bot obtiene las coordenadas a partir de un punto generado aleatoriamente dentro de un polígono almacenado en un archivo geojson con las fronteras de España, para lo cual el paquete sf de R ha sido fundamental.

Además, he añadido aleatoriedad al nivel de zoom con el que se obtienen las imágenes y he adaptado su tamaño a un formato vertical (600x900) para una mejor lectura desde el teléfono.

Tanto las imágenes como las direcciones provienen de MapBox.


## Librerías 

* [{rtweet}](https://docs.ropensci.org/rtweet/)
* [Simple Features for R](https://github.com/r-spatial/sf/)
* [MapBox Static Images API](https://docs.mapbox.com/api/maps/static-images/)
* [MapBox geocoding API](https://docs.mapbox.com/help/glossary/geocoding-api/)
* [GitHub Actions](https://docs.github.com/en/actions) 


## Sígueme!
[![](https://img.shields.io/badge/.github.io-black?style=for-the-badge&logo=github)](https://roberer.github.io)[![](https://img.shields.io/badge/@roberer_-white?style=for-the-badge&labelColor=blue&logo=Twitter&logoColor=white)](https://twitter.com/roberer_)[![](https://img.shields.io/badge/Roberto-blue?style=for-the-badge&logo=linkedin)](https://linkedin.com/in/robertojl)
