using {my.musiclibrary as my} from '../db/schema_musiclibrary';

service MusicLibraryService {

    /** For displaying lists of Books */
    @readonly
    entity ListOfSongs as projection on my.Songs


}
