import React from "react";
import Productlist from "../products.json";
import Furniture from "./Furniture";

class Products extends React.Component {
  constructor() {
    super();

    this.state = {
      data: []
    }
  }

  componentDidMount() {
    fetch('http://localhost:3001/allproducts')
      .then(res => res.json())
      .then(lol => this.setState({ data: lol }));
  }

  render() {
    return (
      <div className="App">
        <h1>Browse our luxorious living and bedroom sets</h1>
        {this.state.data.map(Productlist => {
          console.log(Productlist);
          return (
            <div>
              <Furniture
                name={Productlist.Product_Name}
                price={Productlist.Price}
                description={Productlist.About}
                img={Productlist.Images}
              />
            </div>
          );
        })}
      </div>
    );
  }
}

export default Products;
