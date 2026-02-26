using {Sales as service} from '../service';


using from './annotations-details';


annotate service.Sales with @odata.draft.enabled;

annotate service.Sales with {
    ordernro      @title: 'Order';
    email        @title: 'Email';
    firstname    @title: 'First Name';
    lastname     @title: 'Last Name';
    country      @title: 'Country';
    createon     @title: 'Created On';
    deliverydate @title: 'Delivery Date';
    orderstatus  @title: 'Order Status';
    imageurl     @title: 'Image URL';    
};   
    

annotate service.Sales with @(
    
    UI.SelectionFields                : [
        ordernro        
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
            Value: createon
        }
    },
    UI.LineItem                       : [
      
        {
            $Type: 'UI.DataField',
            Value: ordernro
        },
        {
            $Type: 'UI.DataField',
            Value: email          
        },    
           
        {
            $Type             : 'UI.DataField',
            Value             : firstname           
        },
        {
            $Type             : 'UI.DataField',
            Value             : lastname           
        },
        {
            $Type             : 'UI.DataField',
            Value             : country_code           
        },
        {
            $Type             : 'UI.DataField',
            Value             : createon           
        },
        {
            $Type             : 'UI.DataField',
            Value             : deliverydate           
        },
        {
            $Type             : 'UI.DataField',
            Value             : orderstatus           
        },
        {
            $Type             : 'UI.DataField',
            Value             : imageurl           
        }

    ],  
    UI.FieldGroup #Grupo1: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: firstname
            },
              {
                $Type: 'UI.DataField',
                Value: email
            },
            {
                $Type: 'UI.DataField',
                Value: deliverydate
            },        
        ]
    }, 
    UI.FieldGroup #Grupo2: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: lastname
            },
             {
                $Type: 'UI.DataField',
                Value: orderstatus
            },
            {
                $Type: 'UI.DataField',
                Value: country
            },
                      
        ]
    },       
    UI.FieldGroup #Grupo3: {
        $Type: 'UI.FieldGroupType',
        Data : [
             {
                $Type: 'UI.DataField',
                Value: imageurl
            },                     
        ]
    },
     UI.HeaderFacets                   : [
        {
            $Type : 'UI.ReferenceFacet',
            Target: '@UI.FieldGroup#Grupo1',
            Label : ''
        },
        {
            $Type : 'UI.ReferenceFacet',
            Target: '@UI.FieldGroup#Grupo2',
            Label : ''
        },
        {
            $Type : 'UI.ReferenceFacet',
            Target: '@UI.FieldGroup#Grupo3',
            Label : ''
        },       
    ],

    UI.Facets                         : [
        
        
        {
            $Type : 'UI.ReferenceFacet',
            Target: 'toDetails/@UI.LineItem',
            Label : 'Details',
            ID    : 'toDetails'
        }
        
    ]
);