"use strict"

const { deck, player, dealer, board } = require('./objects')
const { shuffleDeck, deal, flop, river } = require('./scripts')

console.log("Hello There")

shuffleDeck(deck.cards)
shuffleDeck(deck.cards)
console.log(deck.cards)

deal(deck.cards)
console.log("Player: " + player.hand)
console.log("Dealer: " + dealer.hand)
console.log(deck.cards)

flop(deck.cards)
console.log("FLOP: " + board.cards)

river(deck.cards)
console.log("RIVER: " + board.cards)