# Mapbot de España 

<img src="@esmapbot.png" width="400" height="200" text-align: center></div>

[![](https://img.shields.io/badge/@esmapbot-white?style=for-the-badge&labelColor=blue&logo=Twitter&logoColor=white)](https://twitter.com/esmapbot)
[![](https://img.shields.io/badge/Wordpress-white?style=for-the-badge&labelColor=grey&logo=wordpress&logoColor=white)](https://programapa.wordpress.com/2021/10/15/mapbot-esp/)


### 🤖🛰️🇪🇦



Código fuente del bot de Twitter [@esmapbot](https://www.twitter.com/esmapbot) que postea cada cuatro horas una imagen de satélite aleatoria de España junto a sus coordenadas lat/lon WGS 84 🌐, su dirección 📍 y un enlace al lugar en OpenStreetMap 🗺.

Construido originalmente por [@mattdray](https://twitter.com/mattdray), este bot es una adaptación de su [@londonmapbot](https://twitter.com/londonmapbot) hecha por RoberJ ([@progra_mapa](https://www.twitter.com/progra_mapa)). 

## Librerías 

* [{rtweet}](https://docs.ropensci.org/rtweet/)
* [Simple Features for R](https://github.com/r-spatial/sf/)
* [MapBox Static Images API](https://docs.mapbox.com/api/maps/static-images/)
* [mymappi Geocoding API](https://mymappi.com/es/geocoding/)
* [GitHub Actions](https://docs.github.com/en/actions) 


## Nuevas características
Modificaciones respecto al código del [repositorio original](https://github.com/matt-dray/londonmapbot):

* Las coordenadas se obtienen a partir de un punto generado aleatoriamente dentro de una capa geojson con las fronteras terrestres de España
* Se ha añadido aleatoriedad en el nivel de zoom con el que se realizan las peticiones de imágenes
* Ahora también comparte la dirección del lugar mediante la geocodificación inversa de las coordenadas 







