import React from "react";
import logo from "./logo.svg";
import "./App.css";
import Nav from "./components/nav";
import Footer from "./components/footer";
import Products from "./components/products";

function App() {
  return (
    <div className="App">
      <Nav />
      <Products />
      <Footer />
    </div>
  );
}

export default App;
