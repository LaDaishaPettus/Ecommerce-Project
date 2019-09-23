import React from "react";
import "../components/product.css";

function Furniture(props) {
  console.log("props---", props);
  return (
    <div class="row livingRoom">
      <div class="col">
        <img src={props.img} />
        <p>{props.price}</p>
        <p>{props.name}</p>
        <p>{props.description}</p>

        <button type="button" className="btn btn-secondary">
          Order
        </button>
      </div>
    </div>
  );
}
export default Furniture;
