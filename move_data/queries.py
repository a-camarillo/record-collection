insert_artist_query = """
                      INSERT INTO artists (artist_name,artist_uri) 
                      VALUES (%s,%s)
                      ON CONFLICT
                      DO NOTHING
                      """

insert_label_query = """
                     INSERT INTO labels (label_name)
                     VALUES (%s)
                     ON CONFLICT
                     DO NOTHING
                     """

insert_records_query = """
                       INSERT INTO records (record_title,artist_id,total_tracks,year,label_id,record_uri)
                       VALUES (%s,%s,%s,%s,%s,%s)
                       ON CONFLICT
                       DO NOTHING
                       """
        
insert_tracks_query = """      
                      INSERT INTO tracks (track_title,record_id,duration_ms,track_number,track_uri)
                      VALUES (%s,%s,%s,%s,%s)
                      ON CONFLICT
                      DO NOTHING
                      """

select_artist_query = """
                      SELECT artist_id FROM artists WHERE artist_name = %s
                      """

select_label_query = """
                     SELECT label_id FROM labels WHERE label_name = %s
                     """

select_record_query = """
                      SELECT record_id FROM records WHERE record_title = %s
                      """