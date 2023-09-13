"use strict"

const { SUITS, VALUES } = require('./data')

let deck = {
    cards: SUITS.flatMap(suit => {
        return VALUES.map(value => value + suit)
    })
}

let player = {
    hand: []
}

let dealer = {
    hand: []
}

let board = {
    cards: []
}

module.exports = {
    deck, player, dealer, board
}