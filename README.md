# Tasmanian Pacific Oyster mortality data and temperatures

Data for generating high temperature risks on Pacific oyster disease and mortality at Pipe Clay Lagoon, Upper and Lower Pittwater in Tasmania.

This dataset includes three sources of temperatures: in-situ seawater temperatures, in-situ air temperatures, and satellite sea surface temperature (SST); and daily Pacific oyster mortality observations:

In-situ water emperature was measured in Crawford and Ugalde (2019) at fixed positions near the water surface, being detected either as water or air temperature because of tides. Air temperature at Hobart Airport, Tasmania, Australia is provided by the Australian Bureau of Meteorology, and is available via http://www.bom.gov.au/climate/dwo/IDCJDW7022.latest.shtml. Group for High Resolution Sea Surface Temperature (GHRSST) Level 4 Multiscale Ultrahigh Resolution (MUR) Global Foundation SST Analysis is available at https://podaac.jpl.nasa.gov/dataset/MUR-JPL-L4-GLOB-v4.1.
Pacific Oyster disease and mortality data was recorded daily through direct observations by experienced oyster farmers in Pipe Clay Lagoon and separately for Upper and Lower Pittwater. 

The in-situ water temperature data were first converted to 2-hourly means, partly to smooth any short and large temperature variations, but also to resolve short periods of missing data. To fill missing data in periods > 2 hours and correct a 3-month period of erroneous temperature readings in Pipe Clay during early 2018, the alternative data was from floating sensors (sensors detecting sea surface temperature) was used. 

## Location abbrevation
| Abbrevation| Full Name |
|-----:|---------------|
| PC | Pipe Clay Logoon |
| UPW | Upper Pittwater |
| LPW | Lower Pittwater |
| BoM | Bureau of Meterology |

## Time
| Period |
|---------------|
| 11/2016-04/2017 |
| 11/2017-04/2018 |
| 11/2018-04/2019 |

## Data files
| File | Description |
|-----:|---------------|
| PCRawTemp.csv | Raw water temperature in PC from the Yield sensors in 10-min resolution. (Include error and missing data) |
| PC201718FloatRawTemp.csv | Raw water temperature in PC from the Floating sensors in 30-min resolution. (Only for 14/11/2017-21/03/2018) |
| PWRawTemp.csv | Raw water temperature in UPW and LPW from the Yield sensors in 10-min resolution. (Include missing data) |
| PW201718FloatRawTemp.csv | Raw water temperature in UPW and LPW from the Floating sensors in 30-min resolution. (Only for 01/02/2018-28/02/2018; The 2-hourly means are calculated by averaging every 12 pieces of 10-min data or 4 pieces of 30-min data) |
| PC2hourlymean_dailytemp.csv | Daily min/mean/max water temperatures in PC by averaging the 2-hourly means (The 2-hourly means are calculated by averaging every 12 pieces of 10-min data or 4 pieces of 30-min data) |
| PW2hourlymean_dailytemp.csv | Daily min/mean/max water temperatures in UPW and LPW by averaging the 2-hourly means (The 2-hourly means are calculated by averaging every 12 pieces of 10-min data or 4 pieces of 30-min data) |
| PCsatelliteSST.csv | Daily SST averaged in 10x10 grid points around PC extracted from GHRSST Level 4 MUR Global Foundation SST Analysis |
| UPWsatelliteSST.csv | Daily SST averaged in 10x10 grid points around UPW extracted from GHRSST Level 4 MUR Global Foundation SST Analysis |
| LPWsatelliteSST.csv | Daily SST averaged in 10x10 grid points around LPW extracted from GHRSST Level 4 MUR Global Foundation SST Analysis |
| BoMRawTemperature.csv | In-situ air temperature observation from BoM in 30-min resolution |
| BoM2hourlymean_dailytemp.csv | Daily min/mean/max air temperatures from BoM by averaging the 2-hourly means |
| MortalityData.csv | Daily mortality data in 3 levels. (0: no disease signal; 1: some sign of disease and low mortality; 2: higher-than-expected mortality) |

# References
Crawford, C., Ugalde, S., 2019. Future oysters CRC-P: Advanced understanding of POMS to guide farm management decisions in Tasmania. FRDC Final Report 2016/804. No available online.
