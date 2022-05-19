using Bikemanagement as service from '../../srv/bikemanagement';
using from '../../db/schema';

annotate service.Orders with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Reference}',
            Value : reference,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Requesteddate}',
            Value : requestedDate,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Shippingdate}',
            Value : shippingDate,
        },
        {
            $Type : 'UI.DataField',
            Value : to_Customer.name,
            Label : '{i18n>Customername}',
        },
    ]
);
annotate service.Orders with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'reference',
                Value : reference,
            },
            {
                $Type : 'UI.DataField',
                Label : 'requestedDate',
                Value : requestedDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'shippingDate',
                Value : shippingDate,
            },
            {
                $Type : 'UI.DataField',
                Value : to_Customer.name,
                Label : '{i18n>Customername}',
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
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>Items}',
            ID : 'i18nItems',
            Target : 'to_Items/@UI.LineItem#i18nItems',
        },
    ]
);
annotate service.OrderItems with @(
    UI.LineItem #i18nItems : [
        {
            $Type : 'UI.DataField',
            Value : quantity,
            Label : '{i18n>Quantity}',
        },{
            $Type : 'UI.DataField',
            Value : modifiedAt,
        },{
            $Type : 'UI.DataField',
            Value : modifiedBy,
        },{
            $Type : 'UI.DataField',
            Value : to_Bike.color,
            Label : '{i18n>Color}',
        },{
            $Type : 'UI.DataField',
            Value : to_Bike.basePrice,
            Label : '{i18n>Baseprice}',
        },{
            $Type : 'UI.DataField',
            Value : to_Bike.description,
            Label : '{i18n>Description1}',
        },{
            $Type : 'UI.DataField',
            Value : to_Bike.sku,
            Label : '{i18n>Sku}',
        },]
);
