. ./MetGetEnv.sh

#  AVAILABLE_FORMATS = {
#     "raw": "raw",
#     "ascii": "ascii",
#     "owi-ascii": "owi-ascii",
#     "owi-netcdf": "owi-netcdf",
#     "hec-netcdf": "hec-netcdf",
#     "generic-netcdf": "hec-netcdf",
#     "delft3d": "delft3d",
# }

# Available metget variables
# You can only run one variable at a time
# AVAILABLE_VARIABLES = {"wind_pressure", "rain", "temperature", "humidity", "ice"}

# Available metget models
# AVAILABLE_MODELS = {
#     "gfs": "gfs-ncep",
#     "gefs": "gefs-ncep",
#     "nam": "nam-ncep",
#     "hwrf": "hwrf",
#     "hrrr": "hrrr-ncep",
#     "hrrr-alaska": "hrrr-alaska-ncep",
#     "wpc": "wpc-ncep",
#     "coamps": "coamps-tc",
#     "ctcx": "coamps-ctcx",
#     "nhc": "nhc",
#     "era5": "era5",
# }

# Available metget model types
# MODEL_TYPES = {
#     "gfs": "synoptic",
#     "gefs": "ensemble",
#     "nam": "synoptic",
#     "hwrf": "synoptic-storm",
#     "hrrr": "synoptic",
#     "hrrr-alaska": "synoptic",
#     "wpc": "synoptic",
#     "coamps": "synoptic-storm",
#     "ctcx": "ensemble-storm",
#     "era5": "hindcast",
#     "nhc": "track",
# }

# This command gets wind for Lee
metget build --domain gfs 0.1 -80.0 30.0 -60.0 50.0 --start '2023-09-14 13:00' --end '2023-09-19 06:00' --variable wind_pressure  --format generic-netcdf --timestep 3600 --strict --compression --output wind_gfs --multiple-forecasts

# This command gets rain for Lee
metget build --domain gfs 0.1 -80.0 30.0 -60.0 50.0 --start '2023-09-14 13:00' --end '2023-09-19 06:00' --variable rain --format generic-netcdf --timestep 3600 --strict --compression --output rain_gfs --multiple-forecasts