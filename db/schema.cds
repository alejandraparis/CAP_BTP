namespace Ventas;

using {
    cuid,
    managed,
    sap.common.Currencies,
    sap.common.Countries,
    sap.common.CodeList
} from '@sap/cds/common';

entity Orders : cuid, managed {   
        ordernro     : String(8);
        email        : String(30);
        firstname    : String(30);
        lastname     : String(30);
        country      : Association to Countries;
        createon     : Date;
        deliverydate : Date;
        orderstatus  : Integer;
        imageurl     : String;
        toItems      : Composition of many Items
                           on toItems.order = $self;

};

entity Items : cuid, managed {    
        ordernro         : String(8);
        name             : String(40);
        description      : String(40);
        releasedate      : Date;
        discontinueddate : Date;
        price            : Decimal(12, 2);
        height           : Decimal(13, 3);
        width            : Decimal(13, 3);
        depth            : Decimal(13, 3);
        quantity         : Decimal(13, 3);
        unitofmeasure    : String(3);
        order            : Association to Orders;//Order_id

};

entity Products : cuid, managed {  
    product       : String(8);
    productName   : String(80);
    description   : LargeString;    
    price         : Decimal(6, 2); 
    currency      : Association to Currencies; //currency_code    
    toReviews     : Composition of many Reviews
                        on toReviews.product = $self;    
};

entity Reviews : cuid {
    rating     : Decimal(3, 2);
    date       : Date;
    user       : String(20);
    reviewText : LargeString;
    product    : Association to Products; //product_ID
};

entity Sales : cuid, managed {  
    ordernro      : String(8);
    email     : String(30);
    firstname     : String(30);
    lastname      : String(30);   
    country       : Association to Countries; 
    createon      : Date; 
    deliverydate  : Date;
    orderstatus   : Integer;
    imageurl      : String;   
    toDetails     : Composition of many Details
                        on toDetails.order = $self;    
};

entity Details : cuid {
    name        : String(40);
    description : String(40);    
    releasedate : Date;
    discontinueddate : Date;
    price       : Decimal(12, 2);
    height      : Decimal(13, 3);
    width       : Decimal(13, 3);
    depth       : Decimal(13, 3);
    quantity    : Decimal(13, 3);
    unitofmeasure : String(3);   
    order    : Association to Sales; //order_ID
};
