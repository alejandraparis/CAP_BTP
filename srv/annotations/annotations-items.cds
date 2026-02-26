using {Orders as service} from '../service';


annotate service.Items with {
    ordernro     @title: 'Order';
    name        @title: 'Name';
    description @title: 'Description';
    releasedate @title: 'Release Date';     
    discontinueddate @title: 'Discontinued Date';
    price       @title: 'Price';
    height      @title: 'Height';
    width       @title: 'Width';
    depth       @title: 'Depth';
    quantity    @title: 'Quantity';
    unitofmeasure @title: 'Unit of Measure';
    
};

annotate service.Items with @(
     UI.HeaderInfo: {
        $Type         : 'UI.HeaderInfoType',
        TypeName      : 'Item',
        TypeNamePlural: 'Items',
        Title         : {
            $Type: 'UI.DataField',
            Value: order.ordernro
        },
         Description   : {
            $Type: 'UI.DataField',
            Value: order.ordernro
        }       
    },
    UI.LineItem : [ 
                    {
                    $Type: 'UI.DataField',
                    value : ordernro
                    },                    
                    {
                    $Type: 'UI.DataField',
                    value : name
                    },
                    {
                    $Type: 'UI.DataField',
                    value : description
                    },
                    {
                    $Type: 'UI.DataField',
                    value : releasedate
                    },
                    {
                    $Type: 'UI.DataField',
                    value : discontinueddate
                    },
                    {
                    $Type: 'UI.DataField',
                    value : price
                    },
                    {
                    $Type: 'UI.DataField',
                    value : height
                    },
                    {
                    $Type: 'UI.DataField',
                    value : width
                    },
                    {
                    $Type: 'UI.DataField',
                    value : depth
                    },
                     {
                     $Type: 'UI.DataField',
                     value : quantity
                     },
                     {
                     $Type: 'UI.DataField',
                     value : unitofmeasure
                     }                    
    ],
    UI.FieldGroup: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: name
            },
            {
                $Type: 'UI.DataField',
                Value: description
            },
            {
                $Type: 'UI.DataField',
                Value: price
            }
        ]
    },
    UI.Facets    : [{
        $Type : 'UI.ReferenceFacet',
        Target: '@UI.FieldGroup',
        Label : 'Item Information'
    } 
    ]
);