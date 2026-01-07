using MusicLibraryService as service from '../../srv/music-library-service';


annotate service.Songs with @odata.draft.enabled;

annotate service.Songs with @(
    UI.FieldGroup #GeneratedGroup: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: 'ID',
                Value: ID,
            },
            {
                $Type: 'UI.DataField',
                Label: 'title',
                Value: title,
            },
            {
                $Type: 'UI.DataField',
                Label: 'length',
                Value: length,
            },
            {
                $Type: 'UI.DataField',
                Label: 'releaseDate',
                Value: releaseDate,
            },
            {
                $Type: 'UI.DataField',
                Value: collection_ID,
                Label: 'collection_ID',
            },
            {
                $Type: 'UI.DataField',
                Value: interpret_ID,
                Label: 'interpret_ID',
            },
        ],
    },
    UI.Facets                    : [{
        $Type : 'UI.ReferenceFacet',
        ID    : 'GeneratedFacet1',
        Label : 'General Information',
        Target: '@UI.FieldGroup#GeneratedGroup',
    }, ],
    UI.LineItem                  : [
        {
            $Type: 'UI.DataField',
            Label: 'ID',
            Value: ID,
        },
        {
            $Type: 'UI.DataField',
            Label: 'title',
            Value: title,
        },
        {
            $Type: 'UI.DataField',
            Label: 'length',
            Value: length,
        },
        {
            $Type: 'UI.DataField',
            Label: 'releaseDate',
            Value: releaseDate,
        },
    ],
);

annotate service.Songs with {
    collection @(
        Common.ValueList               : {
            $Type         : 'Common.ValueListType',
            CollectionPath: 'Collection',
            Parameters    : [{
                $Type            : 'Common.ValueListParameterInOut',
                LocalDataProperty: collection_ID,
                ValueListProperty: 'ID',
            }, ],
            Label         : 'Collection',
        },
        Common.ValueListWithFixedValues: false,
    )
};

annotate service.Collection with {
    ID @(
        Common.Text                    : title,
        Common.Text.@UI.TextArrangement: #TextOnly,
    )
};

annotate service.Songs with {
    interpret @(
        Common.ValueList               : {
            $Type         : 'Common.ValueListType',
            CollectionPath: 'Interprets',
            Parameters    : [{
                $Type            : 'Common.ValueListParameterInOut',
                LocalDataProperty: interpret_ID,
                ValueListProperty: 'ID',
            }, ],
            Label         : 'Interpret',
        },
        Common.ValueListWithFixedValues: true,
    )
};

annotate service.Interprets with {
    ID @(
        Common.Text                    : interpretName,
        Common.Text.@UI.TextArrangement: #TextOnly,
    )
};
