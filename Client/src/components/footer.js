import React from "react";

function Footer() {
  return (
    <footer>
      <nav class="mb-1 navbar navbar-expand-lg navbar-dark info-color">
        <a class="navbar-brand" href="#">
          &copy;Copyright Last Updated August 2019 Decor&More
        </a>
        <button
          class="navbar-toggler"
          type="button"
          data-toggle="collapse"
          data-target="#navbarSupportedContent-4"
          aria-controls="navbarSupportedContent-4"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span class="navbar-toggler-icon" />
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent-4">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
              <a class="nav-link" href="https://www.facebook.com/">
                <i class="fab fa-facebook-f" /> Facebook
                <span class="sr-only">(current)</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="https://www.instagram.com/">
                <i class="fab fa-instagram" /> Instagram
              </a>
            </li>

            <li class="nav-item">
              <a class="nav-link" href="http://localhost:3001/api/contact/">
                <i class="fab fa-instagram" /> Contacts
              </a>
            </li>
          </ul>
        </div>
      </nav>
    </footer>
  );
}

export default Footer;
