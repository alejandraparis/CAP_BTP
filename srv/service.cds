using {Ventas as entities} from '../db/schema';

service Orders {

    entity Orders as projection on entities.Orders;
    entity Items as projection on entities.Items;
    
}