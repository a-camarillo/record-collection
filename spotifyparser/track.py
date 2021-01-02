# coding: latin1

class Track:

    '''
    An object created from Spotify's track JSON. Class properties are defined by the keys in the JSON

        Attributes:
            album -- An album object for the album on which the track appears
            artists -- An array containing an object for each artist on the track
            available_markets -- An array containing country codes where the track is available
            disc_number -- The disc number the track is on
            duration_ms -- The duration length of the track in milliseconds 
            explicit -- A boolean for whether or not the track contains explicit lyrics
            external_ids -- An external ID object
            external_urls -- An external URL object
            href -- A string formatted link to Spotify Web API endpoint
            id -- A string of the Spotify ID for the track
            is_playable -- A boolean for if the track is playable in the given market
            linked_from -- A linked track object
            name -- The name of the track
            popularity -- An integer representing the popularity of the track between 0 and 100, with 100 being most popular
            preview_url -- A string formatted link to a 30 second preview of the track
            track_number -- The number of the track
            type -- The object type, for track it should simply be track
            uri -- A string of the Spotify URI for the track
    '''
    def __init__(self,track_json:dict):
        for key in track_json:
            setatrr(self,key,track_json[key])

    def get_artist(self):
        track_artist = self.artists[0]
        return album_artist['name']

    def get_label(self):
        return self.label

    def get_disc_number(self):
        return self.disc_number

    def get_duration(self):
        return self.duration_ms

    def get_track_name(self):
        return self.name 
    
    def get_track_number(self):
        return self.track_number

    def get_uri(self):
        return self.uri 
