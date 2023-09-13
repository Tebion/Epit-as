const { deck, player, dealer, board } = require("./objects")

function shuffleDeck(arr) {
    for (let i = arr.length - 1; i > 0; i--) {
        const j = Math.floor(Math.random() * (i + 1));
        const temp = arr[i];
        arr[i] = arr[j];
        arr[j] = temp;
    }
}

function deal(arr) {
    player.hand = arr.splice(0, 2)
    dealer.hand = arr.splice(0, 2)
}

function flop(arr) {
    board.cards = board.cards.concat(arr.splice(0, 3))
}

function river(arr) {
    board.cards = board.cards.concat(arr.splice(0, 2))
}

module.exports = {
    shuffleDeck,
    deal,
    flop,
    river
}