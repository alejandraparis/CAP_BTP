using {Products as service} from '../service';


using from './annotations-reviews';


annotate service.Products with @odata.draft.enabled;

annotate service.Products with {
    product      @title: 'Product';
    productName  @title: 'Product Name';
    description  @title: 'Description'  @UI.MultiLineText;      
    price        @title: 'Price'        @Measures.ISOCurrency: currency_code; 
    currency     @title: 'Currency'     @Common.IsCurrency;
   
};   
    

annotate service.Products with @(
    
    UI.SelectionFields                : [
        product        
    ],
    UI.HeaderInfo                     : {
        $Type         : 'UI.HeaderInfoType',
        TypeName      : 'Product',
        TypeNamePlural: 'Products',
        Title         : {
            $Type: 'UI.DataField',
            Value: productName
        },
        Description   : {
            $Type: 'UI.DataField',
            Value: product
        }
    },
    UI.LineItem                       : [
      
        {
            $Type: 'UI.DataField',
            Value: product
        },
        {
            $Type: 'UI.DataField',
            Value: productName
        },     
           
      
        {
            $Type             : 'UI.DataField',
            Value             : price,
            @HTML5.CssDefaults: {
                $Type: 'HTML5.CssDefaultsType',
                width: '10rem'
            }
        }
    ],
    
    UI.DataPoint #Price               : {
        $Type        : 'UI.DataPointType',
        Value        : price,
        Visualization: #Number,
        Title        : 'Price'
    },
    
    
    UI.FieldGroup #Price              : {
        $Type: 'UI.FieldGroupType',
        Data : [{
            $Type: 'UI.DataField',
            Value: price
        }]
    },
    
    UI.FieldGroup #Description        : {
        $Type: 'UI.FieldGroupType',
        Data : [{
            $Type: 'UI.DataField',
            Value: description,
            Label: ''
        }]
    },
    
    UI.HeaderFacets                   : [
       
        {
            $Type : 'UI.ReferenceFacet',
            Target: '@UI.FieldGroup#Description',
            Label : 'Description'
        },
        {
            $Type : 'UI.ReferenceFacet',
            Target: '@UI.FieldGroup#Price',
            Label : 'Price'
        },
       
        {
            $Type : 'UI.ReferenceFacet',
            Target: '@UI.DataPoint'
        },
    ],
    UI.Facets                         : [
        
        
        {
            $Type : 'UI.ReferenceFacet',
            Target: 'toReviews/@UI.LineItem',
            Label : 'Reviews',
            ID    : 'toReviews'
        }
        
    ]
);