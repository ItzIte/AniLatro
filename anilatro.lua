SMODS.Atlas{
    key = 'anilatro_atlas',
    path = 'jokers.png',
    px = '71',
    py = '95'
}

SMODS.Joker{
    key = 'blank_slate',
    loc_txt = {
        name = "Blank Slate",
        text = {
            "{X:red,C:white}X#1#{} Mult"
        }
    },
    config = {
        extra = {
            x_mult = 2
        }
    },
    rarity = 3,
    pos = {x = 0, y = 0},
    atlas = 'anilatro_atlas',
    cost = 10,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = false,

    loc_vars = function(self, info_queue, card)
        return{
            vars = {
                card.ability.extra.x_mult
            }
        }
    end,

    calculate = function(self, card, context)
        if context.joker_main then
            return{
                xmult = card.ability.extra.x_mult,
                message = "Blanked!"
            }
        end
    end,

    }