local Http = {}

Http.requestHeaders = {
  ["Content-Type"] = "application/json",
  ["Accept"] = "application/json, text/plain, */*"
}

Http.baseUrl = 'https://5e14.ttg.club/api/v1/'

return Http
