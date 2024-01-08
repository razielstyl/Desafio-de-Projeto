-- Habilitar UTF-8 no terminal
os.execute("chcp 65001")

-- Criatura
local monsterName = "Charmander"
local description = "Charmander é um Pokémon reptiliano bípede. A maior parte de seu corpo é laranja, enquanto sua barriga é amarelo claro e tem olhos azuis. Tem uma chama na ponta da cauda, ​​o que significa sua saúde."
local emoji = "🔥"
local Species = "Lizard Pokémon"
local Generation = "In Generation 1"
local Abilities = "Blaze"

-- Atributos
local hpAttribute = 3
local attackAttribute = 5
local defenseAttribute = 4
local speedAttribute = 6
local speedAttackAttribute = 6
local speedDefenseAttribute = 5

-- função que recebe um atributo e nos retorna uma barra de progresso em string / texto
local function getProgressBar(attribute)
    local fullChar = "⬜"
    local emptyChar = "⬛"

    local result = ""
    for i = 1, 10, 1 do
        if i <= attribute then
            result = result .. fullChar
        else
            result = result .. emptyChar
        end
    end
    return result
end

-- Cartão
print("===================================================")
print("| ")
print("| " .. monsterName)
print("| " .. description)
print("| ")
print("| Abilities: " .. Abilities)
print("| Species: " .. Species)
print("| Emoji Favorito: " .. emoji)
print("| Generation: " .. Generation)
print("| ")
print("| Atributos")
print("|    HP:           " .. getProgressBar(hpAttribute))
print("|    Attack:       " .. getProgressBar(attackAttribute))
print("|    Defense:      " .. getProgressBar(defenseAttribute))
print("|    Velocidade:   " .. getProgressBar(speedAttribute))
print("|    Sp. Atk:      " .. getProgressBar(speedAttackAttribute))
print("|    Sp. Def:      " .. getProgressBar(speedDefenseAttribute))
print("| ")
print("===================================================")
