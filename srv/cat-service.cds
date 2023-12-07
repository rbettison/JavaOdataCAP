using shop.products as shop from '../db/data-model';

service CatalogService {
    @readonly entity Books as projection on shop.Books;

    entity Products as projection on shop.Products;

    entity Carts as projection on shop.Carts;
}