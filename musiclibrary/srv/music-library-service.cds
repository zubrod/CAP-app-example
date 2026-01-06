using {my.musiclibrary as my} from '../db/schema_musiclibrary';

service MusicLibraryService {

    entity Songs           as projection on my.Songs;
    entity Interprets      as projection on my.Interprets;
    entity Collection      as projection on my.Collections;
    entity SongCollections as projection on my.SongCollections;


}
