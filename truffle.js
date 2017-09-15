module.exports = {
  networks: {
    development: {
        host: "localhost",
        port: 8545,
        network_id: "*"
    },
    test: {
      host: "localhost",
      port: 8545,
      network_id: "3",
      from: "0xf1D43814AE76eaAc3CF531834dC1A2d077bE90d0"
    }
  }
};
