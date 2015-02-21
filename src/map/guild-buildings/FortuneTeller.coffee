
GuildBuilding = require "../GuildBuilding"

`/**
 * The FortuneTeller allows you to get better providences!
 *
 * @name FortuneTeller
 * @category Buildings
 * @package Guild Bases
 * @cost {level-up} 40000
 * @property Name (Any string)
 * @size {sm}
 */`
class FortuneTeller extends GuildBuilding

  @size = FortuneTeller::size = "sm"
  @desc = FortuneTeller::desc = "Upgrade this crystal ball user to get better providences!"
  @levelupCost = FortuneTeller::levelupCost = (level) -> 40000

  tiles: [
    0,  0,  0,
    0,  0,  0,
    0,  0,  0
  ]

  constructor: (@game, @guild, @name) ->
    super @game, @guild, @name

    name = @getProperty "Name"

    f =
      name: name or "Fortune Teller"
      gid: 23
      type: "Guild NPC"
      properties:
        forceEvent: "providence"
        isGuild: yes

    @tiles = [
      0,  0,  0,
      0,  f,  0,
      0,  0,  0
    ]

module.exports = exports = FortuneTeller