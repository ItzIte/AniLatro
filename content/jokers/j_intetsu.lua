SMODS.Joker{
    key = 'j_intetsu',
    loc_txt = {
        name = "Intetsu",
        text = {
            "Play only {C:attention}1{} hand per round",
            "{X:red,C:white}+#2#{} Mult",
            "{X:red,C:white}X#1#{} Mult"
        }
    },
    config = {
        extra = {
            x_mult = 3,
            mult_add = 5
        }
    },
    rarity = 3,
    pos = {x=1, y = 0},
    atlas = 'anilatro_atlas',
    cost = 8,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = false,

    loc_vars = function(self, info_queue, card)
        return{
            vars = {
                card.ability.extra.x_mult,
                card.ability.extra.mult_add
            }
        }
    end,

    calculate = function(self, card, context)
        if context.joker_main then
            return{
                mult = card.ability.extra.mult_add,
                xmult = card.ability.extra.x_mult
            }
        end
        if context.setting_blind then
            self.hands_sub = G.GAME.round_resets.hands - 1
            return{
                ease_hands_played(-self.hands_sub)
            }
        end
    end,

}