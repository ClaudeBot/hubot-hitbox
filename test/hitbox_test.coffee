chai = require "chai"
sinon = require "sinon"
chai.use require "sinon-chai"

expect = chai.expect

describe "hitbox", ->
    beforeEach ->
        @robot =
            respond: sinon.spy()

        require("../src/hitbox")(@robot)

    it "registers a respond listener", ->
        expect(@robot.respond).to.have.been.calledWith(/hb stream (.+)/i)
