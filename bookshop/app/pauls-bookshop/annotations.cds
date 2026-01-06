using {AdminService} from '../../srv/admin-service';
using from '../common';

annotate AdminService.Books with {
    author @Common.ValueList: {
        $Type         : 'Common.ValueListType',
        CollectionPath: 'Authors',
        Parameters    : [
            {
                $Type            : 'Common.ValueListParameterInOut',
                LocalDataProperty: author_ID,
                ValueListProperty: 'ID',
            },
            {
                $Type             : 'Common.ValueListParameterDisplayOnly',
                ValueListPfroperty: 'name',
            },
            {
                $Type            : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty: 'dateOfBirth',
            },
            {
                $Type            : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty: 'dateOfDeath',
            },
            {
                $Type            : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty: 'placeOfBirth',
            },
        ],
    }
};

annotate AdminService.Books with @(UI.LineItem: [
    {
        $Type: 'UI.DataField',
        Value: ID,
        Label: '{i18n>Title}',
    },
    {
        $Type: 'UI.DataField',
        Value: author.ID,
        Label: '{i18n>Author}',
    },
    {
        $Type: 'UI.DataField',
        Value: genre.name,
    },
    {
        $Type: 'UI.DataField',
        Value: stock,
    },
    {
        $Type: 'UI.DataField',
        Value: price,
    },
    {
        $Type: 'UI.DataField',
        Value: currency.symbol,
    },
    {
        $Type : 'UI.DataFieldForAction',
        Action: 'AdminService.testPaulsAction',
        Label : 'testPaulsAction',
    },
]);
