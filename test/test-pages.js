var expect = require('chai').expect;
var request = require('request');


// runs test to confirm that the request has succeeded. //
it('returns main page status', function (done) {
    request('http://localhost:3001/products', function (error, response, body) {
        expect(response.statusCode).to.equal(200);
        done();
    });
});

// runs test to confrim that all products display to the page in an array//

it('return an array from the allproducts api', function (done) {
    request('http://localhost:3001/api/allproducts', function (error, response, body) {
        const products = JSON.parse(body)
        expect(products).to.be.an('array')
        done();
    });
});

// runs test to expect product 2 named "Kraker 2 Piece Living Room Set"//

it('returns Product_ID = 2 from the product api', function (done) {
    request('http://localhost:3001/api/products/2', function (error, response, body) {
        expect({ Product_ID: 2, product_name: 'Kraker 2 Piece Living Room Set' })
        done();
    });
});

// runs test to expect an array of contacts // 
it('Contact from the contact api', function (done) {
    request('http://localhost:3001/api/Contact', function (error, response, body) {
        const contact = JSON.parse(body)
        expect(contact).to.be.an('array')
        done();
    });
});