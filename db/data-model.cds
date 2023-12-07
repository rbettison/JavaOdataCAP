namespace shop.products;

entity Books {
  key ID : Integer;
  title  : String;
  stock  : Integer;
}

entity Products {
  key ID      : Integer;
  name        : String;
  description : String;
  imageUrl    : String;
  barcode     : String;
  cart        : Association to Carts;
}

entity Carts {
  key ID      : Integer;
  products    : Association to many Products on products.cart = $self;
}
