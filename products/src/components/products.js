import React from "react";
import Productlist from "../products.json";
import Furniture from "./Furniture";

function Products() {
  console.log(Productlist);
  return (
    <div className="App">
      <h1>Browse our luxorious living and bedroom sets</h1>
      {Productlist.products.map(Productlist => {
        console.log(Productlist);
        return (
          <div>
            <Furniture
              name={Productlist.productName}
              price={Productlist.price}
              description={Productlist.description}
              img={Productlist.img}
            />
          </div>
        );
      })}
    </div>
  );
}

export default Products;
