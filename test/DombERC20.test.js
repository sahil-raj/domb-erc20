const {expect} = require("chai");
const {ethers} = require("hardhat");

describe("DombERC20", () => {
    beforeEach(async () => {
        domb = await ethers.getContractFactory("DombERC20");
        [owner, add1, add2] = await ethers.getSigners();
        refContract = await domb.deploy();
    });

    describe("On deployment", () => {
        it("Should mint 1000 * (10**decimals())", async () => {
            expect(await refContract.totalSupply()).to.equal(BigInt(1000000000000000000000));
        });
    });
});