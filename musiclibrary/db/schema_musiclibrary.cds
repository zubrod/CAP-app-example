using {
    Currency,
    cuid,
    managed,
    sap
} from '@sap/cds/common';


namespace my.musiclibrary;

entity Songs : managed {
    key ID          : Integer;
        interpret   : Association to Interprets @mandatory;
        title       : String                    @mandatory;
        length      : String;
        releaseDate : Date;
}

entity Collections : managed {
    key ID          : Integer;
        title       : String @mandatory;
        releaseDate : Date;
        type        : String;
        songs       : Association to Songs;
}

entity Interprets : managed {
    key ID            : Integer;
        interpretName : String @mandatory;
        songs         : Association to many Songs
                            on songs.interpret = $self;
}
