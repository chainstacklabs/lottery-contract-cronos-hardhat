
const hre = require("hardhat");

async function main() {
  const CronosToken = await hre.ethers.getContractFactory("MyToken");
  console.log("Deploying your contract, please Wait.....");
  const cronosToken = await CronosToken.deploy();
  await cronosToken.deployed();

  console.log("CronosToken deployed to:", cronosToken.address);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
