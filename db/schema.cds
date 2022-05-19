using {
    Currency,
    managed,
    sap,
    cuid,
    Country
} from '@sap/cds/common';

namespace smb.bikeshop;

entity Bikes : managed, cuid {
    sku         : String(20);
    description : String(120);
    stock       : Integer;
    color       : String;
    basePrice   : Decimal;
};

entity Customers : managed, cuid {
    name    : String(40);
    remarks : String;
    country : Country;
    city    : String(40);
    postal  : String;
    street  : String(50);
    to_Orders: Association to many Orders on to_Orders.to_Customer = $self;
};

entity Orders : managed, cuid {
    reference: String(40);
    requestedDate: Date;
    shippingDate: Date;
    to_Customer: Association to one Customers; // @Todo - rausnehmen
    to_Items: Composition of many OrderItems on to_Items.to_Parent = $self;
};

entity OrderItems : managed, cuid {
    to_Bike: Association to one Bikes;
    to_Parent : Association to one Orders;
    quantity: Integer;
};
