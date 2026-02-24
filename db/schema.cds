namespace Ventas;

using {
    managed,
    sap.common.Countries
} from '@sap/cds/common';

entity Orders : managed {
    key Order_UUID   : UUID;
        Order_ID     : String(8);
        Email        : String(30);
        FirstName    : String(30);
        LastName     : String(30);
        Country      : Association to Countries;
        CreateOn     : Date;
        DeliveryDate : Date;
        OrderStatus  : Integer;
        ImageUrl     : String;
        toItems      : Composition of many Items
                           on toItems.Order_UUID = $self;

};

entity Items : managed {
    key Item_UUID        : UUID;
        Order_ID         : String(8);
        Name             : String(40);
        Description      : String(40);
        ReleaseDate      : Date;
        DiscontinuedDate : Date;
        Price            : Decimal(12, 2);
        HEIGHT           : Decimal(13, 3);
        WIDTH            : Decimal(13, 3);
        DEPTH            : Decimal(13, 3);
        QUANTITY         : Decimal(13, 3);
        UNITOFMEASURE    : String(3);
        Order_UUID       : Association to Orders;

};
