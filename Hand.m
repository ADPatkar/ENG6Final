classdef Hand
    properties (Access = public)
        cards = [];
        sumCards;
    end
    methods (Access = public)
        function obj = Hand(deck)
            import pkg.Deck.*
            obj.cards = deck.cards(1:2);
        end 
    end
end