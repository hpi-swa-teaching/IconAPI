# IconAPI

Group 3 SWT 2021

[![CI](https://github.com/hpi-swa-teaching/IconAPI/workflows/CI/badge.svg?branch=main)](https://github.com/hpi-swa-teaching/IconAPI/actions)
[![Coverage Status](https://coveralls.io/repos/github/hpi-swa-teaching/IconAPI/badge.svg?branch=main)](https://coveralls.io/github/hpi-swa-teaching/IconAPI)

## Icon Erstellung

Ein Icon wird über eine neue Instanziierung der IconMorph Klasse erstellt. Mit der Methode "id" kann anschließend die Identifikation des Icons gesetzt werden, um ein bestimmtes Bild aus dem jeweiligen Fetcher darzustellen. 
![Icon Erstellen](https://github.com/hpi-swa-teaching/IconAPI/blob/339628a60bd998fc545d2fa4d066f43ffb1945c2/images/IconCreation.png)

## Example Tool

Als Anwendungsbeispiel des Toolbuilders, auf dem unsere IconApi beruht, haben wir ein Example Tool bereit gestellt, was wie folgt geöffnet wird.

![Example Tool Beispiel](https://github.com/hpi-swa-teaching/IconAPI/blob/0b3f374afc790671420c0a300c7aabddf1d91d5c/images/exampletool_creation.png)

## Attribute

In der IconAPI können einige Attribute bestimmt werden. So kann man zum Beispiel die Icon Farbe ändern, oder auch die Hintergrundfarbe eines Icons. Auch die Invertierung der Farbe ist möglich. 

![Icon- und Hintergrundfarbe](https://github.com/hpi-swa-teaching/IconAPI/blob/c12a5890bb0d58fef82188a6cd7c7255974c43a0/images/color_setting.png)

## Fetcher

Die IconAPI unterstützt verschieden Fetcher. Zum jetzigen Zeitpunkt sind Interfaces für die Iconbibliotheken [MaterialIcons](https://fonts.google.com/icons) und [Icon-Icons](https://icon-icons.com/) implementiert. Der MaterialIconsfetcher ist dabei der Defaultfetcher. Im folgenden Bild kann man sehen, wie ein anderer Fetcher zugeordnet werden kann. 
Die Fetcher sind dabei unterteilt in den LocalFetcher und die HTTPIcon Fetcher, die beide mit dem Strategy Pattern von der Elternklasse IconFetchStrategy erben. Möchte man eine neue Bibliothek einbinden, so kann man einfach die Funktionalitäten des HTTPIconFetchers übernehmen.

![Fetcher-Switch](https://github.com/hpi-swa-teaching/IconAPI/blob/d845a6a8d1819feae998e1f1f8b31240c67810ab/images/fetcher_switch.png)
![Fetcher Strategy](https://github.com/hpi-swa-teaching/IconAPI/blob/2a37b5c794aa3cebb34d7a1e6f777da581d58cdd/images/FetchStrategy.png)
