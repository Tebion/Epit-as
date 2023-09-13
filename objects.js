"use strict"

const { SUITS, VALUES } = require('./data')

let deck = {
    cards: SUITS.flatMap(suit => {
        return VALUES.map(value => value + suit)
    })
}

let player = {
    hand: [],
    stacks: 0
}

let dealer = {
    hand: []
}

let board = {
    cards: []
}

let bet = {
    ante: 0,
    blind: 0,
    trips: 0,
    jackpot: true,
    play: 0
}

module.exports = {
    deck, player, dealer, board, bet
}