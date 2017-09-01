# Intro

BLOCKED is a strategic tile based game that uses tiles to build runs of tiles and block your opponents from building theirs. BLOCKED is a 2-4 player game.

# Objective

The object of the game is to create groupings of tiles of two or more while blocking and disrupting your opponents tiles.

# Components

## Tiles

Blocked contains three types of tile edges, `Blocked Edges`, `Pull Edges` and `Push Edges`

`Blocking Edges` - Are marked with an `x` indicating on a side of the tile. A blocked edge causes the space directly adjacent to be considered blocked. No player can place a tile in the blocked space space. A Blocked Edges never block diagonally only horizontally and vertically. It is considered illegal to place a tile in a blocked space.

`Pull Edges` - Are marked with an arrow `<` pointing inwards towards the center of the tile. A pull edge causes the next closest tile in that row to move horizontally or vertically towards that pull tile until it reaches the first illegal space.

`Push Edges` - Are marked with an arrow `>` pointing away from the center of the tile. A push tile causes the next closest tile in that row to move horizontal or vertically away from the push tile until it reaches the first illegal space.

Both Push & Pull tiles can be placed in spaces that would normally be considered illegal (i.e. directly next to an Block edge) as long as after their push or pull pull action is resolved, the space it occupies is no longer considered illegal.

# Setup

1. Each player picks a single set of tiles `blue`, `red`, `purple` etc.

2. Each player places their tiles face down in a pile next to them.

3. Each player gets one tile tray.

4. Each player picks a random tile from their pool. The tile with the most blocked edges goes first. In the case of a draw redraw a tile until a winner is selected.

5. Each player loads their tray with `5` random tiles from their pool of draw tiles.

6. `BETA` At the moment we're using a Scrabble board for testing purposes. If playing as 2 players block off 2 vertical rows and two horizontal rows so that the board is smaller. If playing with three players block off 1 row so that the board is slightly smaller.

# Gameplay

Each player take a turn to place a single tile from their tray of active tiles in any legal placement. After placing their tile they draw a new tile so that their tray contains `5` tokens.

The game ends when a player runs out of tiles to place or there are no more legal spaces for a player to play.

# Scoring

Points are totaled at the end of the game. Points are gained when any two matching color tokens are directly adjacent to a token of the same color. Diagonal tokens do not count as points.

`Idea` I'm thinking we might want to add bonuses for runs of tiles. ATM i'm thinking:
- +1 for 4 tiles
- +2 for 5 tiles
- +3 for 6 tiles
- +4 for 7 tiles
- +5 for 8 tiles etc

This will hopefully discourage focusing on trying to make lots of groups of 2 tiles and encourage more cross player interactivity.

# Beta Notes

`Corner Tiles` I don’t have any tiles where x or push join in a corner. This makes it challenging to connect two staggered rows together. I have to play test this.

`Overwhelming Board` It’s worth noting that the board feels a bit busy because A: scrabble text on tiles is annoying and the current tokens use borders which makes them feel busier than necessary. If the game is produce i’d make the tokens solid and no text in the background.
