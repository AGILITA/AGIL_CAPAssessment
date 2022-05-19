using { smb.bikeshop as bikeshop } from '../db/schema';
service Bikemanagement @(path : '/bikeshop'){
    
  @odata.draft.enabled    : true
  @fiori.draft.enabled    : true
  @Capabilities.InsertRestrictions: {Insertable:false}
  @Capabilities.Deletable : false
  entity Orders as projection on bikeshop.Orders;
  
  @readonly entity Bikes as projection on bikeshop.Bikes;
  entity Customers as projection on bikeshop.Customers;

}