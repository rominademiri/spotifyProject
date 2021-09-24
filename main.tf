terraform {
  required_providers {
    spotify = {
      version = "~> 0.2.6"
      source  = "conradludgate/spotify"
    }
  }
}

provider "spotify" {
  api_key = var.spotify_api_key
  username = "rominademiri"
  token_id = "b600a147-a810-4f08-857e-00bd945f58d8"
  auth_server = "https://oauth2.conrad.cafe"
}

resource "spotify_playlist" "playlist" {
  name        = "MartinaXPostMalone"
  description = "Le canzoni prefe di Martina"
  public      = true
  tracks = flatten([
    data.spotify_search_track.search.tracks[0].id,
    data.spotify_search_track.search2.tracks[0].id,
  ])
}


data "spotify_search_track" "search" {
  name   = "Sunflower"
  artist = "Post Malone"

}
data "spotify_search_track" "search2" {
  name   = "Circles"
  artist = "Post Malone"

}


output "test" {
  value = data.spotify_search_track.search.tracks
}