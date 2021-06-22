Portfolio = artifacts.require("Portfolio");

/*
 * uncomment accounts to access the test accounts made available by the
 * Ethereum client
 * See docs: https://www.trufflesuite.com/docs/truffle/testing/writing-tests-in-javascript
 */
contract("Portfolio", function (/* accounts */) {

  beforeEach(async function () {
    // Get all the available address on the network
    // Deploy Portfolio contract
    portfolio = await ethers.getContractFactory("Portfolio");
    portfolio = await Portfolio.deploy()

    await portfolio.deployed();
  });


});
