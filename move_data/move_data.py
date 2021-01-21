#coding: latin1

"""
The purpose of this module is to simply move spotify data from a JSON file into a postgres database

The database resides in a docker container currently running on the host machine
"""

import json
import queries
import psycopg2

conn = psycopg2.connect(
        host="localhost" ,
        database="record_collection",
        user="${USER}",
        password="${PASSWORD}"
)

cur = conn.cursor()


with open('../data_collection/spotify_records.json') as f:
       record_data = json.load(f)

for record in record_data:

        #collect records information from records list
        artist = record['artists'][0]
        artist_name = artist['name']
        artist_uri = artist['uri']
        label = record['label']
        record_title = record['name']
        total_tracks = record['total_tracks']
        release_date = record['release_date']
        year = int(release_date[0:4])
        tracks = record['tracks']['items']
        record_uri = record['uri']
        
        #insert artist data into artists table
        artist_data = (f'{artist_name}',f'{artist_uri}')
        cur.execute(queries.insert_artist_query,artist_data)

        #insert label data into labels table
        label_data = (f'{label}',)
        cur.execute(queries.insert_label_query,label_data)

        #commit inserts into artists and labels
        conn.commit()
        
        #select matching artist id from artists table
        cur.execute(queries.select_artist_query,(f'{artist_name}',))
        artist_id, = cur.fetchone()

        #select matching label id from labels table
        cur.execute(queries.select_label_query,(f'{label}',))
        label_id, = cur.fetchone()
        
        #insert record data into records table
        record_data = (f'{record_title}',artist_id,total_tracks,year,label_id,f'{record_uri}')
        cur.execute(queries.insert_records_query,record_data)

        #commit inserts into records table
        conn.commit()

        #select matching record id from records table
        cur.execute(queries.select_record_query,(f'{record_title}',))
        record_id, = cur.fetchone()

        for track in tracks:
                #collect track information from tracks list
                track_title = track['name']
                duration_ms = track['duration_ms']
                track_number = track['track_number']
                track_uri = track['uri']

                #insert track data into tracks table
                track_data = (f'{track_title}',record_id,duration_ms,track_number,f'{track_uri}')
                cur.execute(queries.insert_tracks_query,track_data)

                #commit inserts into tracks table
                conn.commit()


conn.close() 


