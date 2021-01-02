# coding: latin1

class Album:

    '''
    An object created from Spotify's album JSON. Class properties are defined by the keys in the JSON

        Attributes:
            album_type -- The type given for the album e.g. album, compilation, single
            artists -- An array containing an object for each artist on the record
            available_markets -- An array containing country codes where the album is available
            copyrights -- An array containing copyright objects
            external_ids -- An external ID object
            external_urls -- An external URL object
            genres -- An array containing the genres of the album
            href -- A string formatted link to Spotify Web API endpoint
            id -- A string of the Spotify ID for the album
            images -- An array of image objects for the cover art of the album
            label -- The label for the album
            name -- The name of the album
            popularity -- An integer representing the popularity of the album between 0 and 100, with 100 being most popular
            release_date -- String for the release date of the album, formats: Year-Month-Day, Year-Month, Year dependent on precision
            release_date_precision -- A string detailing the precision of the
            total_tracks -- The total number of tracks in the album
            tracks -- An object containing all of the simplified track objects for the album       
            type -- The object type, for album it should simply be album
            uri -- A string of the Spotify URI for the album
    '''
    
    def __init__(self,album_json:dict):
        for key in album_json:
            setattr(self,key,album_json[key])
        
    def get_artist(self):
        album_artist = self.artists[0]
        return album_artist['name']

    def get_label(self):
        return self.label
    
    def get_album_name(self):
        return self.name

    def get_release_date(self):
        return self.release_date
    
    def get_uri(self):
        return self.uri

    def get_tracks(self):
        return self.tracks['items'] 



