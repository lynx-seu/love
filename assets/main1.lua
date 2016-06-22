-- This file is for use with Corona Game Edition
-- 
-- The function getSpriteSheetData() returns a table suitable for importing using sprite.newSpriteSheetFromData()
-- 
-- This file is automatically generated with TexturePacker (http://texturepacker.com). Do not edit
-- $TexturePacker:SmartUpdate:a582f97b8cbc5db3541ff1f5c8abc80a$
-- 
-- Usage example:
--        local sheetData = require "ThisFile.lua"
--        local data = sheetData.getSpriteSheetData()
--        local spriteSheet = sprite.newSpriteSheetFromData( "Untitled.png", data )
-- 
-- For more details, see http://developer.anscamobile.com/content/game-edition-sprite-sheets

local SpriteSheet = {}
SpriteSheet.getSpriteSheetData = function ()
	return {
		frames = {
			{
				name = "bat1.png",
				spriteColorRect = { x = 0, y = 0, width = 160, height = 110 },
				textureRect = { x = 327, y = 300, width = 160, height = 110 },
				spriteSourceSize = { width = 160, height = 110 },
				spriteTrimmed = false,
				textureRotated = false
			},
			{
				name = "bat2.png",
				spriteColorRect = { x = 0, y = 0, width = 266, height = 182 },
				textureRect = { x = 203, y = 2, width = 266, height = 182 },
				spriteSourceSize = { width = 266, height = 182 },
				spriteTrimmed = false,
				textureRotated = false
			},
			{
				name = "bat3.png",
				spriteColorRect = { x = 0, y = 0, width = 140, height = 99 },
				textureRect = { x = 2, y = 351, width = 140, height = 99 },
				spriteSourceSize = { width = 140, height = 99 },
				spriteTrimmed = false,
				textureRotated = false
			},
			{
				name = "l-item.png",
				spriteColorRect = { x = 0, y = 0, width = 127, height = 112 },
				textureRect = { x = 327, y = 186, width = 127, height = 112 },
				spriteSourceSize = { width = 127, height = 112 },
				spriteTrimmed = false,
				textureRotated = false
			},
			{
				name = "l-snowman1.png",
				spriteColorRect = { x = 0, y = 0, width = 106, height = 93 },
				textureRect = { x = 144, y = 351, width = 106, height = 93 },
				spriteSourceSize = { width = 106, height = 93 },
				spriteTrimmed = false,
				textureRotated = false
			},
			{
				name = "l-snowman2.png",
				spriteColorRect = { x = 0, y = 0, width = 86, height = 93 },
				textureRect = { x = 355, y = 412, width = 86, height = 93 },
				spriteSourceSize = { width = 86, height = 93 },
				spriteTrimmed = false,
				textureRotated = false
			},
			{
				name = "l-star1.png",
				spriteColorRect = { x = 0, y = 0, width = 28, height = 27 },
				textureRect = { x = 233, y = 186, width = 28, height = 27 },
				spriteSourceSize = { width = 28, height = 27 },
				spriteTrimmed = false,
				textureRotated = false
			},
			{
				name = "l-star2.png",
				spriteColorRect = { x = 0, y = 0, width = 28, height = 27 },
				textureRect = { x = 203, y = 186, width = 28, height = 27 },
				spriteSourceSize = { width = 28, height = 27 },
				spriteTrimmed = false,
				textureRotated = false
			},
			{
				name = "l-starbg.png",
				spriteColorRect = { x = 0, y = 0, width = 101, height = 51 },
				textureRect = { x = 252, y = 412, width = 101, height = 51 },
				spriteSourceSize = { width = 101, height = 51 },
				spriteTrimmed = false,
				textureRotated = false
			},
			{
				name = "monster.png",
				spriteColorRect = { x = 0, y = 0, width = 199, height = 211 },
				textureRect = { x = 2, y = 2, width = 199, height = 211 },
				spriteSourceSize = { width = 199, height = 211 },
				spriteTrimmed = false,
				textureRotated = false
			},
			{
				name = "play.png",
				spriteColorRect = { x = 0, y = 0, width = 323, height = 134 },
				textureRect = { x = 2, y = 215, width = 323, height = 134 },
				spriteSourceSize = { width = 323, height = 134 },
				spriteTrimmed = false,
				textureRotated = false
			},
			{
				name = "snow1.png",
				spriteColorRect = { x = 0, y = 0, width = 54, height = 57 },
				textureRect = { x = 456, y = 186, width = 54, height = 57 },
				spriteSourceSize = { width = 54, height = 57 },
				spriteTrimmed = false,
				textureRotated = false
			},
			{
				name = "snow2.png",
				spriteColorRect = { x = 0, y = 0, width = 44, height = 45 },
				textureRect = { x = 456, y = 245, width = 44, height = 45 },
				spriteSourceSize = { width = 44, height = 45 },
				spriteTrimmed = false,
				textureRotated = false
			},
			{
				name = "snow3.png",
				spriteColorRect = { x = 0, y = 0, width = 32, height = 32 },
				textureRect = { x = 471, y = 43, width = 32, height = 32 },
				spriteSourceSize = { width = 32, height = 32 },
				spriteTrimmed = false,
				textureRotated = false
			},
			{
				name = "snow4.png",
				spriteColorRect = { x = 0, y = 0, width = 36, height = 39 },
				textureRect = { x = 471, y = 2, width = 36, height = 39 },
				spriteSourceSize = { width = 36, height = 39 },
				spriteTrimmed = false,
				textureRotated = false
			},
		}
	}
end
return SpriteSheet
