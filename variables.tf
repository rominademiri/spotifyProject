variable "spotify_api_key" {
  type        = string
  description = "Set this as the APIKey that the authorization proxy server outputs"
}
variable "canzoni" {
  type = list(string)
  default = ["Sunflower","Circles","Better Now"]
}
variable "artisti" {
  type = list(string)
  default = ["Post Malone"]
}
