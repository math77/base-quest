import { ethers } from "hardhat";

async function main() {

  const BaseNFT = await ethers.getContractFactory("BaseNFT");
  const baseNft = await BaseNFT.deploy();

  await baseNft.deployed();

  console.log("NFT Contract Deployed at " + baseNft.address);
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
