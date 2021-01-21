import spotipy
from spotipy.oauth2 import SpotifyClientCredentials
from util import file_funcs

chunk_size=20 # chunk size used for extracting elements
text_file='spotify_uris.txt'
json_file='spotify_records.json'

sp = spotipy.Spotify(auth_manager=SpotifyClientCredentials())

uri_list = file_funcs.text_to_list(text_file)
uri_chunks = file_funcs.extract_consecutive_elements(uri_list,chunk_size)

for chunk in uri_chunks:
    albums = sp.albums(chunk)
    file_funcs.dict_to_json(albums,json_file)

