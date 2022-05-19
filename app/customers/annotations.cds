using Bikemanagement as service from '../../srv/bikemanagement';

annotate service.Customers with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Name1}',
            Value : name,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Remarks}',
            Value : remarks,
        },
        {
            $Type : 'UI.DataField',
            Value : country_code,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>City}',
            Value : city,
        },
        {
            $Type : 'UI.DataField',
            Label : 'postal',
            Value : postal,
        },
    ]
);
annotate service.Customers with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'name',
                Value : name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'remarks',
                Value : remarks,
            },
            {
                $Type : 'UI.DataField',
                Value : country_code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'city',
                Value : city,
            },
            {
                $Type : 'UI.DataField',
                Label : 'postal',
                Value : postal,
            },
            {
                $Type : 'UI.DataField',
                Label : 'street',
                Value : street,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
