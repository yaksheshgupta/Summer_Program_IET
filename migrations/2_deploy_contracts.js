const main = artifacts.require("hangout_content");
const book = artifacts.require("hangout_book");
const music = artifacts.require("hangout_music");

module.exports = function (deployer) {
  // deployer.deploy(main);
  deployer.deploy(music);
  deployer.deploy(book);
};
