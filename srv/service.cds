using {Ventas as entities} from '../db/schema';

service Orders {

    entity Orders as projection on entities.Orders;
    entity Items as projection on entities.Items;
    
}
service Products {

    entity Products as projection on entities.Products;
    entity Reviews as projection on entities.Reviews;
    
}

service Sales {

    entity Sales as projection on entities.Sales;
    entity Details as projection on entities.Details;
    
}