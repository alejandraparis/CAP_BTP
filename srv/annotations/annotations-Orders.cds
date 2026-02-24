using { Orders as service} from '../service';

annotate service.Orders with @(
    UI.LineItem : [ 
                    {
                    $Type: 'UI.DataField',
                    value : Order_ID
                    },                    
                    {
                    $Type: 'UI.DataField',
                    value : Email
                    },
                    {
                    $Type: 'UI.DataField',
                    value : FirstName
                    },
                    {
                    $Type: 'UI.DataField',
                    value : LastName
                    },
                    {
                    $Type: 'UI.DataField',
                    value : Country
                    },
                    {
                    $Type: 'UI.DataField',
                    value : CreateOn
                    },
                    {
                    $Type: 'UI.DataField',
                    value :DeliveryDate
                    },
                    {
                    $Type: 'UI.DataField',
                    value : OrderStatus
                    },
                    {
                    $Type: 'UI.DataField',
                    value : ImageUrl
                    }                    
    ]
);