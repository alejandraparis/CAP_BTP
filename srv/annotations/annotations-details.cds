using {Sales as service} from '../service';


annotate service.Details with {
    name             @title: 'Name';
    description      @title: 'Description';
    releasedate      @title: 'Release Date';
    discontinueddate @title: 'Discontinued Date';
    price            @title: 'Price';
    height           @title: 'Height';
    width            @title: 'Width';
    depth            @title: 'Depth';
    quantity         @title: 'Quantity';
    unitofmeasure    @title: 'Unit of Measure';

};

annotate service.Details with @(
    UI.HeaderInfo: {
        $Type         : 'UI.HeaderInfoType',
        TypeName      : 'Detail',
        TypeNamePlural: 'Details',
        Title         : {
            $Type: 'UI.DataField',
            Value: order.ordernro
        },
        Description   : {
            $Type: 'UI.DataField',
            Value: order.ordernro
        }
    },
    UI.LineItem  : [
        
        {
            $Type: 'UI.DataField',
            Value: name,
        },
        {
            $Type: 'UI.DataField',
            Value: description
        },
        {
            $Type: 'UI.DataField',
            Value: releasedate
        },
        {
            $Type: 'UI.DataField',
            Value: discontinueddate
        },
        {
            $Type: 'UI.DataField',
            Value: price
        },
        {
            $Type: 'UI.DataField',
            Value: height
        },
        {
            $Type: 'UI.DataField',
            Value: width
        },
        {
            $Type: 'UI.DataField',
            Value: depth
        },
        {
            $Type: 'UI.DataField',
            Value: quantity
        },
        {
            $Type: 'UI.DataField',
            Value: unitofmeasure
        }
    ],
    
    UI.FieldGroup: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: name,
            },
            {
                $Type: 'UI.DataField',
                Value: description
            },
            {
                $Type: 'UI.DataField',
                Value: releasedate
            },
        ],
    },
    UI.Facets    : [{
        $Type : 'UI.ReferenceFacet',
        Target: '@UI.FieldGroup',
        Label : 'Detail Information'
    }, ],
);
