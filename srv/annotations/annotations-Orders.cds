using { Orders as service} from '../service';

using from './annotations-items';

annotate service.Orders with @odata.draft.enabled;

annotate service.Orders with {
    ordernro     @title: 'Order';
    email        @title: 'Email';
    firstname    @title: 'First Name';
    lastname     @title: 'Last Name';
    country      @title: 'Country';
    createon     @title: 'Create On';
    deliverydate @title: 'Delivery Date';
    orderstatus  @title: 'Order Status';
    imageurl     @title: 'Image URL';
};

annotate service.Orders with @(
     UI.SelectionFields                : [
        ordernro,
        email
    ],
    UI.HeaderInfo                     : {
        $Type         : 'UI.HeaderInfoType',
        TypeName      : 'Order',
        TypeNamePlural: 'Orders',
        Title         : {
            $Type: 'UI.DataField',
            Value: ordernro
        },
        Description   : {
            $Type: 'UI.DataField',
            Value: email
        }       
       
    },
    UI.LineItem : [ 
                    {
                    $Type: 'UI.DataField',
                    value : ordernro
                    },                    
                    {
                    $Type: 'UI.DataField',
                    value : email
                    },
                    {
                    $Type: 'UI.DataField',
                    value : firstname
                    },
                    {
                    $Type: 'UI.DataField',
                    value : lastname
                    },
                    {
                    $Type: 'UI.DataField',
                    value : country
                    },
                    {
                    $Type: 'UI.DataField',
                    value : createon
                    },
                    {
                    $Type: 'UI.DataField',
                    value : deliverydate
                    },
                    {
                    $Type: 'UI.DataField',
                    value : orderstatus
                    },
                    {
                    $Type: 'UI.DataField',
                    value : imageurl
                    }                    
    ],
    UI.Facets                         : [            
        {
            $Type : 'UI.ReferenceFacet',
            Target: 'toItems/@UI.LineItem',
            Label : 'Items',
            ID    : 'toItems'
        }        
       
    ]
);