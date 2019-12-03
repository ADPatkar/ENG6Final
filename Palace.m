classdef Palace
    properties
        places= [];
    end
    methods 
        function obj= Palace(deck)
            import pkg.Deck.*
            import pkg.Card.*
            obj.places = [deck.cards(1:2);deck.cards(3:4);deck.cards(5:6)];
        end
    end
end
