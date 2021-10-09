
# Mapbot de España 
🤖🗺️🇪🇦

[![Project Status: Concept – Minimal or no implementation has been done
yet, or the repository is only intended to be a limited example, demo,
or
proof-of-concept.](https://www.repostatus.org/badges/latest/concept.svg)](https://www.repostatus.org/#concept)
[![](https://img.shields.io/badge/Twitter-@esmapbot-white?style=flat&labelColor=blue&logo=Twitter&logoColor=white)](https://twitter.com/esmapbot)


⚠️ PRÓXIMAMENTE ⚠️


[![rostrum.blog post](https://img.shields.io/badge/rostrum.blog-post-008900?style=flat&labelColor=black&logo=data:image/gif;base64,R0lGODlhEAAQAPEAAAAAABWCBAAAAAAAACH5BAlkAAIAIf8LTkVUU0NBUEUyLjADAQAAACwAAAAAEAAQAAAC55QkISIiEoQQQgghRBBCiCAIgiAIgiAIQiAIgSAIgiAIQiAIgRAEQiAQBAQCgUAQEAQEgYAgIAgIBAKBQBAQCAKBQEAgCAgEAoFAIAgEBAKBIBAQCAQCgUAgEAgCgUBAICAgICAgIBAgEBAgEBAgEBAgECAgICAgECAQIBAQIBAgECAgICAgICAgECAQECAQICAgICAgICAgEBAgEBAgEBAgICAgICAgECAQIBAQIBAgECAgICAgIBAgECAQECAQIBAgICAgIBAgIBAgEBAgECAgECAgICAgICAgECAgECAgQIAAAQIKAAAh+QQJZAACACwAAAAAEAAQAAAC55QkIiESIoQQQgghhAhCBCEIgiAIgiAIQiAIgSAIgiAIQiAIgRAEQiAQBAQCgUAQEAQEgYAgIAgIBAKBQBAQCAKBQEAgCAgEAoFAIAgEBAKBIBAQCAQCgUAgEAgCgUBAICAgICAgIBAgEBAgEBAgEBAgECAgICAgECAQIBAQIBAgECAgICAgICAgECAQECAQICAgICAgICAgEBAgEBAgEBAgICAgICAgECAQIBAQIBAgECAgICAgIBAgECAQECAQIBAgICAgIBAgIBAgEBAgECAgECAgICAgICAgECAgECAgQIAAAQIKAAA7)](https://www.rostrum.blog/2020/09/21/londonmapbot/)

Código fuente del bot de Twitter [@esmapbot](https://www.twitter.com/esmapbot). que postea imágenes aéreas aleatorias de España junto a sus cordenadas. Hace uso de de [{rtweet}](https://docs.ropensci.org/rtweet/), [MapBox](https://www.mapbox.com/) y [GitHub Actions](https://docs.github.com/en/actions). 

Construido originalmente por [@mattdray](https://twitter.com/mattdray), este bot es un fork de su repositorio oficial de GitHub y adaptado con la ayuda del post de su blog. 



# What

This repo contains a [GitHub Action](https://github.com/features/actions) that runs on schedule (currently every two hours). It executes R code that queries [the Mapbox API](https://docs.mapbox.com/api/maps/#static-images) for a satellite image of random co-ordinates in a bounding box roughly around Greater London and within the M25 motorway. The image is posted to [@londonmapbot](https://www.twitter.com/londonmapbot) on Twitter using [{rtweet}](https://docs.ropensci.org/rtweet/), along with a URL for that location on [OpenStreetMap](https://www.openstreetmap.org/).

See also the:

* [blog post](https://www.rostrum.blog/2020/09/21/londonmapbot/)
* [BotWiki page](https://botwiki.org/bot/londonmapbot/)
* [the rOpenSci {rtweet} use-case page](https://discuss.ropensci.org/t/a-twitter-bot-with-rtweet-mapbox-and-github-actions/2223).

## The 'mapbotverse'

Other bots that have taken inspiration from londonmapbot:

* [@vambot2](https://twitter.com/vambot2) by [@DEJPett](https://twitter.com/DEJPett)
* [@italiancomuni](https://twitter.com/italiancomuni) by [@espinielli](https://twitter.com/DEJPett)
* [@BotAtlanta](https://twitter.com/BotAtlanta) by [@jaycromwell12](https://twitter.com/jaycromwell12)
* [@narrowbotR](https://twitter.com/narrowbotR) by [@mattkerlogue](https://twitter.com/mattkerlogue)
* [@canberramapbot](https://twitter.com/canberramapbot) by [@rexarski](https://twitter.com/rexarski)

## Quick how to

See [the accompanying blog post](https://www.rostrum.blog/2020/09/21/londonmapbot/) for details, but in short:

1. Create a Twitter account for your bot
1. Sign up for developer status with [Twitter](https://developer.twitter.com/en/apply-for-access) and [MapBox](https://www.mapbox.com/)
1. Fork this repo, or click the green '[use this template](https://github.com/matt-dray/londonmapbot/generate)' button
1. Get your API keys from MapBox and Twitter and add them as [GitHub secrets](https://docs.github.com/en/actions/reference/encrypted-secrets) to your repo
1. Edit the `lat` and `lon` variables in the `londonmapbot-tweet.R` file to provide a bounding box around your location to sample coordinates from
1. Adjust the `.github/workflows/londonmapbot.yml` file to adjust [the cron schedule](https://crontab.guru/#0,30_*_*_*_*) if you want
1. GitHub Actions will recognise the .yml file and execute the code on schedule

# Image credits

Posted images are copyright of Mapbox/OpenStreetMap/Maxar. This information is embedded in every image.
