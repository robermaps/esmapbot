# Mapbot de España 

<img src="@esmapbot.png" width="400" height="200" text-align: center></div>

[![](https://img.shields.io/badge/FOLLOW_@esmapbot-white?style=for-the-badge&labelColor=blue&logo=Twitter&logoColor=white)](https://twitter.com/esmapbot)
[![](https://img.shields.io/badge/leer_en_Wordpress-white?style=for-the-badge&labelColor=grey&logo=wordpress&logoColor=white)](https://programapa.wordpress.com/2021/10/15/mapbot-esp/)


### 🤖🛰️🇪🇦



Código fuente del bot de Twitter [@esmapbot](https://www.twitter.com/esmapbot) que postea cada cuatro horas una imagen de satélite aleatoria de España junto a sus coordenadas lat/lon WGS 84 🌐, su dirección 📍 y un enlace al lugar en Google Maps 🗺.

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
* Ahora también comparte la dirección del lugar mediante la geocodificación inversa de las coordenadas. Se devuelve el mensaje "¿Adivinas?" en caso de que la API devuelva valor nulo
* El enlace ahora te lleva al lugar en Google Maps en vez de a OpenStreetMap
* Se ha modificado la resolución de las imágenes a 600 x 900 píxeles, adaptándolas así al formato vertical de los teléfonos móviles


________________________________________________________________


### ENGLISH 🇬🇧



Source code of Twitter bot [@esmapbot](https://www.twitter.com/esmapbot) which posts every four hours a random satellite image of Spain accompanied by its lat/lon WGS 84 coordinates 🌐, its address 📍 and a link to that location in Google Maps 🗺.

By RoberJ ([@progra_mapa](https://www.twitter.com/progra_mapa)) based on [@mattdray](https://twitter.com/mattdray)'s work with his [@londonmapbot](https://twitter.com/londonmapbot).

## Libraries

* [{rtweet}](https://docs.ropensci.org/rtweet/)
* [Simple Features for R](https://github.com/r-spatial/sf/)
* [MapBox Static Images API](https://docs.mapbox.com/api/maps/static-images/)
* [mymappi Geocoding API](https://mymappi.com/es/geocoding/)
* [GitHub Actions](https://docs.github.com/en/actions) 


## New features
Changes from source code at [original repo](https://github.com/matt-dray/londonmapbot):

* Coordinates are now taken from randomly generated points inside Spain's terrestrial boundary limits stored in a geojson file.
* Zoom level randomness was added to image requests
* Inverse geocoding of coordinates to get adresses. A predefined message substitute null values returned from the API.
* The location link now redirects to Google Maps instead of OpenStreetMap
* Image size request has been changed to 600 x 900 for a better mobile experience 







