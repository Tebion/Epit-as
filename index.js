"use strict"

const { deck, player, dealer, board } = require('./objects')
const { shuffleDeck, deal, flop, river } = require('./scripts')


console.log("Hello There")

/*
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
*/
var Hand = require('pokersolver').Hand;
var hand1 = Hand.solve(['Ad', 'As', 'Jc', 'Th', '2d', '3c', 'Kd']);
var hand2 = Hand.solve(['Ad', 'As', 'Jc', 'Th', '2d', 'Qs', 'Qd']);
var winner = Hand.winners([hand1, hand2]); // hand2


console.log(winner)

console.log(hand1.name);
console.log(hand1.descr);
console.log(hand2.name);
console.log(hand2.descr);