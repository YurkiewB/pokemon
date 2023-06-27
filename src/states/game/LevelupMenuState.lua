--[[
    Author: Brandon Yurkiewicz
    GitHub: YurkiewB
]]

LevelupMenuState = Class{__includes = BaseState}

function LevelupMenuState:init(takeTurnState)

    self.takeTurnState = takeTurnState

    local playerPokemon = self.takeTurnState.playerPokemon

    local HPIncrease, attackIncrease, defenseIncrease, speedIncrease = playerPokemon:statsLevelUp()
    local currentHP = playerPokemon.HP
    local currentAttack = playerPokemon.attack
    local currentDefense = playerPokemon.defense
    local currentSpeed = playerPokemon.speed
    
    self.levelMenu = Menu {
        x = 40,
        y = 20,
        width = 100,
        height = 60,
        cursor = false,
        items = {
            {
                text = "HP: " .. currentHP .. " + " .. HPIncrease .. " = " .. (currentHP + HPIncrease),
                onSelect = function() 
                end
            },
            {
                text = "Attack: " .. currentAttack .. " + " .. attackIncrease .. " = " .. (currentAttack + attackIncrease),
                onSelect = function() 
                end
            },
            {
                text = "Defense: " .. currentDefense .. " + " .. defenseIncrease .. " = " .. (currentDefense + defenseIncrease),
                onSelect = function()  
                end
            },
            {
                text = "Speed: " .. currentSpeed .. " + " .. speedIncrease .. " = " .. (currentSpeed + speedIncrease),
                onSelect = function() 
                end
            }

        }
    }
end

function LevelupMenuState:update(dt)
    self.levelMenu:update(dt)
end

function LevelupMenuState:render()
    local font = gFonts['small']
    love.graphics.setFont(font)
    self.levelMenu:render()
end