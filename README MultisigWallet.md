multisig contract 0xf5157A8763aF0c802ce79a4a883DB768a86de82C
test contract 0x3363387e96302f2158d42E83990752CF922DB1B2

npx hardhat verify --network matic 0xf5157A8763aF0c802ce79a4a883DB768a86de82C "["0x2924a6C59115299A5945cA1dF6D73ABA526C97bd","0x6f6eb030334642D3D1527B3D1b05fb08C16852d5","0xB3E1275Be2649E8cf8e4643da197d6F7B309626A"]", 1

npx hardhat verify --network matic --constructor-args arguments.js 0xf5157A8763aF0c802ce79a4a883DB768a86de82C


npx hardhat run ./scripts/deploy.ts --network matic