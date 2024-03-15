const {expect} = require("chai");
const {ethers} = require("hardhat");

describe("DombERC20", () => {
    beforeEach(async () => {
        domb = await ethers.getContractFactory("DombERC20");
        [owner, add1, add2] = await ethers.getSigners();
        refContract = await domb.deploy();
    });
});