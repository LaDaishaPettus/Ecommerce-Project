import React from "react";

function Nav() {
  return (
    <nav className="navbar navbar-expand-lg navbar-dark primary-color">
      <a className="navbar-brand" href="#">
        Decor&More
      </a>
      <button
        className="navbar-toggler"
        type="button"
        data-toggle="collapse"
        data-target="#basicExampleNav"
        aria-controls="basicExampleNav"
        aria-expanded="false"
        aria-label="Toggle navigation"
      >
        <span className="navbar-toggler-icon" />
      </button>

      <div className="collapse navbar-collapse" id="basicExampleNav">
        <ul className="navbar-nav mr-auto">
          <li className="nav-item">
            <a className="nav-link" href="./home.html">
              Home
              <span className="sr-only">(current)</span>
            </a>
          </li>
          <li className="nav-item active">
            <a className="nav-link" href="product.html">
              Shop
            </a>
          </li>
          <li className="nav-item">
            <a className="nav-link" href="./contact.html">
              Contact
            </a>
          </li>
        </ul>
      </div>
    </nav>
  );
}

export default Nav;
