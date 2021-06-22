const Portfolio = artifacts.require('Portfolio');

module.exports = function(deployer) {
    // Use deployer to state migration tasks.
    deployer.deploy(Portfolio);
};